# APK Decode Tool

> Decode an Android APK back into readable source and resources, review or modify its design, configuration and network endpoints, then rebuild and sign it — intended for **apps you own or are authorized to work on**.

APK Decode Tool (`apkdt`) is a command-line wrapper around the standard, well-known Android reverse-engineering toolchain — [Apktool](https://apktool.org/), [JADX](https://github.com/skylot/jadx), `zipalign` and `apksigner` — that ties them into one workflow:

```
app.apk ──► decode ──► inspect / edit resources & config ──► build ──► sign ──► app-rebuilt.apk
```

> **Project status:** early development. This README is the design specification for the tool; the commands below describe the intended behaviour. See the [Roadmap](#roadmap) for what is implemented today.

---

## Legal and responsible use

**Read this first.** Decompiling and rebuilding apps is a powerful capability with legitimate and illegitimate uses. This project is intended **only** for:

- apps you **build or own**;
- apps you have **explicit written permission** to analyze or modify (e.g. a client engagement or a bug-bounty program whose scope allows it);
- **security research**, malware analysis and education on software you are authorized to examine;
- **interoperability** and accessibility work permitted by law in your jurisdiction.

It is **not** intended for, and you must not use it to:

- bypass licensing, DRM, payment or authentication of software you don't own;
- repackage, rebrand or redistribute someone else's app;
- remove attribution, inject code, or impersonate another publisher;
- violate an app's terms of service, a platform's policies, or any applicable law.

Modifying or redistributing third-party apps may be illegal and typically voids their integrity guarantees. **You are solely responsible for how you use this tool.** When in doubt, get written authorization first.

---

## Full source & control coverage

`apkdt` aims to give you complete control over **every** part of an APK — not just the design. A decode unpacks the whole package, and each layer is editable and rebuildable:

| Layer of the APK | What you get back | Editable? | Rebuilt into the APK? |
|------------------|-------------------|-----------|-----------------------|
| **Code — bytecode** | all `classes*.dex` disassembled to **smali** (multidex) | ✅ full edit | ✅ yes |
| **Code — readable source** | **Java/Kotlin** recovered via JADX for reading, searching, diffing | 🔎 read/inspect | mapped back through smali |
| **Resources** | `res/` — layouts, drawables, menus, animations, raw | ✅ full edit | ✅ yes |
| **Values** | colors, strings, styles, themes, dimens, arrays | ✅ full edit | ✅ yes |
| **Manifest** | `AndroidManifest.xml` — components, permissions, intents, flags | ✅ full edit | ✅ yes |
| **Assets** | everything under `assets/` (JSON, HTML/JS, fonts, DBs, models) | ✅ full edit | ✅ yes |
| **Endpoints / config** | URLs, hosts, IPs, API keys, `.properties`/`.json`/`.xml` config | ✅ scan + replace | ✅ yes |
| **Network security** | `network_security_config`, cleartext/trust settings | ✅ generate/edit | ✅ yes |
| **App identity** | package name, versionName/versionCode, app label & icon | ✅ edit | ✅ yes |
| **Native libraries** | `lib/<abi>/*.so` — listed, strings extracted, swappable | ↔ repackage as-is | ✅ repacked (not recompiled) |
| **Certificates / signing** | original signer info shown; rebuilt APK **re-signed with your key** | 🔎 inspect + re-sign | ✅ signed |
| **Packaging** | split APKs / `.xapk` / `.apks` merged before decode | — | ✅ single APK out |

> **Scope reminder:** "full control" means technical completeness over an APK **you are authorized to work on**. The fact that every layer is editable does not change the [responsible-use rules](#legal-and-responsible-use) above.

What the tool does **not** do: recompile native (`.so`) code, defeat DRM/licensing, or re-sign with another publisher's identity.

---

## Requirements

Runtime and external tools (the CLI shells out to these — it does not reimplement them):

| Dependency | Purpose |
|------------|---------|
| **Java JDK 11+** | required by Apktool, JADX and apksigner |
| **Apktool** | decode/rebuild resources, manifest and smali |
| **JADX** (optional) | decompile DEX to readable Java for inspection |
| **Android build tools** (`zipalign`, `apksigner`) | align and sign the rebuilt APK |
| **Python 3.10+** | the `apkdt` CLI itself |

On Debian/Ubuntu most of these are available via `apt` (`apktool`, `zipalign`, `apksigner`) plus a JADX release download.

### Telling `apkdt` where the tools are (no PATH editing)

If the tools are installed but not on your `PATH` (common on Windows), point `apkdt` at them with environment variables instead of editing `PATH`:

- **`APKDT_TOOLS`** — one or more directories (`;`-separated on Windows, `:` on Linux/macOS) to search, e.g.
  ```cmd
  set APKDT_TOOLS=C:\android-tools;C:\android-tools\jadx\bin;C:\android-sdk\build-tools\34.0.0
  ```
- **`APKDT_<TOOL>`** — an explicit path to a single tool, e.g.
  ```cmd
  set APKDT_APKTOOL=C:\android-tools\apktool.bat
  set APKDT_ZIPALIGN=C:\android-sdk\build-tools\34.0.0\zipalign.exe
  ```

Resolution order is: `APKDT_<TOOL>` → `APKDT_TOOLS` dirs → system `PATH`. On Windows this respects `PATHEXT`, so `apktool` resolves to `apktool.bat`. Use `set` for the current terminal, or `setx` to persist (then open a new terminal).

---

## Installation

```bash
git clone https://github.com/alevelservice/apkdecodetool.git
cd apkdecodetool
pip install -e .

# verify external tools are discoverable
apkdt doctor
```

`apkdt doctor` checks that Java, Apktool, JADX, zipalign and apksigner are on your `PATH` and reports versions, so missing dependencies surface before you start.

---

## Quick start

```bash
# 1. Decode an APK you own into an editable project folder
apkdt decode myapp.apk -o myapp_src/

# 2. See which endpoints the app talks to
apkdt endpoints scan myapp_src/

# 3. Point it at your own test/staging backend
apkdt endpoints replace myapp_src/ \
    --from https://api.example.com \
    --to   https://staging.example.internal

# 4. Rebuild and sign with YOUR debug/test key
apkdt build myapp_src/ -o myapp-rebuilt.apk
apkdt sign  myapp-rebuilt.apk --keystore my-debug.keystore
```

---

## Web UI (upload → edit → rebuild in the browser)

Prefer a point-and-click workflow over the CLI? Launch the built-in local web app:

```bash
pip install "apkdecodetool[web]"     # installs Flask
apkdt serve                          # opens http://127.0.0.1:8765 in your browser
```

Then, in the browser:

1. **Upload an APK** — it is decoded automatically (smali, resources, manifest, and a JADX Java view if JADX is installed).
2. **Browse & edit** any text file in the file tree, with a filter box; click **Save file**.
3. Click **🔨 Rebuild & Sign** — the app runs `apktool build` → `zipalign` → `apksigner` (with an auto-generated test keystore) and gives you a **download** link for the rebuilt APK.

Notes:
- The server binds to **127.0.0.1 only** and keeps every file operation inside one workspace directory (path traversal is rejected). It is a local tool, not something to expose on a network.
- Uploads, the decoded project and outputs live under `./apkdt_workspace/` by default (override with `apkdt serve --workdir <dir>`).
- Rebuild is enabled only when `apktool`, `zipalign` and `apksigner` are all found (see [Telling apkdt where the tools are](#telling-apkdt-where-the-tools-are-no-path-editing)).
- Same scope as everything else: **apps you own or are authorized to modify.**

---

## Commands

### `decode`

Unpack an APK into a readable, editable project directory.

```bash
apkdt decode <app.apk> -o <out_dir/> [options]
```

| Option | Description |
|--------|-------------|
| `--no-sources` | skip JADX Java decompilation (faster; smali only) |
| `--no-res` | skip resource decoding (smali + manifest only) |
| `--keep-dex` | keep the raw `classes*.dex` alongside the smali |

Produces decoded resources, `AndroidManifest.xml`, smali, and (optionally) a read-only Java view. Multidex is handled automatically.

### `sources`

Export the full readable source (Java/Kotlin) recovered from the DEX, for reading, searching and diffing — the complete "APK → source code" view.

```bash
apkdt sources export <app.apk|project_dir/> -o <src_out/>   # full JADX decompile
apkdt sources grep   <project_dir/> "https://"              # search recovered source
apkdt sources tree   <project_dir/>                         # package/class overview
```

The exported source is for **inspection**: edits that get rebuilt are made in `smali/` (what the Android toolchain can reassemble), while `sources/` gives you the human-readable picture of the whole codebase.

### `endpoints`

Find and change the network endpoints an app uses — useful for pointing a build you own at a test or staging server.

```bash
apkdt endpoints scan    <project_dir/>                 # list URLs/hosts/IPs found
apkdt endpoints replace <project_dir/> --from <url> --to <url>
```

`scan` searches smali, resources, assets and config files and writes an `endpoints.json` report listing each match with its file and line. `replace` performs the substitution across all of those locations and prints a diff summary of what changed.

### `design`

Edit the app's visual resources — colors, strings, styles, launcher icon and layouts — using the decoded `res/` tree.

```bash
apkdt design set-color  <project_dir/> colorPrimary "#1565C0"
apkdt design set-string <project_dir/> app_name "My Staging Build"
# apkdt design set-icon <project_dir/> ./new_icon.png   # planned, see Roadmap
```

These are thin helpers over the decoded resource XML; you can also edit `res/` (icons, layouts, styles) by hand in any editor and rebuild.

### `config`

Inspect and adjust manifest-level and app configuration.

```bash
apkdt config show        <project_dir/>          # package, version, perms, components
apkdt config set-version <project_dir/> --name 1.2.3 --code 42
apkdt config allow-http  <project_dir/>          # add a network_security_config for cleartext (testing)
apkdt config standalone  <project_dir/>          # strip split-APK requirement (see below)
```

### `build`

Rebuild the edited project back into an APK.

```bash
apkdt build <project_dir/> -o <out.apk>
```

Runs Apktool build, then `zipalign`. The result is unsigned until you run `sign`.

### `sign`

Align and sign the rebuilt APK with **your own** signing key.

```bash
apkdt sign <out.apk> --keystore <your.keystore> [--alias <alias>]
```

A rebuilt APK is signed with a different key than the original, so it will **not** update an existing install from a store — it must be installed as a separate, clearly-your-own build. Generate a test key with:

```bash
keytool -genkey -v -keystore my-debug.keystore -alias test \
    -keyalg RSA -keysize 2048 -validity 10000
```

### `all`

Run decode → (your edits) → build → sign as one pipeline using a patch file.

```bash
apkdt all myapp.apk --patch patch.yml --keystore my-debug.keystore -o myapp-rebuilt.apk
```

---

## Output layout

```
myapp_src/
├── AndroidManifest.xml      # decoded manifest
├── apktool.yml              # Apktool metadata (versions, do-not-compress, etc.)
├── res/                     # layouts, drawables, values (colors/strings/styles)
├── assets/                  # raw bundled assets
├── smali/ smali_classesN/   # disassembled bytecode (edited here; rebuilt from here)
├── lib/                     # native .so libraries (not recompiled)
├── sources/                 # read-only JADX Java view (inspection only)
└── endpoints.json           # written by `endpoints scan`
```

---

## Patch files

A patch file records your intended edits declaratively so a decode → build is reproducible:

```yaml
# patch.yml
endpoints:
  - from: https://api.example.com
    to:   https://staging.example.internal
design:
  colors:
    colorPrimary: "#1565C0"
  strings:
    app_name: "My Staging Build"
config:
  version_name: "1.2.3-staging"
  allow_http: true
```

Apply it with `apkdt all ... --patch patch.yml`.

---

## How it works

`apkdt` does not reimplement decompilation; it orchestrates established tools and adds a convenience layer:

1. **decode** → Apktool unpacks resources/manifest/smali; JADX optionally produces a Java view.
2. **edit** → helper commands and/or patch files rewrite decoded XML and smali text.
3. **build** → Apktool reassembles the APK; `zipalign` aligns it.
4. **sign** → `apksigner` signs it with your key so a device will install it.

Because edits are applied to the decoded smali and resources (the Java view is read-only), what you review is what gets rebuilt.

---

## Troubleshooting

| Symptom | Likely cause / fix |
|---------|--------------------|
| `apkdt doctor` reports a missing tool | install it, or point apkdt at it with `APKDT_TOOLS` / `APKDT_<TOOL>` |
| Build fails with resource errors | a resource edit broke XML; rebuild from a clean `decode` and reapply changes incrementally |
| **"App not installed" on the phone** | see [Why "App not installed"?](#why-app-not-installed) below |
| App installs but won't update the store version | expected — it's signed with your key, not the original's; install as a separate build |
| App crashes after endpoint change | the new server must speak the same API/TLS; use `config allow-http` only for test servers |
| Native (`.so`) behaviour unchanged | native libraries are repackaged as-is; `apkdt` does not recompile native code |

### Why "App not installed"?

A rebuilt APK that looks fine can still fail to install. Work through these in order:

1. **The original app is already installed.** Your APK is signed with *your* key, so Android won't install it over a differently-signed copy. **Uninstall the original first.**
2. **It's a Play Store App Bundle (`base.apk`).** If `apktool.yml` shows `apkFileName: base.apk`, the app was split into a base + config APKs, and the base is flagged "split required" — Android refuses to install it alone. Run:
   ```bash
   apkdt config standalone <project_dir/>      # or the "🧩 Make standalone" button in the web UI
   ```
   then rebuild & sign. (Apps that keep everything in the base — many Flutter apps — install fine after this; others may be missing some density/language resources that lived in the splits.)
3. **Signature not v2/v3.** Check with `apkdt verify <apk>`; modern Android rejects v1-only APKs.
4. **`minSdkVersion` higher than the phone's Android version.** Check `apktool.yml` against your device.
5. **Downgrade.** The installed `versionCode` is higher than your rebuild's — bump it with `apkdt config set-version`.

---

## Project structure

```
apkdecodetool/
├── README.md
├── pyproject.toml
├── apkdt/
│   ├── __main__.py        # CLI entry point
│   ├── commands/          # decode, endpoints, design, config, build, sign
│   ├── tools/             # wrappers around apktool / jadx / apksigner / zipalign
│   └── patch.py           # patch-file loader/applier
└── tests/
```

---

## Roadmap

- [x] `doctor` dependency checks
- [x] `decode` (Apktool + optional JADX)
- [x] `sources export` / `grep` / `tree` (full source recovery)
- [x] `endpoints scan` / `replace`
- [x] `design` helpers (colors / strings)
- [x] `config` show / set-version / allow-http
- [x] `build` + `sign` (+ keystore generation)
- [x] `all` with patch files
- [x] `serve` — local web UI (upload / edit / rebuild in the browser)
- [x] `verify` — report APK signature schemes
- [x] `config standalone` — strip split-APK requirement from a bundle base.apk
- [ ] `design set-icon` and layout helpers
- [ ] split APK / `.xapk` merging
- [ ] native-library string extraction

---

## Contributing

Contributions are welcome. Please keep the [responsible-use scope](#legal-and-responsible-use) in mind — issues or PRs that primarily enable tampering with third-party apps you don't own will be declined.

---

## License

To be decided (MIT suggested). Until a `LICENSE` file is added, all rights reserved by the repository owner.
