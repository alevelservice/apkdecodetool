import os

import pytest

from apkdt import patch as patchmod
from apkdt.project import DecodedProject

MANIFEST = """<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.app"
    android:versionName="1.0.0" android:versionCode="1">
    <application android:label="Demo"/>
</manifest>
"""


@pytest.fixture
def project(tmp_path):
    root = tmp_path / "proj"
    (root / "res" / "values").mkdir(parents=True)
    (root / "assets").mkdir(parents=True)
    (root / "AndroidManifest.xml").write_text(MANIFEST, encoding="utf-8")
    (root / "assets" / "config.json").write_text(
        '{"base_url": "https://api.example.com"}', encoding="utf-8"
    )
    return DecodedProject(str(root))


def test_apply_patch(project, tmp_path):
    patch_file = tmp_path / "patch.yml"
    patch_file.write_text(
        "endpoints:\n"
        "  - from: https://api.example.com\n"
        "    to: https://staging.internal\n"
        "design:\n"
        "  colors:\n"
        "    colorPrimary: '#1565C0'\n"
        "  strings:\n"
        "    app_name: Staging\n"
        "config:\n"
        "  version_name: 9.9.9\n"
        "  version_code: 99\n"
        "  allow_http: true\n",
        encoding="utf-8",
    )
    patchmod.apply(project, patchmod.load(str(patch_file)))

    assert "staging.internal" in open(os.path.join(project.root, "assets", "config.json")).read()
    s = project.manifest_summary()
    assert s["versionName"] == "9.9.9" and s["versionCode"] == "99"
    assert "Staging" in open(os.path.join(project.root, "res", "values", "strings.xml")).read()
    assert "networkSecurityConfig" in open(project.manifest_path).read()
