import pytest

from apkdt.cli import build_parser, main


def test_parser_builds():
    p = build_parser()
    args = p.parse_args(["endpoints", "replace", "proj", "--from", "a", "--to", "b"])
    assert args.frm == "a" and args.to == "b"


def test_doctor_runs():
    # doctor never raises; returns 0 or 1 depending on installed tools.
    assert main(["doctor"]) in (0, 1)


def test_missing_subcommand_errors():
    with pytest.raises(SystemExit):
        main([])
