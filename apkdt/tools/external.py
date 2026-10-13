"""Discovery and version probing for the external tools apkdt depends on."""

from __future__ import annotations

from dataclasses import dataclass

from apkdt.util import run, which


@dataclass
class Tool:
    name: str          # the command name probed on PATH
    purpose: str       # human description for `doctor`
    required: bool     # whether core workflows need it
    version_args: list[str] | None = None

    def path(self) -> str | None:
        return which(self.name)

    def available(self) -> bool:
        return self.path() is not None

    def version(self) -> str:
        if not self.available() or not self.version_args:
            return ""
        try:
            res = run([self.name, *self.version_args], check=False)
            lines = (res.stdout or res.stderr or "").strip().splitlines()
            for line in lines:
                line = line.strip()
                if line and not line.startswith("Picked up "):
                    return line
            return ""
        except Exception:
            return ""


# The toolchain apkdt orchestrates. `java` and the Android build tools are
# required for the core decode -> build -> sign loop; jadx is optional and
# only powers the readable-source views.
TOOLS: list[Tool] = [
    Tool("java", "runtime for apktool / jadx / apksigner", True, ["-version"]),
    Tool("apktool", "decode & rebuild resources, manifest, smali", True, ["--version"]),
    Tool("jadx", "decompile DEX to readable Java/Kotlin (inspection)", False, ["--version"]),
    Tool("zipalign", "align the rebuilt APK before signing", True, []),
    Tool("apksigner", "sign the rebuilt APK with your key", True, ["--version"]),
    Tool("keytool", "generate a signing keystore (from the JDK)", False, []),
]


def find(name: str) -> Tool:
    for t in TOOLS:
        if t.name == name:
            return t
    raise KeyError(name)
