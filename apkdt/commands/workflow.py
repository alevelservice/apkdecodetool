"""The command implementations, wired to argparse in apkdt.cli."""

from __future__ import annotations

import json
import os

from apkdt import patch as patchmod
from apkdt.project import DecodedProject
from apkdt.tools import apktool, jadx, sign as signtool
from apkdt.tools.external import TOOLS
from apkdt.util import ApkdtError, info, ok, step, warn


# -- doctor --------------------------------------------------------------
def cmd_doctor(args) -> int:
    info("Checking external tools")
    missing_required = False
    for tool in TOOLS:
        path = tool.path()
        if path:
            ver = tool.version()
            ok(f"{tool.name:<10} {path}" + (f"  ({ver})" if ver else ""))
        else:
            tag = "REQUIRED" if tool.required else "optional"
            warn(f"{tool.name:<10} not found  [{tag}] — {tool.purpose}")
            if tool.required:
                missing_required = True
    if missing_required:
        warn("Some required tools are missing; decode/build/sign will not work until they are installed.")
        warn("If they ARE installed but not found, point apkdt at them without editing PATH, e.g.:")
        warn('  set APKDT_TOOLS=C:\\android-tools;C:\\android-tools\\jadx\\bin;C:\\android-sdk\\build-tools\\34.0.0')
        warn("  (or set a single tool: set APKDT_APKTOOL=C:\\android-tools\\apktool.bat )")
        return 1
    ok("All required tools are available.")
    return 0


# -- decode --------------------------------------------------------------
def cmd_decode(args) -> int:
    out = args.output
    apktool.decode(args.apk, out, no_res=args.no_res, keep_dex=args.keep_dex)
    if not args.no_sources:
        src_dir = os.path.join(out, "sources")
        try:
            jadx.decompile(args.apk, src_dir)
        except ApkdtError as e:
            warn(f"source decompile skipped: {e}")
    ok(f"decoded -> {out}")
    return 0


# -- sources -------------------------------------------------------------
def cmd_sources(args) -> int:
    if args.action == "export":
        jadx.decompile(args.target, args.output)
        ok(f"sources -> {args.output}")
        return 0
    proj = DecodedProject(args.target)
    src_root = os.path.join(proj.root, "sources")
    if not os.path.isdir(src_root):
        raise ApkdtError("no 'sources/' in project; run 'apkdt decode' (without --no-sources) or 'apkdt sources export' first")
    if args.action == "grep":
        needle = args.pattern
        for dirpath, _d, files in os.walk(src_root):
            for fn in files:
                p = os.path.join(dirpath, fn)
                try:
                    with open(p, "r", encoding="utf-8", errors="ignore") as fh:
                        for i, line in enumerate(fh, 1):
                            if needle in line:
                                print(f"{os.path.relpath(p, proj.root)}:{i}: {line.rstrip()}")
                except OSError:
                    continue
        return 0
    if args.action == "tree":
        for dirpath, _d, files in os.walk(src_root):
            javas = [f for f in files if f.endswith((".java", ".kt"))]
            if javas:
                rel = os.path.relpath(dirpath, src_root)
                print(f"{rel}  ({len(javas)} file(s))")
        return 0
    raise ApkdtError(f"unknown sources action: {args.action}")


# -- endpoints -----------------------------------------------------------
def cmd_endpoints(args) -> int:
    proj = DecodedProject(args.project)
    if args.action == "scan":
        result = proj.scan_endpoints()
        report = os.path.join(proj.root, "endpoints.json")
        with open(report, "w", encoding="utf-8") as fh:
            json.dump(result.to_json(), fh, indent=2)
        info(f"{len(result.hits)} match(es), {len(result.values())} distinct")
        for v in result.values():
            print(v)
        ok(f"report -> {report}")
        return 0
    if args.action == "replace":
        if not args.frm or args.to is None:
            raise ApkdtError("replace needs --from and --to")
        n = proj.replace_endpoint(args.frm, args.to)
        ok(f"{args.frm} -> {args.to} in {n} file(s)")
        return 0
    raise ApkdtError(f"unknown endpoints action: {args.action}")


# -- design --------------------------------------------------------------
def cmd_design(args) -> int:
    proj = DecodedProject(args.project)
    if args.action == "set-color":
        proj.set_value("color", args.name, args.value)
    elif args.action == "set-string":
        proj.set_value("string", args.name, args.value)
    else:
        raise ApkdtError(f"unknown design action: {args.action}")
    ok(f"{args.action} {args.name} = {args.value}")
    return 0


# -- config --------------------------------------------------------------
def cmd_config(args) -> int:
    proj = DecodedProject(args.project)
    if args.action == "show":
        print(json.dumps(proj.manifest_summary(), indent=2))
        return 0
    if args.action == "set-version":
        proj.set_version(args.name, args.code)
        ok("version updated")
        return 0
    if args.action == "allow-http":
        rel = proj.allow_http()
        warn("cleartext HTTP enabled — intended for test servers you control")
        ok(f"network security config -> {rel}")
        return 0
    raise ApkdtError(f"unknown config action: {args.action}")


# -- build ---------------------------------------------------------------
def cmd_build(args) -> int:
    apktool.build(args.project, args.output)
    aligned = args.output
    if not args.no_align:
        aligned = args.output.replace(".apk", "-aligned.apk")
        signtool.align(args.output, aligned)
    ok(f"built -> {aligned}")
    if aligned != args.output:
        info("note: APK is unsigned; run 'apkdt sign' before installing")
    return 0


# -- sign ----------------------------------------------------------------
def cmd_sign(args) -> int:
    if args.gen_keystore:
        signtool.generate_keystore(args.keystore, alias=args.alias or "apkdt")
        ok(f"keystore created -> {args.keystore}")
    signtool.sign(args.apk, keystore=args.keystore, alias=args.alias,
                  storepass=args.storepass)
    info("verifying signature")
    print(signtool.verify(args.apk))
    ok(f"signed -> {args.apk}")
    return 0


# -- verify --------------------------------------------------------------
def cmd_verify(args) -> int:
    out = signtool.verify(args.apk)
    print(out)
    lower = out.lower()
    v2 = "v2 scheme" in lower and "true" in lower.split("v2 scheme", 1)[1][:40]
    if "verified" in lower and ("scheme v2): true" in lower or "scheme v3): true" in lower):
        ok("APK has a modern (v2/v3) signature — installable on current Android.")
    else:
        warn("APK may lack a v2/v3 signature; modern Android can reject it with 'App not installed'.")
    return 0


# -- serve ---------------------------------------------------------------
def cmd_serve(args) -> int:
    from apkdt.web.server import serve
    serve(args.workdir, host=args.host, port=args.port,
          open_browser=not args.no_browser)
    return 0


# -- all -----------------------------------------------------------------
def cmd_all(args) -> int:
    work = args.workdir or (args.output.replace(".apk", "") + "_src")
    info(f"[1/4] decode -> {work}")
    apktool.decode(args.apk, work)
    if args.patch:
        info("[2/4] apply patch")
        proj = DecodedProject(work)
        patchmod.apply(proj, patchmod.load(args.patch))
    else:
        warn("[2/4] no --patch given; building the decoded project unchanged")
    unsigned = args.output.replace(".apk", "-unsigned.apk")
    info(f"[3/4] build -> {unsigned}")
    apktool.build(work, unsigned)
    aligned = args.output
    signtool.align(unsigned, aligned)
    info("[4/4] sign")
    if args.gen_keystore and not os.path.exists(args.keystore):
        signtool.generate_keystore(args.keystore, alias=args.alias or "apkdt")
    signtool.sign(aligned, keystore=args.keystore, alias=args.alias, storepass=args.storepass)
    ok(f"done -> {aligned}")
    return 0
