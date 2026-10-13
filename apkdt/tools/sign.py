"""Wrappers for zipalign + apksigner, and keystore generation via keytool.

A rebuilt APK is always signed with the user's OWN key. apkdt never
re-creates or impersonates another publisher's signing identity.
"""

from __future__ import annotations

import os

from apkdt.util import ApkdtError, run, step, which


def align(in_apk: str, out_apk: str, *, alignment: int = 4, page_align_so: bool = True) -> None:
    # -p page-aligns uncompressed .so files to 4 KiB. This is required when
    # the app uses android:extractNativeLibs="false" (the modern default,
    # and what Flutter/React-Native apps use) — without it the install is
    # rejected on recent Android with "App not installed".
    cmd = ["zipalign", "-f"]
    if page_align_so:
        cmd.append("-p")
    cmd += [str(alignment), in_apk, out_apk]
    step(f"zipalign{' -p' if page_align_so else ''} -> {out_apk}")
    run(cmd)


def generate_keystore(path: str, *, alias: str = "apkdt", storepass: str = "android",
                      keypass: str | None = None, dname: str | None = None,
                      validity_days: int = 10000) -> None:
    if os.path.exists(path):
        raise ApkdtError(f"keystore already exists: {path}")
    keypass = keypass or storepass
    dname = dname or "CN=apkdt test, OU=dev, O=local, C=US"
    step(f"keytool generate keystore -> {path}")
    run([
        "keytool", "-genkeypair", "-v",
        "-keystore", path,
        "-alias", alias,
        "-keyalg", "RSA", "-keysize", "2048",
        "-validity", str(validity_days),
        "-storepass", storepass,
        "-keypass", keypass,
        "-dname", dname,
    ])


def sign(apk: str, *, keystore: str, alias: str | None = None,
         storepass: str = "android", keypass: str | None = None) -> None:
    if not which("apksigner"):
        raise ApkdtError("apksigner not found; install Android build tools")
    cmd = [
        "apksigner", "sign",
        "--ks", keystore,
        "--ks-pass", f"pass:{storepass}",
    ]
    if alias:
        cmd += ["--ks-key-alias", alias]
    if keypass:
        cmd += ["--key-pass", f"pass:{keypass}"]
    cmd.append(apk)
    step(f"apksigner sign {apk}")
    run(cmd)


def verify(apk: str) -> str:
    res = run(["apksigner", "verify", "--print-certs", apk], check=False)
    return (res.stdout or res.stderr or "").strip()
