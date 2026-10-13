"""Operations on a decoded APK project directory.

These helpers work directly on the files Apktool produces (resource XML,
AndroidManifest.xml, smali, assets). They are pure Python so they can be
unit-tested without the external toolchain installed.
"""

from __future__ import annotations

import os
import re
from dataclasses import dataclass, field

from lxml import etree

from apkdt.util import ApkdtError

ANDROID_NS = "http://schemas.android.com/apk/res/android"

# File extensions treated as text for endpoint scanning/replacement.
TEXT_EXTS = {
    ".smali", ".xml", ".json", ".txt", ".properties", ".js", ".html",
    ".css", ".yml", ".yaml", ".ini", ".cfg", ".kt", ".java",
}

# URLs, and bare host[:port] names with a dotted domain.
URL_RE = re.compile(r"https?://[^\s\"'<>\\)]+", re.IGNORECASE)
HOST_RE = re.compile(
    r"\b(?:[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?\.)+[a-z]{2,}(?::\d{2,5})?\b",
    re.IGNORECASE,
)
IP_RE = re.compile(r"\b(?:\d{1,3}\.){3}\d{1,3}(?::\d{2,5})?\b")

# XML-schema / tooling URLs that are not app endpoints; filtered from scans.
_SCAN_IGNORE = (
    "schemas.android.com",
    "www.w3.org",
    "xmlpull.org",
    "apache.org/licenses",
)


@dataclass
class EndpointHit:
    file: str          # path relative to the project root
    line: int
    kind: str          # "url" | "host" | "ip"
    value: str


@dataclass
class ScanResult:
    hits: list[EndpointHit] = field(default_factory=list)

    def values(self) -> list[str]:
        seen: dict[str, None] = {}
        for h in self.hits:
            seen.setdefault(h.value, None)
        return list(seen)

    def to_json(self) -> dict:
        return {
            "count": len(self.hits),
            "distinct": self.values(),
            "hits": [h.__dict__ for h in self.hits],
        }


class DecodedProject:
    def __init__(self, root: str):
        self.root = os.path.abspath(root)
        if not os.path.isdir(self.root):
            raise ApkdtError(f"not a directory: {root}")

    # -- paths -----------------------------------------------------------
    @property
    def manifest_path(self) -> str:
        return os.path.join(self.root, "AndroidManifest.xml")

    def _values_file(self, name: str) -> str:
        return os.path.join(self.root, "res", "values", name)

    # -- text file iteration --------------------------------------------
    def iter_text_files(self):
        for dirpath, _dirs, files in os.walk(self.root):
            for fn in files:
                ext = os.path.splitext(fn)[1].lower()
                if ext in TEXT_EXTS:
                    yield os.path.join(dirpath, fn)

    def _rel(self, path: str) -> str:
        return os.path.relpath(path, self.root)

    # -- endpoint scan / replace ----------------------------------------
    def scan_endpoints(self) -> ScanResult:
        result = ScanResult()
        for path in self.iter_text_files():
            try:
                with open(path, "r", encoding="utf-8", errors="ignore") as fh:
                    for i, line in enumerate(fh, 1):
                        for m in URL_RE.finditer(line):
                            val = m.group(0)
                            if any(ig in val for ig in _SCAN_IGNORE):
                                continue
                            result.hits.append(EndpointHit(self._rel(path), i, "url", val))
                        for m in IP_RE.finditer(line):
                            result.hits.append(EndpointHit(self._rel(path), i, "ip", m.group(0)))
            except OSError:
                continue
        return result

    def replace_endpoint(self, old: str, new: str) -> int:
        """Replace literal `old` with `new` across all text files.

        Returns the number of files changed.
        """
        if not old:
            raise ApkdtError("empty --from value")
        changed = 0
        for path in self.iter_text_files():
            try:
                with open(path, "r", encoding="utf-8", errors="ignore") as fh:
                    content = fh.read()
            except OSError:
                continue
            if old not in content:
                continue
            with open(path, "w", encoding="utf-8") as fh:
                fh.write(content.replace(old, new))
            changed += 1
        return changed

    # -- resource values -------------------------------------------------
    def set_value(self, kind: str, name: str, value: str, *, file: str | None = None) -> None:
        """Set a <string>/<color>/... resource value, creating it if absent."""
        fname = file or {"string": "strings.xml", "color": "colors.xml",
                         "integer": "integers.xml", "bool": "bools.xml",
                         "dimen": "dimens.xml"}.get(kind, f"{kind}s.xml")
        path = self._values_file(fname)
        os.makedirs(os.path.dirname(path), exist_ok=True)
        if os.path.exists(path):
            tree = etree.parse(path)
            root = tree.getroot()
        else:
            root = etree.Element("resources")
            tree = etree.ElementTree(root)
        node = root.find(f"./{kind}[@name='{name}']")
        if node is None:
            node = etree.SubElement(root, kind)
            node.set("name", name)
        node.text = value
        tree.write(path, encoding="utf-8", xml_declaration=True, pretty_print=True)

    # -- manifest --------------------------------------------------------
    def _parse_manifest(self):
        if not os.path.exists(self.manifest_path):
            raise ApkdtError("AndroidManifest.xml not found; is this a decoded project?")
        return etree.parse(self.manifest_path)

    def manifest_summary(self) -> dict:
        tree = self._parse_manifest()
        root = tree.getroot()
        a = lambda n, attr: n.get(f"{{{ANDROID_NS}}}{attr}")
        perms = [a(p, "name") for p in root.findall("./uses-permission")]
        app = root.find("./application")

        def comps(tag):
            if app is None:
                return []
            return [a(c, "name") for c in app.findall(f"./{tag}")]

        return {
            "package": root.get("package"),
            "versionName": a(root, "versionName"),
            "versionCode": a(root, "versionCode"),
            "permissions": [p for p in perms if p],
            "activities": [c for c in comps("activity") if c],
            "services": [c for c in comps("service") if c],
            "receivers": [c for c in comps("receiver") if c],
        }

    def set_version(self, name: str | None = None, code: str | None = None) -> None:
        tree = self._parse_manifest()
        root = tree.getroot()
        if name is not None:
            root.set(f"{{{ANDROID_NS}}}versionName", name)
        if code is not None:
            root.set(f"{{{ANDROID_NS}}}versionCode", str(code))
        tree.write(self.manifest_path, encoding="utf-8", xml_declaration=True)

    def make_standalone(self) -> list[str]:
        """Strip 'split required' flags so a bundle's base APK installs alone.

        Play Store App Bundles ship a base.apk plus split config APKs; the
        base is marked as requiring its splits, so installing it by itself
        fails with 'App not installed'. This removes those markers. Returns
        a list of the changes made.

        Note: splits usually carry per-density/-language resources (and, for
        some apps, native libs). For apps that keep everything in the base
        (e.g. many Flutter apps) this is enough; for others some resources
        may be missing until the splits are merged in.
        """
        tree = self._parse_manifest()
        root = tree.getroot()
        changes: list[str] = []
        a = lambda attr: f"{{{ANDROID_NS}}}{attr}"

        # manifest-level split attributes (Android 12+ split-type machinery)
        for attr in ("requiredSplitTypes", "splitTypes"):
            if root.get(a(attr)) is not None:
                del root.attrib[a(attr)]
                changes.append(f"removed manifest android:{attr}")

        app = root.find("./application")
        if app is not None:
            if (app.get(a("isSplitRequired")) or "").lower() == "true":
                app.set(a("isSplitRequired"), "false")
                changes.append("set application android:isSplitRequired=false")
            # remove the vending split meta-data entries
            for md in list(app.findall("./meta-data")):
                name = md.get(a("name")) or ""
                if name.startswith("com.android.vending.splits"):
                    app.remove(md)
                    changes.append(f"removed meta-data {name}")

        if changes:
            tree.write(self.manifest_path, encoding="utf-8", xml_declaration=True)
        return changes

    def allow_http(self) -> str:
        """Add a permissive network_security_config (for test servers only).

        Returns the relative path of the config written.
        """
        xml_dir = os.path.join(self.root, "res", "xml")
        os.makedirs(xml_dir, exist_ok=True)
        cfg_path = os.path.join(xml_dir, "apkdt_network_security_config.xml")
        cfg = (
            '<?xml version="1.0" encoding="utf-8"?>\n'
            '<network-security-config>\n'
            '    <base-config cleartextTrafficPermitted="true">\n'
            '        <trust-anchors>\n'
            '            <certificates src="system" />\n'
            '            <certificates src="user" />\n'
            '        </trust-anchors>\n'
            '    </base-config>\n'
            '</network-security-config>\n'
        )
        with open(cfg_path, "w", encoding="utf-8") as fh:
            fh.write(cfg)

        tree = self._parse_manifest()
        root = tree.getroot()
        app = root.find("./application")
        if app is None:
            raise ApkdtError("manifest has no <application> element")
        app.set(f"{{{ANDROID_NS}}}networkSecurityConfig", "@xml/apkdt_network_security_config")
        app.set(f"{{{ANDROID_NS}}}usesCleartextTraffic", "true")
        tree.write(self.manifest_path, encoding="utf-8", xml_declaration=True)
        return self._rel(cfg_path)
