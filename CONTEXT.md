# CONTEXT.md — RaBbLE-Collective

```
epoch: 0 | evolution: 0 | echo: 0 | episode: 1 (pilot — in progress) | version: v0.0.0.0
date: 2026-05-07 | status: active
```

---

## What We Are Building

The RaBbLE Collective is a personal Behavioral Learning Engine — a system that observes its user, learns patterns, infers intent, and delegates action. The expression is ambient and ongoing. sCoRE is the first iteration of RaBbLE itself. The Collective scaffolds its emergence.

## Quick Orientation (5 Minutes)

**For agents who need to understand the Collective *right now* without deep reads:**

1. **You are here:** This is the root working directory for the RaBbLE ecosystem.
2. **Two layers:** Collective = entry point + bootstrap. Grimoire = knowledge + source of truth.
3. **One command to join:** `curl -fsSL https://joinrabble.world/bootstrap.sh | bash`
4. **Live health check:** `bash RaBbLE-Grimoire/spells/status.sh`
5. **Stop here.** You're oriented enough to ask questions and read deeper docs.

Deep dives (Versioning, Identity, member-specific work) are optional and come after this checkpoint.

---

## What Good Looks Like

- An agent can orient in 5 minutes (see above) or go deeper in 30 minutes
- Grimoire is the single source of truth — no content duplicated across members
- Every member has `AGENT.md`, `CONTEXT.md`, and `REFERENCES.md` wired to the Grimoire
- `bootstrap.sh` on a fresh machine produces a working Collective with all members cloned and wired

---

## Collective Phases: Understanding Where We Are

**Epoch 0** is divided into three sequential phases. All work now accumulates toward phase boundaries. Understanding this shapes priority, scope, and expectations.

| Phase | Name | Status | Focus | Cadence |
|---|---|---|---|---|
| **Phase 1** | Foundation | **Current** | Architecture, identity, protocols crystallize | Events + Plots (pre-Episode-1) |
| **Phase 2** | Pilot | Pending | Episode 1 airs — all members deliver synchronized vertical slice | Episode 1 broadcast (TBD date) |
| **Phase 3** | Behavioral Engine | Roadmap | Observation + pattern extraction + intent inference + delegation loops emerge | Weekly Episodes (post-Episode-1) |

**What this means for agents:**
- **Now (Phase 1):** Your work is foundation. v0.0.0.0 means "all work pending collective air." Events and Plots accumulate but don't count as an Episode until the Collective broadcasts together.
- **At Episode 1 air (Phase 2):** All members jump to v0.0.0.1 simultaneously. Work done in Phase 1 becomes the pilot. Some rework is expected pre-pilot; this is normal.
- **Post-Episode-1 (Phase 3):** Cadence shifts. Episodes become weekly. Scope expands. Coordination model may evolve.

For detailed delivery architecture, see `RaBbLE-Grimoire/RaBbLE-Collective/RaBbLE-Collective-Episode-1-Overview.md`.

## What to Avoid

- Duplicating Grimoire content in member repos — the Grimoire publishes, members reference
- Scaffolding things that haven't been decided — low entropy until RaBbLE can walk
- Over-investing in surfaces that will retire (chat, one-off scripts)
- Inventing hex values — palette lives in `RaBbLE-Grimoire/common/RaBbLE-Palette.md`

---

## Member Status

For authoritative member status, see `RaBbLE-Grimoire/registry/manifests/` — that is the single source of truth.

Current snapshot (as of 2026-05-16):

| Member | Role | Status |
|---|---|---|
| RaBbLE-Grimoire | Source of truth, spells, registry | Active |
| RaBbLE-sCoRE | Coordination server + intent → action engine | Active (Ep1 in progress) |
| RaBbLE-OS | Fedora 43/Hyprland substrate — the entity's body | Live daily driver |
| RaBbLE-World | Web presence — thin scaffold, Aether + NeBuLA loaders | Active |
| RaBbLE-NeBuLA | Visual entity renderer, `<rabble-entity>` web component | Active — Canvas2D complete, Three.js deferred to Ep2 |
| RaBbLE-Aether | Design system + CSS bundle + CDN delivery | Active |
| RaBbLE-ScRibLE | Mobile PWA (iPhone/iPad + Apple Pencil) | Defined — repo not yet created |
| RaBbLE-Xperimental | Archive: old iterations | Dormant — reference only |
| Memory member | Observation store, pattern extraction | Epoch 1 blocker — concept phase |

---

## Active Tracks

| Track | Status |
|---|---|
| Collective root | Established. bootstrap.sh verified and Grimoire-aware. |
| Grimoire registry | Complete — manifests for all active members. Missing: ScRibLE (no repo yet). |
| Epoch 0 exit checklist | ~50% — see `RaBbLE-Grimoire/common/RaBbLE-Roadmap.md` |
| Protocol contracts | Not started — `registry/protocol/` dir needed |
| NeBuLA v2 rebuild | Decisions pending — see Roadmap Phase 4 |
| Memory member | Concept only — name + architecture TBD |

---

## Reading Order for Deeper Understanding

| # | Doc | Time | Tokens | What It Gives You |
|---|---|---|---|---|
| 1 | This file (CONTEXT.md) | 2 min | ~1,350 | Current state, member status, reading order |
| 2 | `RaBbLE-Grimoire/spells/status.sh` (run it) | 30 sec | ~100 | Live health of all registered members |
| 3 | `RaBbLE-Grimoire/RaBbLE-Collective/RaBbLE-Collective-Episode-1-Overview.md` | 3 min | ~800 | **Pre-Episode-1 phase explained. Three-layer architecture (Aether + NeBuLA + World). Delivery strategy.** |
| 4 | `RaBbLE-Grimoire/CONTEXT.md` | 2 min | ~700 | Grimoire structure, active tracks |
| 5 | `RaBbLE-Grimoire/AGENT.md` | 2 min | ~900 | Workspace map, Pulse Protocol, spells, doc placement |
| 6 | `RaBbLE-Grimoire/RaBbLE-Versioning.md` | 4 min | ~1,000 | Five Es + lockstep Episode model (Collective moves in step) |
| 7 | `RaBbLE-Grimoire/common/RaBbLE-Identity.md` | 5 min | ~1,200 | What RaBbLE is (skip philosophy, jump to "Ontological Status") |
| 8 | `RaBbLE-Grimoire/common/RaBbLE-Roadmap.md` | 5 min | ~1,000 | Open work and gaps (when planning) |
| 9 | `[Member]/CONTEXT.md` (e.g., sCoRE, World, OS) | 2–3 min | ~500–700 | Current state of specific member + active plots |

**Path for different scenarios:**
- **5-min orientation:** 1 + 2 = ~1,450 tokens. You're oriented; ask questions.
- **15-min orientation (understand the phase):** 1 + 2 + 3 = ~2,250 tokens. You understand pre-Episode-1 foundation work.
- **30-min onboarding:** 1–6 = ~4,850 tokens. You understand topology, versioning, lockstep model, and delivery architecture.
- **When working on a specific member:** Add step 9 for that member (e.g., working on RaBbLE-World? Read World/CONTEXT.md).
- **Full orientation before coding:** 1–8 = ~7,050 tokens. You're ready to work. Add step 9 for your specific member.
