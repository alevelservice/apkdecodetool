import os

import pytest

from apkdt import flutter
from apkdt.util import ApkdtError


@pytest.fixture
def flutter_proj(tmp_path):
    so_dir = tmp_path / "lib" / "arm64-v8a"
    so_dir.mkdir(parents=True)
    so = so_dir / "libapp.so"
    so.write_bytes(
        b"\x00\x01pad\x00https://api.bdsync.com/v1\x00xx\x00https://cdn.bdsync.com\x00\x7f"
    )
    return str(tmp_path)


def test_find_libapp(flutter_proj):
    libs = flutter.find_libapp(flutter_proj)
    assert len(libs) == 1 and libs[0].endswith("libapp.so")


def test_scan_endpoints_clean(flutter_proj):
    d = flutter.scan_endpoints(flutter_proj)
    assert "https://api.bdsync.com/v1" in d["distinct"]
    assert "https://cdn.bdsync.com" in d["distinct"]
    # must not run past the null terminator
    assert all("\x00" not in u for u in d["distinct"])


def test_patch_same_or_shorter_ok(flutter_proj):
    so = flutter.find_libapp(flutter_proj)[0]
    before = os.path.getsize(so)
    n = flutter.patch_endpoint(flutter_proj, "https://api.bdsync.com/v1", "https://api.myhost.io/v1")
    assert n == 1
    data = open(so, "rb").read()
    assert b"https://api.myhost.io/v1" in data
    assert b"https://api.bdsync.com/v1" not in data
    assert len(data) == before            # offsets preserved
    assert os.path.exists(so + ".apkdt.bak")  # backup made


def test_patch_longer_refused(flutter_proj):
    with pytest.raises(ApkdtError):
        flutter.patch_endpoint(flutter_proj, "https://cdn.bdsync.com",
                               "https://a-much-longer-replacement.example.com")


def test_patch_missing_returns_zero(flutter_proj):
    assert flutter.patch_endpoint(flutter_proj, "https://not-present.com", "https://x.com") == 0


def test_no_libapp_raises(tmp_path):
    with pytest.raises(ApkdtError):
        flutter.scan_endpoints(str(tmp_path))
