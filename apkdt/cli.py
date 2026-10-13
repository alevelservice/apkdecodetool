"""apkdt command-line interface."""

from __future__ import annotations

import argparse
import sys

from apkdt import __version__
from apkdt.commands import workflow as w
from apkdt.util import ApkdtError, err

BANNER = (
    "apkdt — decode an APK to source, edit it, rebuild & sign.\n"
    "For apps you OWN or are AUTHORIZED to modify. See the README's "
    "'Legal and responsible use' section."
)


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(prog="apkdt", description=BANNER,
                                formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument("--version", action="version", version=f"apkdt {__version__}")
    sub = p.add_subparsers(dest="command", required=True)

    # doctor
    sp = sub.add_parser("doctor", help="check external tools are installed")
    sp.set_defaults(func=w.cmd_doctor)

    # decode
    sp = sub.add_parser("decode", help="unpack an APK into an editable project")
    sp.add_argument("apk")
    sp.add_argument("-o", "--output", required=True)
    sp.add_argument("--no-sources", action="store_true", help="skip JADX Java view")
    sp.add_argument("--no-res", action="store_true", help="skip resource decode")
    sp.add_argument("--keep-dex", action="store_true")
    sp.set_defaults(func=w.cmd_decode)

    # sources
    sp = sub.add_parser("sources", help="recover/search readable source")
    ssub = sp.add_subparsers(dest="action", required=True)
    e = ssub.add_parser("export", help="full JADX decompile to a folder")
    e.add_argument("target", help="apk file or project dir")
    e.add_argument("-o", "--output", required=True)
    g = ssub.add_parser("grep", help="search the recovered source")
    g.add_argument("project")
    g.add_argument("pattern")
    t = ssub.add_parser("tree", help="show packages/classes")
    t.add_argument("project")
    sp.set_defaults(func=w.cmd_sources, target=None, project=None)

    # endpoints
    sp = sub.add_parser("endpoints", help="scan or replace URLs/hosts/IPs")
    esub = sp.add_subparsers(dest="action", required=True)
    sc = esub.add_parser("scan", help="list endpoints, write endpoints.json")
    sc.add_argument("project")
    rp = esub.add_parser("replace", help="replace an endpoint everywhere")
    rp.add_argument("project")
    rp.add_argument("--from", dest="frm", required=True)
    rp.add_argument("--to", required=True)
    sp.set_defaults(func=w.cmd_endpoints)

    # design
    sp = sub.add_parser("design", help="edit colors/strings")
    dsub = sp.add_subparsers(dest="action", required=True)
    for act in ("set-color", "set-string"):
        a = dsub.add_parser(act)
        a.add_argument("project")
        a.add_argument("name")
        a.add_argument("value")
    sp.set_defaults(func=w.cmd_design)

    # config
    sp = sub.add_parser("config", help="inspect/edit manifest & app config")
    csub = sp.add_subparsers(dest="action", required=True)
    csub.add_parser("show").add_argument("project")
    sv = csub.add_parser("set-version")
    sv.add_argument("project")
    sv.add_argument("--name")
    sv.add_argument("--code")
    csub.add_parser("allow-http").add_argument("project")
    sp.set_defaults(func=w.cmd_config)

    # build
    sp = sub.add_parser("build", help="rebuild an edited project into an APK")
    sp.add_argument("project")
    sp.add_argument("-o", "--output", required=True)
    sp.add_argument("--no-align", action="store_true")
    sp.set_defaults(func=w.cmd_build)

    # sign
    sp = sub.add_parser("sign", help="sign an APK with YOUR key")
    sp.add_argument("apk")
    sp.add_argument("--keystore", required=True)
    sp.add_argument("--alias")
    sp.add_argument("--storepass", default="android")
    sp.add_argument("--gen-keystore", action="store_true",
                    help="create the keystore first if it does not exist")
    sp.set_defaults(func=w.cmd_sign)

    # serve
    sp = sub.add_parser("serve", help="launch the local web UI (upload/decode/edit/rebuild)")
    sp.add_argument("--workdir", default="apkdt_workspace",
                    help="where uploads/decoded project/output live (default: ./apkdt_workspace)")
    sp.add_argument("--host", default="127.0.0.1")
    sp.add_argument("--port", type=int, default=8765)
    sp.add_argument("--no-browser", action="store_true", help="do not auto-open a browser")
    sp.set_defaults(func=w.cmd_serve)

    # all
    sp = sub.add_parser("all", help="decode -> patch -> build -> sign")
    sp.add_argument("apk")
    sp.add_argument("-o", "--output", required=True)
    sp.add_argument("--patch")
    sp.add_argument("--workdir")
    sp.add_argument("--keystore", required=True)
    sp.add_argument("--alias")
    sp.add_argument("--storepass", default="android")
    sp.add_argument("--gen-keystore", action="store_true")
    sp.set_defaults(func=w.cmd_all)

    return p


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv if argv is not None else sys.argv[1:])
    try:
        return args.func(args)
    except ApkdtError as e:
        err(str(e))
        return 2
    except KeyboardInterrupt:
        err("interrupted")
        return 130


if __name__ == "__main__":
    raise SystemExit(main())
