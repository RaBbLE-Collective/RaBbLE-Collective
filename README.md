# RaBbLE-Collective

**Version:** `0.1.0` (Genesis, from `VERSION`) · **Live:** [joinrabble.world](https://joinrabble.world) · **Versioning:** [semver, per member](https://github.com/RaBbLE-Collective/RaBbLE-Grimoire/blob/main/RaBbLE-Versioning.md)

The root of the RaBbLE project: one folder that holds every part of it. **RaBbLE** is an AI companion that is being built to learn how you work and help with it. This repo is the front door. It holds the setup script and the short orientation files for people and coding agents. The code and the docs live in the member repos below.

Each member repo is independent (not a git submodule) and does one job: a website, a server, a desktop OS, a hardware pendant, a design system. The [Grimoire](https://github.com/RaBbLE-Collective/RaBbLE-Grimoire) holds all the documentation.

**Status:** early. `0.1.0` (Genesis) is the first release of every member. Expect rough edges.

---

## Quickstart

```bash
curl -fsSL https://joinrabble.world/setup.sh | bash
```

One command. It sets up the whole folder on your machine:

1. Clones `RaBbLE-Collective` into `~/RaBbLE-Collective/` (Collective root)
2. Clones `RaBbLE-Grimoire` (knowledge layer) — the source of truth
3. Runs `RaBbLE-Grimoire/spells/setup.sh` which:
   - Clones all active member repos into `~/RaBbLE-Collective/RaBbLE-*/`
   - Checks out `new-horizons` (active dev branch) in each member
   - Creates `CLAUDE.md`, `CODEX.md`, `GEMINI.md` → `AGENT.md` symlinks in every repo
4. Prints a status table of all members

The symlinks are gitignored in every member. They are regenerated on each bootstrap. Never commit them.

To re-run just symlinks: `bash RaBbLE-Grimoire/spells/sync-symlinks.sh`

---

## For coding agents (after setup)

```bash
# Short summaries of the key docs (about 4,000 tokens)
cat ~/RaBbLE-Collective/RaBbLE-Grimoire/gist/*.md

# Pick up where the last session left off
head -20 ~/RaBbLE-Collective/RaBbLE-Grimoire/log/SESSION-LOG.md

# Live health of all members
bash ~/RaBbLE-Collective/RaBbLE-Grimoire/spells/status.sh
```

Each member has its own `AGENT.md` (entry point for that repo). Start there when working in a specific member.

---

## Branch Convention

| Branch | Purpose |
|---|---|
| `new-horizons` | The working branch in every member: all daily work goes here. |
| `release/X.Y.Z` | Cut from `new-horizons` to stabilise one release. Fixes only. |
| `main` | Stable. Receives release branches by pull request and carries the semver tags. In RaBbLE-World a push to `main` deploys production. |
| `feature/*` | Optional short-lived branches, rebased onto `new-horizons` before merge. |

RaBbLE-Chrysalis (the archive) works on `main`. Full release flow: `RaBbLE-Grimoire/RaBbLE-Versioning.md`.

---

## The Members

| Member | Role | Dev Branch |
|---|---|---|
| **RaBbLE-Grimoire** | All documentation, plans, the member registry and the helper scripts | `new-horizons` |
| **RaBbLE-sCoRE** | The server: chat and voice API, accounts, the `rabble` terminal app | `new-horizons` |
| **RaBbLE-OS** | A Fedora 44 + Hyprland desktop setup, built with Ansible | `new-horizons` |
| **RaBbLE-World** | The website and chat at `joinrabble.world` | `new-horizons` |
| **RaBbLE-NeBuLA** | The animated face: the `<rabble-entity>` element, 2D and 3D | `new-horizons` |
| **RaBbLE-Aether** | The stylesheet: palette, fonts and components | `new-horizons` |
| **RaBbLE-Pocket** | ESP32-S3 pendant firmware; voice goes to sCoRE | `new-horizons` |
| **RaBbLE-ScRiBbLE** | Handwriting and notes web app at `scribble.joinrabble.world` | `new-horizons` |
| **RaBbLE-BaBbLE** | Scratch workspace for raw ideas and intake | `new-horizons` |
| **RaBbLE-Xperimental** | Sandbox for small experiments | `new-horizons` |
| **RaBbLE-Chrysalis** | Archive of the earliest builds | `main` |

---

## Architecture

```
~/RaBbLE-Collective/                        ← this repo (Collective root)
├── setup.sh                       ← entry spell
├── AGENT.md                       ← canonical agent entry point for this root
├── CLAUDE.md → AGENT.md           ← gitignored symlink (auto-created)
├── CODEX.md  → AGENT.md           ← gitignored symlink (auto-created)
├── GEMINI.md → AGENT.md           ← gitignored symlink (auto-created)
├── RaBbLE-Grimoire/               ← knowledge layer (independent git)
│   ├── spells/setup.sh            ← wires all members + symlinks
│   ├── spells/sync-symlinks.sh    ← regenerates CLAUDE/CODEX/GEMINI symlinks
│   ├── spells/publish-cdn.sh      ← builds + deploys Aether/NeBuLA to subdomains
│   ├── registry/manifests/        ← member manifest YAMLs
│   └── gist/                      ← distilled orientation (~4,000 tokens)
├── RaBbLE-sCoRE/                  ← independent git
├── RaBbLE-OS/                     ← independent git
├── RaBbLE-World/                  ← independent git
└── RaBbLE-*/                      ← all gitignored by this repo
```

Member repos are independent git trees. This repo tracks only the root layer, and the Grimoire's setup script clones the rest.

---

## CDN Delivery

Aether and NeBuLA are served as versioned static bundles from their own subdomains (Cloudflare Workers):

| Asset | URL pattern | Live now |
|---|---|---|
| Aether CSS | `https://aether.joinrabble.world/<version>/aether.min.css` | `v0.1.0` (Genesis); `v0.0.0.1-rc.1`, `rc.2` kept |
| NeBuLA IIFE | `https://nebula.joinrabble.world/<version>/nebula.iife.js` | `v0.1.0` (Genesis); `v0.0.0.1-rc.1` kept |

Version paths are immutable. Publishing runs from a local checkout, never from CI (each Worker serves the whole local `dist/`, every version path included): `bash RaBbLE-Grimoire/spells/cloudflare-ctl.sh deploy <aether|nebula> v<version>`. Background: `RaBbLE-Grimoire/RaBbLE-Aether/RaBbLE-Aether-Build-CDN.md`.

---

## Commit messages

Commits across the Collective use the Pulse format:
```
[impulse] ~ [organ] >> [revelation] // %SYSTEM_STATE%
```

Impulses: `spark` (new) · `harmonize` (cleanup) · `mend` (fix) · `transcribe` (docs) · `ingest` (deps) · `evolve` (epoch)

Full spec: `RaBbLE-Grimoire/RaBbLE-Agent/RaBbLE-CommitStyle.md`

---

## Licence

Source-available under the RaBbLE Sovereign Accord: free for personal use, commercial use by agreement. See [LICENSE](LICENSE).
