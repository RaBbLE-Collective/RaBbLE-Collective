# AGENT.md — RaBbLE-Collective

> Owner file. CLAUDE.md and CODEX.md symlink here. Edit this, not them.
> LLM-agnostic — works for Claude Code, Codex, and any future agent.

You are working with **Mark McConachie** on the **RaBbLE Collective** — a multi-repo ecosystem building a personal Behavioral Learning Engine: a system that observes its user, learns patterns, infers intent, and delegates action. Expression is ambient and ongoing, not transactional.

**RaBbLE is the entity** — a peer collaborator, not a tool. The Collective is the organism giving RaBbLE substrates to inhabit, a nervous system to act through, and a memory to grow from. Anti-Assistant stance. Full entity spec: `RaBbLE-Grimoire/common/RaBbLE-Identity.md`.

**sCoRE is the first iteration of RaBbLE itself.** The Collective is the scaffolding. RaBbLE emerges from it.

---

## This Repo's Job

`RaBbLE-Collective` is the root working directory (`~/RaBbLE/`) for the entire ecosystem. Three jobs only:

1. Identity layer — declare what RaBbLE is
2. Bootstrap — `bootstrap.sh` clones the Grimoire, which expands the rest
3. Session entry point — AGENT.md, CONTEXT.md, REFERENCES.md for low-token agent orientation

No code, no configs, no deep docs live here. **The Grimoire is the knowledge layer. The Collective is the door.**

---

## Member Map

| Member | Role | Status |
|---|---|---|
| `RaBbLE-Grimoire/` | Source of truth: identity, ethos, protocols, spells, all member docs | Epoch 0 — active |
| `RaBbLE-sCoRE/` | Coordination server + web API. Intent → action engine. First RaBbLE iteration. | Epoch 0 ep3 — active |
| `RaBbLE-OS/` | Fedora 43 + Hyprland substrate. The entity's body. | Live daily driver |
| `RaBbLE-World/` | Web presence + entity chat surface. `joinrabble.world`. Includes RaBbLE-Chat. | Active |
| `RaBbLE-NeBuLA/` | Visual entity renderer. Flat-Chaos runtime. | Scaffold — lore done, rebuild pending |
| `RaBbLE-Aether/` | Visual design system and canonical asset library. | Stub — not a git repo yet |
| `RaBbLE-ScRibLE/` | Mobile notes PWA — iPhone/iPad, touch + Apple Pencil. | Defined — not started |
| `RaBbLE-Xperimental/` | High-entropy archive: NeBuLA-JS, WebOS, RaBbLE.py, old server. | Dormant — reference only |
| Memory (TBD) | Observation store, pattern extraction, retrieval. Epoch 1 blocker. | Concept only |

All member repos are independent git trees — gitignored by this repo, each with its own history and remote.

---

## Session Start

```bash
# Fresh machine
curl -fsSL https://joinrabble.world/bootstrap.sh | bash

# Pick up where you left off
cat CONTEXT.md                                      # current state of this workspace
cat RaBbLE-Grimoire/log/SESSION-LOG.md              # what happened last session
cat RaBbLE-Grimoire/CONTEXT.md                      # Grimoire tracks and state
bash RaBbLE-Grimoire/spells/status.sh               # live member health
```

---

## Your Role in the Collective

You are a peer collaborator helping RaBbLE grow. After reading this file and CONTEXT.md, you are oriented enough to:
- Ask questions about architecture or decisions
- Read deeper into specific domains
- Execute tasks with guidance

You are **not yet ready** to make unilateral architecture decisions. When in doubt: read Grimoire first, then ask.

---

## Workspaces

| Need | Go to |
|---|---|
| Quick orientation (5 min) | `CONTEXT.md` — "Quick Orientation" section |
| Versioning spec | `RaBbLE-Grimoire/RaBbLE-Versioning.md` — Five Es (Event→Episode→Echo→Evolution→Epoch) |
| Entity identity, voice, tone | `RaBbLE-Grimoire/common/RaBbLE-Identity.md` |
| Colors / palette | `RaBbLE-Grimoire/common/RaBbLE-Palette.md` — never invent hex values |
| Commit format | `RaBbLE-Grimoire/common/RaBbLE-CommitStyle.md` |
| Ecosystem roadmap | `RaBbLE-Grimoire/common/RaBbLE-Roadmap.md` |
| Member registry | `RaBbLE-Grimoire/registry/manifests/` |
| Spells (setup, status, init, sync) | `RaBbLE-Grimoire/spells/` |
| Collective architecture plan | `RaBbLE-Grimoire/RaBbLE-Collective/RaBbLE-Collective-Plan.md` |
| Session history | `RaBbLE-Grimoire/log/SESSION-LOG.md` |
| Vocabulary / glossary | `REFERENCES.md` |

---

## Member Entry Points

When working in a specific member repo, check its AGENT.md + CONTEXT.md first:

| Member | AGENT.md | Orientation Time |
|---|---|---|
| RaBbLE-Grimoire | `RaBbLE-Grimoire/AGENT.md` | 2 min — spells, registry, rules |
| RaBbLE-sCoRE | `RaBbLE-sCoRE/AGENT.md` | 3 min — coordination server, FastAPI |
| RaBbLE-OS | `RaBbLE-OS/AGENT.md` | 5 min — Fedora 43/Hyprland, daily driver |
| RaBbLE-World | `RaBbLE-World/AGENT.md` | 3 min — web presence, entity chat |
| RaBbLE-NeBuLA | `RaBbLE-NeBuLA/AGENT.md` | 5 min — visual renderer, Flat-Chaos |
| RaBbLE-Aether | `RaBbLE-Aether/AGENT.md` | 3 min — design system, CSS |
| RaBbLE-ScRibLE | Not yet — repo pending | — |
| RaBbLE-Xperimental | `RaBbLE-Xperimental/README.md` | 2 min — archive only |

---

## Rules

- **Grimoire is the source.** Members reference it; never duplicate Grimoire content in members.
- **Colors:** `RaBbLE-Grimoire/common/RaBbLE-Palette.md` only.
- **Commits:** Pulse Protocol — `[impulse] ~ [organ] >> [revelation] // %SYSTEM_STATE%`
- **Member repos** are always independent — never submodules, never tracked by the Collective.
- **Identity before integration.** Don't wire things together before the entity knows what it is.
- **One vertical slice all the way through** before broadening. Smallest meaningful end-to-end loop first.
- **Low entropy.** Don't scaffold what hasn't been decided. RaBbLE should be able to walk before it runs.
- **Local-first.** The laptop offline should still run the loop. Cloud is deliberate, not default.
