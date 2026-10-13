"""Shared helpers: logging, colored output, and a subprocess runner."""

from __future__ import annotations

import shutil
import subprocess
import sys
from dataclasses import dataclass


class ApkdtError(Exception):
    """A user-facing error; the CLI prints its message and exits non-zero."""


class ToolNotFound(ApkdtError):
    """A required external tool (apktool, jadx, ...) is not on PATH."""


def _supports_color() -> bool:
    return sys.stderr.isatty()


def _c(code: str, text: str) -> str:
    if not _supports_color():
        return text
    return f"\033[{code}m{text}\033[0m"


def info(msg: str) -> None:
    print(_c("36", "==>") + " " + msg, file=sys.stderr)


def step(msg: str) -> None:
    print(_c("34", "  ->") + " " + msg, file=sys.stderr)


def ok(msg: str) -> None:
    print(_c("32", "  ok") + " " + msg, file=sys.stderr)


def warn(msg: str) -> None:
    print(_c("33", "warn") + " " + msg, file=sys.stderr)


def err(msg: str) -> None:
    print(_c("31", "error") + " " + msg, file=sys.stderr)


@dataclass
class RunResult:
    cmd: list[str]
    returncode: int
    stdout: str
    stderr: str

    @property
    def ok(self) -> bool:
        return self.returncode == 0


def which(name: str) -> str | None:
    return shutil.which(name)


def run(
    cmd: list[str],
    *,
    check: bool = True,
    capture: bool = True,
    cwd: str | None = None,
) -> RunResult:
    """Run a subprocess.

    `cmd` is always a list (never a shell string), so arguments such as
    file paths are passed literally and are not re-interpreted by a shell.
    """
    if not cmd:
        raise ApkdtError("empty command")
    exe = which(cmd[0])
    if exe is None:
        raise ToolNotFound(
            f"required tool '{cmd[0]}' was not found on PATH. "
            f"Run 'apkdt doctor' to see what is missing."
        )

    proc = subprocess.run(
        [exe, *cmd[1:]],
        cwd=cwd,
        text=True,
        capture_output=capture,
    )
    result = RunResult(
        cmd=cmd,
        returncode=proc.returncode,
        stdout=proc.stdout or "" if capture else "",
        stderr=proc.stderr or "" if capture else "",
    )
    if check and not result.ok:
        detail = (result.stderr or result.stdout or "").strip()
        raise ApkdtError(
            f"command failed ({result.returncode}): {' '.join(cmd)}\n{detail}"
        )
    return result
