"""Detect an APK's framework/language and estimate how editable it is.

The estimate is a practical guide, not a precise metric: it reflects how
much of a *typical* app of that kind you can realistically change with an
apktool/JADX workflow, where logic is edited as smali and native/AOT code
cannot be decompiled.
"""

from __future__ import annotations

import os
from dataclasses import dataclass, field


@dataclass
class Analysis:
    framework: str                 # e.g. "Flutter", "Native (Kotlin/Java)"
    language: str                  # primary language(s)
    editability: str               # "High" | "Medium" | "Low"
    percent: int                   # 0-100 rough editability
    summary: str                   # one-line explanation
    editable: list[str] = field(default_factory=list)      # what you CAN change
    not_editable: list[str] = field(default_factory=list)  # what you CANNOT
    stats: dict = field(default_factory=dict)

    def to_json(self) -> dict:
        return {
            "framework": self.framework,
            "language": self.language,
            "editability": self.editability,
            "percent": self.percent,
            "summary": self.summary,
            "editable": self.editable,
            "not_editable": self.not_editable,
            "stats": self.stats,
        }


def _exists_any(root: str, *rels: str) -> bool:
    return any(os.path.exists(os.path.join(root, r)) for r in rels)


def _walk_has(root: str, predicate) -> bool:
    for dirpath, _d, files in os.walk(root):
        for fn in files:
            if predicate(dirpath, fn):
                return True
    return False


def _count_files(root: str, suffixes: tuple[str, ...]) -> int:
    n = 0
    for _dirpath, _d, files in os.walk(root):
        for fn in files:
            if fn.endswith(suffixes):
                n += 1
    return n


def _so_abis(root: str) -> list[str]:
    lib = os.path.join(root, "lib")
    if not os.path.isdir(lib):
        return []
    return sorted(d for d in os.listdir(lib) if os.path.isdir(os.path.join(lib, d)))


def _has_so(root: str, *names: str) -> bool:
    lib = os.path.join(root, "lib")
    if not os.path.isdir(lib):
        return False
    for _dirpath, _d, files in os.walk(lib):
        for fn in files:
            if any(n in fn for n in names):
                return True
    return False


def analyze(project_dir: str) -> Analysis:
    root = os.path.abspath(project_dir)

    smali_classes = _count_files(root, (".smali",))
    so_abis = _so_abis(root)
    so_count = _count_files(root, (".so",))
    dex_note = smali_classes > 0
    stats = {
        "smali_classes": smali_classes,
        "native_abis": so_abis,
        "native_libs": so_count,
    }

    RES = "editable: resources (res/), AndroidManifest.xml, assets/, app name, icon, permissions"

    # ---- framework detection (most specific first) --------------------
    if _has_so(root, "libflutter.so", "libapp.so") or os.path.isdir(os.path.join(root, "assets", "flutter_assets")):
        return Analysis(
            framework="Flutter",
            language="Dart (compiled) + a little Kotlin/Java glue",
            editability="Low",
            percent=35,
            summary="Dart logic is AOT-compiled into libapp.so — it cannot be decompiled or edited. Only the shell, assets and resources are editable.",
            editable=[
                "resources, manifest, app name, icon, permissions",
                "bundled assets/ (Flutter assets, JSON/config, images)",
                "plain-text endpoints stored in assets or resources",
                "the thin Android glue in smali (usually tiny)",
            ],
            not_editable=[
                "Dart business logic (compiled into lib/*/libapp.so)",
                "the Flutter engine (libflutter.so)",
            ],
            stats=stats,
        )

    if _has_so(root, "libreactnativejni.so", "libhermes.so", "libjsc.so") or \
       _exists_any(root, "assets/index.android.bundle"):
        hermes = _has_so(root, "libhermes.so")
        return Analysis(
            framework="React Native",
            language="JavaScript/TypeScript (bundled) + Kotlin/Java glue",
            editability="Low" if hermes else "Medium",
            percent=40 if hermes else 65,
            summary=(
                "JS is compiled to Hermes bytecode (index.android.bundle) — hard to edit."
                if hermes else
                "JS is bundled in index.android.bundle — editable but usually minified."),
            editable=[
                "resources, manifest, app name, icon, permissions",
                "assets/ files",
                ("the JS bundle (minified, tough to read)" if not hermes
                 else "little of the JS (Hermes bytecode)"),
                "native Android glue in smali",
            ],
            not_editable=(["Hermes-compiled JS (index.android.bundle)"] if hermes else []),
            stats=stats,
        )

    if _has_so(root, "libunity.so", "libil2cpp.so") or os.path.isdir(os.path.join(root, "assets", "bin", "Data")):
        return Analysis(
            framework="Unity (game engine)",
            language="C# (IL2CPP → native) + assets",
            editability="Low",
            percent=25,
            summary="C# is compiled to native via IL2CPP — not decompilable here. Only assets/resources are editable.",
            editable=["resources, manifest, app name, icon", "some Unity assets"],
            not_editable=["C# game logic (IL2CPP native)", "the Unity engine"],
            stats=stats,
        )

    if _has_so(root, "libmonodroid.so", "libxamarin") or _walk_has(root, lambda d, f: f.endswith(".dll")):
        return Analysis(
            framework="Xamarin / .NET MAUI",
            language="C# (.NET assemblies)",
            editability="Low",
            percent=35,
            summary="Logic lives in .NET .dll assemblies — editable only with separate .NET tools, not apktool/JADX.",
            editable=["resources, manifest, app name, icon", "assets/"],
            not_editable=["C# logic in .dll assemblies (needs a .NET decompiler)"],
            stats=stats,
        )

    if os.path.isfile(os.path.join(root, "assets", "www", "index.html")):
        return Analysis(
            framework="Cordova / Ionic (hybrid WebView)",
            language="HTML/CSS/JavaScript",
            editability="High",
            percent=85,
            summary="The whole app is web code under assets/www/ — directly editable as text.",
            editable=["assets/www/ HTML, CSS, JS", "resources, manifest, app name, icon"],
            not_editable=["any native plugins shipped as .so"],
            stats=stats,
        )

    # ---- native Android (Kotlin/Java) ---------------------------------
    if dex_note:
        has_native = so_count > 0
        pct = 85 if not has_native else 75
        return Analysis(
            framework="Native Android",
            language="Kotlin / Java (same DEX bytecode)",
            editability="High",
            percent=pct,
            summary="Logic is in DEX → editable as smali (small changes easy; big rewrites tedious). Resources fully editable." +
                    (" Some logic may be in native .so (not recompilable)." if has_native else ""),
            editable=[
                "app logic via smali (Kotlin & Java both compile here)",
                "Jetpack Compose / Coroutines / MVVM — all just classes",
                "resources, manifest, app name, icon, permissions",
                "assets/ and plain-text endpoints",
            ],
            not_editable=(["native C/C++ in .so libraries (repacked, not recompiled)"] if has_native else []),
            stats=stats,
        )

    # ---- fallback ------------------------------------------------------
    return Analysis(
        framework="Unknown",
        language="undetermined",
        editability="Medium",
        percent=50,
        summary="Could not confidently detect the framework. Resources and manifest are editable; check lib/ and assets/ for how the logic is shipped.",
        editable=["resources, manifest, assets"],
        not_editable=[],
        stats=stats,
    )
