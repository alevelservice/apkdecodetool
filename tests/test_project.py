import json
import os

import pytest

from apkdt.project import DecodedProject


MANIFEST = """<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.app"
    android:versionName="1.0.0" android:versionCode="1">
    <uses-permission android:name="android.permission.INTERNET"/>
    <application android:label="Demo">
        <activity android:name=".MainActivity"/>
        <service android:name=".SyncService"/>
    </application>
</manifest>
"""


@pytest.fixture
def project(tmp_path):
    root = tmp_path / "proj"
    (root / "res" / "values").mkdir(parents=True)
    (root / "smali" / "com").mkdir(parents=True)
    (root / "AndroidManifest.xml").write_text(MANIFEST, encoding="utf-8")
    (root / "smali" / "com" / "Api.smali").write_text(
        'const-string v0, "https://api.example.com/v1/login"\n'
        'const-string v1, "http://10.0.0.5:8080/ping"\n',
        encoding="utf-8",
    )
    return DecodedProject(str(root))


def test_manifest_summary(project):
    s = project.manifest_summary()
    assert s["package"] == "com.example.app"
    assert s["versionName"] == "1.0.0"
    assert "android.permission.INTERNET" in s["permissions"]
    assert ".MainActivity" in s["activities"]
    assert ".SyncService" in s["services"]


def test_set_version(project):
    project.set_version("2.3.4", "42")
    s = project.manifest_summary()
    assert s["versionName"] == "2.3.4"
    assert s["versionCode"] == "42"


def test_scan_endpoints_finds_url_and_ip(project):
    result = project.scan_endpoints()
    vals = result.values()
    assert any("api.example.com" in v for v in vals)
    assert any(v.startswith("10.0.0.5") for v in vals)


def test_replace_endpoint(project):
    n = project.replace_endpoint("https://api.example.com", "https://staging.internal")
    assert n == 1
    content = (project.root and open(os.path.join(project.root, "smali", "com", "Api.smali")).read())
    assert "staging.internal" in content
    assert "api.example.com" not in content


def test_set_value_creates_and_updates(project):
    project.set_value("color", "colorPrimary", "#1565C0")
    project.set_value("string", "app_name", "Demo Staging")
    project.set_value("color", "colorPrimary", "#000000")  # update existing
    colors = open(os.path.join(project.root, "res", "values", "colors.xml")).read()
    strings = open(os.path.join(project.root, "res", "values", "strings.xml")).read()
    assert "#000000" in colors and colors.count("colorPrimary") == 1
    assert "Demo Staging" in strings


def test_allow_http_writes_config_and_patches_manifest(project):
    rel = project.allow_http()
    assert rel.endswith(".xml")
    assert os.path.exists(os.path.join(project.root, rel))
    manifest = open(project.manifest_path).read()
    assert "networkSecurityConfig" in manifest
    assert "usesCleartextTraffic" in manifest


def test_scan_report_json_roundtrip(project):
    data = project.scan_endpoints().to_json()
    text = json.dumps(data)
    assert json.loads(text)["count"] >= 2
