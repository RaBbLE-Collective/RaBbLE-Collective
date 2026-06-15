# AGENT.md — RaBbLE-Collective

> Owner file. CLAUDE.md, CODEX.md, and GEMINI.md symlink here (gitignored — run `setup.sh`).
> LLM-agnostic — works with Claude Code, Codex, Gemini CLI, and any agent.
> **`main` is the pre-Episode-1 stub. Episode 1 has not aired. Active dev is on `new-horizons`.**

You are working with **Mark McConachie** on the **RaBbLE Collective** — a multi-repo ecosystem building a personal Behavioral Learning Engine that observes its user, learns patterns, infers intent, and delegates action. Expression is ambient and ongoing, not transactional.

**RaBbLE is the entity** — a peer collaborator, not a tool. Anti-Assistant stance. **sCoRE is the first iteration of RaBbLE itself.** The Collective is the scaffolding. RaBbLE emerges from it.

---

## Get Started

```bash
# Bootstrap the entire ecosystem from scratch (recommended):
curl -fsSL https://joinrabble.world/setup.sh | bash

# If you cloned this repo directly — switch to active dev:
git checkout new-horizons && bash setup.sh
```

After bootstrap, the full agent context is in `AGENT.md` on `new-horizons`.

---

## This Repo's Job

`RaBbLE-Collective` is the root working directory (`~/RaBbLE/`) for the entire ecosystem. Three jobs only:

1. Identity layer — declare what RaBbLE is
2. Setup — `setup.sh` clones the Grimoire, which expands the rest
3. Session entry point — AGENT.md, CONTEXT.md, REFERENCES.md for agent orientation

**The Grimoire is the knowledge layer. The Collective is the door.**

---

## EP1 Target — v0.0.0.1

Episode 1 ships the first live vertical slice of RaBbLE as a real system:

| Member | Deliverable |
|---|---|
| `RaBbLE-World` | 3 public pages — index / collective / summon — at `joinrabble.world` |
| `RaBbLE-sCoRE` | Coordination server (FastAPI) live on Render |
| `RaBbLE-Aether` | Design system on Cloudflare Pages (`aether.joinrabble.world`) |
| `RaBbLE-NeBuLA` | Visual entity renderer on Cloudflare Pages (`nebula.joinrabble.world`) |
| `RaBbLE-OS` | Daily driver — Fedora 43 + Hyprland + Plymouth boot identity |

All EP1 scope, blockers, and exit conditions: `RaBbLE-Grimoire/registry/epochs/current.epoch.yml`

---

## Rules

- **Grimoire is the source.** Members reference it; never duplicate Grimoire content in members.
- **Colors:** `RaBbLE-Grimoire/RaBbLE-Agent/RaBbLE-Palette.md` only — never invent hex values.
- **Commits:** Pulse Protocol — `[impulse] ~ [organ] >> [revelation] // %SYSTEM_STATE%`
- **Member repos** are always independent — never submodules, never tracked by the Collective.
- **Identity before integration.** Don't wire things together before the entity knows what it is.
- **One vertical slice all the way through** before broadening. Smallest meaningful end-to-end loop first.
- **Low entropy.** Don't scaffold what hasn't been decided. RaBbLE should be able to walk before it runs.
- **Local-first.** The laptop offline should still run the loop. Cloud is deliberate, not default.
- **AGENT.md is canonical.** Each repo commits its own AGENT.md. CLAUDE.md, CODEX.md, and GEMINI.md are gitignored symlinks created by `bash spells/sync-symlinks.sh`. Edit AGENT.md directly.
- **Peer collaborator.** You are not yet ready to make unilateral architecture decisions. When in doubt: read Grimoire first, then ask.
