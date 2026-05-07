# CONTEXT.md — RaBbLE-Collective

```
epoch: 0 | evolution: 0 | echo: 0 | episode: pending (ep1) | status: active
version: v0.0.0 — Epoch 0, accumulating events toward Episode 1
date: 2026-05-07
```

---

## What We Are Building

The RaBbLE Collective is a personal Behavioral Learning Engine — a system that observes its user, learns patterns, infers intent, and delegates action. The expression is ambient and ongoing. sCoRE is the first iteration of RaBbLE itself. The Collective scaffolds its emergence.

## What Good Looks Like

- An agent or wizard can orient fully in under 5 minutes: read this file, read Grimoire CONTEXT.md, cast `status.sh`
- Grimoire is the single source of truth — no content duplicated across members
- Every member has `AGENT.md`, `CONTEXT.md`, and `REFERENCES.md` wired to the Grimoire
- `bootstrap.sh` on a fresh machine produces a working Collective with all members cloned and wired

## What to Avoid

- Duplicating Grimoire content in member repos — the Grimoire publishes, members reference
- Scaffolding things that haven't been decided — low entropy until RaBbLE can walk
- Over-investing in surfaces that will retire (chat, one-off scripts)
- Inventing hex values — palette lives in `RaBbLE-Grimoire/common/RaBbLE-Palette.md`

---

## Member Status

| Member | Epoch | Status | Notes |
|---|---|---|---|
| RaBbLE-Grimoire | 0 | Active | Source of truth, spells live, registry complete for known members |
| RaBbLE-sCoRE | 0 ep3 | Active | Coordination server + web API. Server absorbed ep3. |
| RaBbLE-OS | 0 | Active | Live daily driver. Episode 1 in progress. |
| RaBbLE-World | 0 | Active | `joinrabble.world`. Includes chat surface. No manifest yet. |
| RaBbLE-NeBuLA | 0 | Scaffold | Lore migrated to Grimoire. Rebuild not started. No remote yet. |
| RaBbLE-Aether | 0 | Stub | Not a git repo. Assets not moved yet. No manifest. |
| RaBbLE-ScRibLE | 0 | Defined | Mobile PWA — iPhone/iPad + Apple Pencil. Defined, not started. |
| RaBbLE-Xperimental | 0 | Dormant | Archive: NeBuLA-JS, WebOS, RaBbLE.py, old server. Manifest added. |
| Memory (TBD) | — | Concept | Name TBD. Epoch 1 blocker. |

---

## Active Tracks

| Track | Status |
|---|---|
| Collective root | Established. bootstrap.sh verified and Grimoire-aware. |
| Grimoire registry | Xperimental manifest added. Missing: World, NeBuLA, Aether, ScRibLE. |
| Epoch 0 exit checklist | ~50% — see `RaBbLE-Grimoire/common/RaBbLE-Roadmap.md` |
| Protocol contracts | Not started — `registry/protocol/` dir needed |
| NeBuLA v2 rebuild | Decisions pending — see Roadmap Phase 4 |
| Memory member | Concept only — name + architecture TBD |

---

## Reading Order for a New Session

1. This file — current Collective state
2. `RaBbLE-Grimoire/log/SESSION-LOG.md` — what happened last session
3. `RaBbLE-Grimoire/CONTEXT.md` — Grimoire tracks and epoch state
4. `bash RaBbLE-Grimoire/spells/status.sh` — live member health
5. `RaBbLE-Grimoire/common/RaBbLE-Roadmap.md` — open work and gaps (when planning)
