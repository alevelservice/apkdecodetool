"""A small local Flask app that wraps the apkdt workflow in a browser UI.

Flow: upload APK -> decode -> browse/edit files -> rebuild -> sign -> download.

Security model: this is a LOCAL tool. The server binds to 127.0.0.1 by
default and every file operation is confined to a single workspace
directory (path-traversal is rejected). It is not meant to be exposed to
a network. Use only on apps you own or are authorized to modify.
"""

from __future__ import annotations

import os
import shutil

try:
    from flask import Flask, jsonify, request, send_file, send_from_directory
except ImportError as exc:  # pragma: no cover
    raise SystemExit(
        "The web UI needs Flask. Install it with:  pip install 'apkdecodetool[web]'\n"
        f"(import error: {exc})"
    )

from apkdt.project import DecodedProject
from apkdt.tools import apktool, jadx, sign as signtool
from apkdt.tools.external import TOOLS

STATIC_DIR = os.path.join(os.path.dirname(__file__), "static")

# Only files with these extensions are editable as text in the browser.
EDITABLE_EXTS = {
    ".smali", ".xml", ".json", ".txt", ".properties", ".js", ".html",
    ".css", ".yml", ".yaml", ".ini", ".cfg", ".kt", ".java", ".md", ".pro",
}
MAX_EDIT_BYTES = 2 * 1024 * 1024


class Workspace:
    """Holds the paths for one decode/edit/build session."""

    def __init__(self, root: str):
        self.root = os.path.abspath(root)
        os.makedirs(self.root, exist_ok=True)
        self.uploads = os.path.join(self.root, "uploads")
        self.project = os.path.join(self.root, "project")
        self.output = os.path.join(self.root, "output")
        for d in (self.uploads, self.project, self.output):
            os.makedirs(d, exist_ok=True)
        self.apk_path: str | None = None

    def safe_project_path(self, rel: str) -> str:
        """Resolve `rel` under the project dir, rejecting traversal."""
        rel = rel.replace("\\", "/").lstrip("/")
        full = os.path.abspath(os.path.join(self.project, rel))
        base = self.project + os.sep
        if full != self.project and not full.startswith(base):
            raise ValueError("path escapes project directory")
        return full


def create_app(workdir: str) -> Flask:
    ws = Workspace(workdir)
    app = Flask(__name__, static_folder=None)

    # -- static UI -------------------------------------------------------
    @app.get("/")
    def index():
        return send_from_directory(STATIC_DIR, "index.html")

    @app.get("/static/<path:name>")
    def static_files(name):
        return send_from_directory(STATIC_DIR, name)

    # -- status ----------------------------------------------------------
    @app.get("/api/status")
    def status():
        decoded = os.path.exists(os.path.join(ws.project, "AndroidManifest.xml"))
        tools = {t.name: bool(t.available()) for t in TOOLS}
        return jsonify({
            "tools": tools,
            "decoded": decoded,
            "apk": os.path.basename(ws.apk_path) if ws.apk_path else None,
        })

    # -- upload + decode -------------------------------------------------
    @app.post("/api/upload")
    def upload():
        f = request.files.get("apk")
        if not f or not f.filename:
            return jsonify({"error": "no file uploaded"}), 400
        if not f.filename.lower().endswith((".apk", ".xapk", ".apks")):
            return jsonify({"error": "please upload an .apk/.xapk/.apks file"}), 400
        # reset previous project
        shutil.rmtree(ws.project, ignore_errors=True)
        os.makedirs(ws.project, exist_ok=True)
        dest = os.path.join(ws.uploads, os.path.basename(f.filename))
        f.save(dest)
        ws.apk_path = dest

        want_sources = request.form.get("sources", "true") != "false"
        try:
            apktool.decode(dest, ws.project, force=True)
            if want_sources:
                try:
                    jadx.decompile(dest, os.path.join(ws.project, "sources"))
                except Exception as e:  # jadx optional
                    app.logger.warning("jadx skipped: %s", e)
        except Exception as e:
            return jsonify({"error": f"decode failed: {e}"}), 500
        return jsonify({"ok": True, "apk": os.path.basename(dest)})

    # -- file tree -------------------------------------------------------
    @app.get("/api/files")
    def files():
        tree = []
        for dirpath, _dirs, filenames in os.walk(ws.project):
            for fn in sorted(filenames):
                full = os.path.join(dirpath, fn)
                rel = os.path.relpath(full, ws.project).replace(os.sep, "/")
                try:
                    size = os.path.getsize(full)
                except OSError:
                    size = 0
                tree.append({
                    "path": rel,
                    "size": size,
                    "editable": os.path.splitext(fn)[1].lower() in EDITABLE_EXTS
                                and size <= MAX_EDIT_BYTES,
                })
        tree.sort(key=lambda x: x["path"])
        return jsonify({"files": tree})

    # -- read / write a file --------------------------------------------
    @app.get("/api/file")
    def read_file():
        rel = request.args.get("path", "")
        try:
            full = ws.safe_project_path(rel)
        except ValueError as e:
            return jsonify({"error": str(e)}), 400
        if not os.path.isfile(full):
            return jsonify({"error": "not found"}), 404
        if os.path.getsize(full) > MAX_EDIT_BYTES:
            return jsonify({"error": "file too large to edit"}), 413
        with open(full, "r", encoding="utf-8", errors="replace") as fh:
            return jsonify({"path": rel, "content": fh.read()})

    @app.post("/api/file")
    def write_file():
        data = request.get_json(force=True, silent=True) or {}
        rel = data.get("path", "")
        content = data.get("content", "")
        try:
            full = ws.safe_project_path(rel)
        except ValueError as e:
            return jsonify({"error": str(e)}), 400
        if not os.path.isfile(full):
            return jsonify({"error": "not found"}), 404
        with open(full, "w", encoding="utf-8") as fh:
            fh.write(content)
        return jsonify({"ok": True})

    # -- quick helpers (endpoints scan, used by the UI) ------------------
    @app.get("/api/endpoints")
    def endpoints():
        if not os.path.exists(os.path.join(ws.project, "AndroidManifest.xml")):
            return jsonify({"error": "nothing decoded yet"}), 400
        proj = DecodedProject(ws.project)
        return jsonify(proj.scan_endpoints().to_json())

    # -- rebuild + sign --------------------------------------------------
    @app.post("/api/rebuild")
    def rebuild():
        if not os.path.exists(os.path.join(ws.project, "AndroidManifest.xml")):
            return jsonify({"error": "nothing decoded yet"}), 400
        unsigned = os.path.join(ws.output, "rebuilt-unsigned.apk")
        aligned = os.path.join(ws.output, "rebuilt.apk")
        keystore = os.path.join(ws.root, "apkdt.keystore")
        try:
            apktool.build(ws.project, unsigned)
            signtool.align(unsigned, aligned)
            if not os.path.exists(keystore):
                signtool.generate_keystore(keystore, alias="apkdt")
            signtool.sign(aligned, keystore=keystore, alias="apkdt", storepass="android")
        except Exception as e:
            return jsonify({"error": f"rebuild failed: {e}"}), 500
        return jsonify({"ok": True, "download": "/api/download"})

    @app.get("/api/download")
    def download():
        aligned = os.path.join(ws.output, "rebuilt.apk")
        if not os.path.isfile(aligned):
            return jsonify({"error": "no rebuilt apk; rebuild first"}), 404
        return send_file(aligned, as_attachment=True, download_name="rebuilt.apk")

    return app


def serve(workdir: str, host: str = "127.0.0.1", port: int = 8765,
          open_browser: bool = True) -> None:
    app = create_app(workdir)
    url = f"http://{host}:{port}/"
    if open_browser and host in ("127.0.0.1", "localhost"):
        import threading
        import webbrowser
        threading.Timer(1.0, lambda: webbrowser.open(url)).start()
    print(f"apkdt web UI on {url}  (workspace: {os.path.abspath(workdir)})")
    print("Press Ctrl+C to stop.")
    app.run(host=host, port=port, debug=False)
