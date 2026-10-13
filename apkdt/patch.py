"""Load and apply a declarative patch file (YAML) to a decoded project."""

from __future__ import annotations

import yaml

from apkdt.project import DecodedProject
from apkdt.util import ApkdtError, ok, step


def load(path: str) -> dict:
    with open(path, "r", encoding="utf-8") as fh:
        data = yaml.safe_load(fh) or {}
    if not isinstance(data, dict):
        raise ApkdtError(f"patch file must be a mapping at the top level: {path}")
    return data


def apply(project: DecodedProject, patch: dict) -> None:
    for ep in patch.get("endpoints", []) or []:
        frm, to = ep.get("from"), ep.get("to")
        if not frm or to is None:
            raise ApkdtError("each endpoints entry needs 'from' and 'to'")
        n = project.replace_endpoint(frm, to)
        ok(f"endpoint {frm} -> {to} ({n} file(s))")

    design = patch.get("design", {}) or {}
    for name, value in (design.get("colors", {}) or {}).items():
        project.set_value("color", name, str(value))
        step(f"color {name} = {value}")
    for name, value in (design.get("strings", {}) or {}).items():
        project.set_value("string", name, str(value))
        step(f"string {name} = {value}")

    config = patch.get("config", {}) or {}
    if "version_name" in config or "version_code" in config:
        project.set_version(config.get("version_name"), config.get("version_code"))
        ok("version updated")
    if config.get("allow_http"):
        rel = project.allow_http()
        ok(f"network security config -> {rel}")
