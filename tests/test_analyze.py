import os

from apkdt.analyze import analyze


def _mk(tmp_path, files):
    root = tmp_path / "p"
    root.mkdir()
    (root / "AndroidManifest.xml").write_text("<manifest/>", encoding="utf-8")
    for f in files:
        p = root / f
        p.parent.mkdir(parents=True, exist_ok=True)
        p.write_text("", encoding="utf-8")
    return str(root)


def test_detects_flutter(tmp_path):
    a = analyze(_mk(tmp_path, ["lib/arm64-v8a/libapp.so", "lib/arm64-v8a/libflutter.so", "smali/A.smali"]))
    assert a.framework == "Flutter"
    assert a.editability == "Low"
    assert any("Dart" in x for x in a.not_editable)
    assert a.stats["native_abis"] == ["arm64-v8a"]


def test_detects_native(tmp_path):
    a = analyze(_mk(tmp_path, ["smali/com/A.smali", "smali/com/B.smali", "res/values/strings.xml"]))
    assert a.framework == "Native Android"
    assert a.editability == "High"
    assert a.percent >= 80


def test_detects_react_native_hermes(tmp_path):
    a = analyze(_mk(tmp_path, ["lib/arm64-v8a/libhermes.so", "assets/index.android.bundle", "smali/A.smali"]))
    assert a.framework == "React Native"


def test_detects_cordova(tmp_path):
    a = analyze(_mk(tmp_path, ["assets/www/index.html", "smali/A.smali"]))
    assert "Cordova" in a.framework
    assert a.editability == "High"


def test_percent_in_range(tmp_path):
    a = analyze(_mk(tmp_path, ["smali/A.smali"]))
    assert 0 <= a.percent <= 100
