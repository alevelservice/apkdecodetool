"""Best-effort inspection and endpoint patching for Flutter's libapp.so.

IMPORTANT — what this is and is NOT:

A release Flutter app's Dart code is AOT-compiled to native machine code
inside lib/<abi>/libapp.so. It CANNOT be decompiled back to editable Dart
source, and this module does not pretend to. What it can do:

  * scan the compiled library for printable strings (endpoints, keys, text)
  * patch a string (e.g. an API endpoint) to a NEW value of the SAME length
    or SHORTER (null-padded), preserving every byte offset after it.

Longer replacements are refused because they would shift the rest of the
binary and corrupt it. Even same-length patches are best-effort: Dart stores
some strings as length-prefixed objects, so a shortened string can leave
trailing bytes. Same-length replacements are the safest. This changes WHERE
the app points, never HOW it behaves.
"""

from __future__ import annotations

import os
import re
import shutil
from dataclasses import dataclass

from apkdt.util import ApkdtError

_PRINTABLE = re.compile(rb"[\x20-\x7e]{4,}")
_URLISH = re.compile(rb"https?://[A-Za-z0-9._~:/?#\[\]@!$&'()*+,;=%-]+", re.IGNORECASE)


@dataclass
class SoString:
    offset: int
    kind: str      # "url" | "string"
    value: str


def find_libapp(project_dir: str) -> list[str]:
    """Return all libapp.so paths in a decoded project (one per ABI)."""
    lib = os.path.join(project_dir, "lib")
    found: list[str] = []
    if os.path.isdir(lib):
        for dirpath, _d, files in os.walk(lib):
            for fn in files:
                if fn == "libapp.so":
                    found.append(os.path.join(dirpath, fn))
    return sorted(found)


def scan_strings(so_path: str, *, only_urls: bool = False, min_len: int = 4) -> list[SoString]:
    with open(so_path, "rb") as fh:
        data = fh.read()
    out: list[SoString] = []
    seen: set[tuple[int, str]] = set()
    if only_urls:
        for m in _URLISH.finditer(data):
            try:
                val = m.group(0).decode("ascii")
            except UnicodeDecodeError:
                continue
            key = (m.start(), val)
            if key not in seen:
                seen.add(key)
                out.append(SoString(m.start(), "url", val))
    else:
        for m in _PRINTABLE.finditer(data):
            if len(m.group(0)) < min_len:
                continue
            try:
                val = m.group(0).decode("ascii")
            except UnicodeDecodeError:
                continue
            kind = "url" if val.lower().startswith(("http://", "https://")) else "string"
            out.append(SoString(m.start(), kind, val))
    return out


def scan_endpoints(project_dir: str) -> dict:
    """Scan every libapp.so for URL-like strings."""
    libs = find_libapp(project_dir)
    if not libs:
        raise ApkdtError("no lib/*/libapp.so found — is this a Flutter app?")
    result = {"libs": [], "distinct": []}
    distinct: dict[str, None] = {}
    for so in libs:
        hits = scan_strings(so, only_urls=True)
        result["libs"].append({
            "path": os.path.relpath(so, project_dir),
            "urls": [{"offset": h.offset, "value": h.value} for h in hits],
        })
        for h in hits:
            distinct.setdefault(h.value, None)
    result["distinct"] = list(distinct)
    return result


def patch_string(so_path: str, old: str, new: str, *, backup: bool = True) -> int:
    """Replace `old` with `new` in one libapp.so. Returns occurrences patched.

    new must be the same length or shorter than old (null-padded). Raises if
    new is longer.
    """
    old_b = old.encode("utf-8")
    new_b = new.encode("utf-8")
    if len(new_b) > len(old_b):
        raise ApkdtError(
            f"replacement is longer than the original ({len(new_b)} > {len(old_b)} bytes). "
            f"Binary patching can only shorten or keep the same length. "
            f"Pick a URL no longer than the original ({len(old_b)} bytes)."
        )
    with open(so_path, "rb") as fh:
        data = fh.read()
    count = data.count(old_b)
    if count == 0:
        return 0
    padded = new_b + b"\x00" * (len(old_b) - len(new_b))
    data = data.replace(old_b, padded)
    if backup:
        bak = so_path + ".apkdt.bak"
        if not os.path.exists(bak):
            shutil.copy2(so_path, bak)
    with open(so_path, "wb") as fh:
        fh.write(data)
    return count


def patch_endpoint(project_dir: str, old: str, new: str) -> int:
    """Patch an endpoint across every libapp.so in the project."""
    libs = find_libapp(project_dir)
    if not libs:
        raise ApkdtError("no lib/*/libapp.so found — is this a Flutter app?")
    total = 0
    for so in libs:
        total += patch_string(so, old, new)
    return total
