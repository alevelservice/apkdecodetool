"""Wrapper for Apktool (decode / build)."""

from __future__ import annotations

from apkdt.util import run, step


def decode(apk: str, out_dir: str, *, no_res: bool = False, keep_dex: bool = False,
           force: bool = True) -> None:
    cmd = ["apktool", "d", apk, "-o", out_dir]
    if force:
        cmd.append("-f")
    if no_res:
        cmd.append("-r")   # do not decode resources
    if keep_dex:
        cmd.append("--keep-broken-res")
    step(f"apktool decode -> {out_dir}")
    run(cmd)


def build(project_dir: str, out_apk: str, *, use_aapt2: bool = True) -> None:
    cmd = ["apktool", "b", project_dir, "-o", out_apk]
    if use_aapt2:
        cmd.append("--use-aapt2")
    step(f"apktool build -> {out_apk}")
    run(cmd)
