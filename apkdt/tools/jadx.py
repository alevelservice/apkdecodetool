"""Wrapper for JADX (DEX -> readable Java/Kotlin, for inspection only)."""

from __future__ import annotations

from apkdt.util import run, step


def decompile(apk_or_dex: str, out_dir: str, *, no_res: bool = True) -> None:
    # --no-res: we already get resources from apktool; here we only want source.
    cmd = ["jadx", "-d", out_dir]
    if no_res:
        cmd.append("--no-res")
    cmd.append(apk_or_dex)
    step(f"jadx decompile -> {out_dir}")
    run(cmd)
