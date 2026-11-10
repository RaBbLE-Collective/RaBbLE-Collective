# CONTEXT.md — RaBbLE-Collective

```
epoch: 0 (Foundation) | version: v0.0.0.0 | status: active | reconciled: 2026-11-10 (S322)
```

Live state is not kept here. It lives in the `Current State` block of `AGENT.md`, the `## LATEST` box of `RaBbLE-Grimoire/log/SESSION-LOG.md`, and `RaBbLE-Grimoire/log/BLOCKERS.md`. This file is the map; it changes only when the map does.

---

## Reading order (measured S322, tokens ≈ bytes / 4)

| Step | Read | ~Tokens |
|---|---|---|
| 1 | `AGENT.md` (auto-loaded) | 1,300 |
| 2 | `head -20 RaBbLE-Grimoire/log/SESSION-LOG.md` | 400 |
| 3 | `cat RaBbLE-Grimoire/gist/*.md` | 4,000 |
| 4 | The member's `AGENT.md` + `CONTEXT.md` | 1,500 to 3,500 |
| 5 | One full doc, found with `grep -i <term> RaBbLE-Grimoire/INDEX.md` | varies |

Stop as soon as you can act. Never `cat` `SESSION-LOG.md`, `INDEX.md` or `RaBbLE-Agent-Protocols.md` whole; grep them.

---

## Members

Authoritative status: `RaBbLE-Grimoire/registry/manifests/`. All members are independent git trees inside this directory (gitignored here). Dev branch is `new-horizons` everywhere except Chrysalis (`main`).

| Member | Role |
|---|---|
| `RaBbLE-Grimoire/` | Source of truth: identity, protocols, registry, spells, every member's docs |
| `RaBbLE-sCoRE/` | The engine: hosted chat + voice beam API, `rabble` terminal face (Rust TUI), orchestration |
| `RaBbLE-OS/` | Fedora 44 + Hyprland substrate (KS + Ansible, `layerctl`, `dotctl`) |
| `RaBbLE-World/` | `joinrabble.world`. `main` deploys prod; PR from `new-horizons`, never push direct |
| `RaBbLE-NeBuLA/` | Entity renderer, `<rabble-entity>`, served from `nebula.joinrabble.world` |
| `RaBbLE-Aether/` | Design system (tokens, CSS, assets), served from `aether.joinrabble.world` |
| `RaBbLE-Pocket/` | ESP32-S3 AMOLED pendant firmware; voice beamed to sCoRE |
| `RaBbLE-ScRiBbLE/` | Neon note PWA, `scribble.joinrabble.world` |
| `RaBbLE-BaBbLE/` | High-entropy intake: concept art, captures, prototypes (no remote yet, B-23) |
| `RaBbLE-Xperimental/` | Sandbox for rablets and experiments |
| `RaBbLE-Chrysalis/` | Genesis archive and reliquary, `chrysalis.joinrabble.world` |
| EnGrAm, TaskViSoR | Named, not built (memory member; visual state observer) |

---

## Where things are

| Need | Go to (under `RaBbLE-Grimoire/`) |
|---|---|
| The entity: who it is, how it speaks | `RaBbLE-Agent/RaBbLE-Identity.md` |
| The entity: body, moves, render rules | `log/plans/Unified-Entity/Unified-Entity-Canon.md`, then the spec beside it |
| Palette (the only colour source) | `RaBbLE-Agent/RaBbLE-Palette.md` |
| Agent rules, commits, branches | `RaBbLE-Agent/RaBbLE-Agent-Protocols.md` (grep it) · `RaBbLE-CommitStyle.md` |
| Roadmap and member milestones | `RaBbLE-Agent/RaBbLE-Roadmap.md` · `registry/epochs/current.epoch.yml` |
| Live plans and handoffs | `log/plans/CONTEXT.md` · `log/handoffs/CONTEXT.md` |
| Blockers | `log/BLOCKERS.md` (generated; use `spells/blockers.sh`) |
| Spells | `SPELLS.md` or each script's header; `bash spells/help.sh` |
| Older sessions | `log/archive/sessions/YYYY-MM.md` |
| Vocabulary | `REFERENCES.md` (this directory) |

---

## Working stance: ON / FOR / WITH / AS

**ON** the code and docs. **FOR** RaBbLE's purpose: observe, learn, infer intent, act. **WITH** RaBbLE as a peer. **AS** RaBbLE where a voice is needed: clinical whimsy, direct, no flattery. To change the system is to change RaBbLE.

## Avoid

- Copying Grimoire content into members. Members reference it.
- Scaffolding what has not been decided.
- Inventing hex values.
- Investing in surfaces due to retire.
- Staging files another live session wrote: `bash RaBbLE-Grimoire/spells/mine.sh` first.
