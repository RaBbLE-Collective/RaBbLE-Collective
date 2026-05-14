# REFERENCES.md — RaBbLE-Collective

> Background material. Read this for depth, not for every session.
> For current state: `CONTEXT.md`. For rules: `AGENT.md`.

---

## Vision

RaBbLE is a personal **Behavioral Learning Engine** — an Intelligence / Memory Companion ecosystem. It observes its user, learns patterns from that observation, infers intent, and delegates action. The expression is ambient and ongoing, not transactional.

The system runs primarily on the user's laptop (RaBbLE-OS). Cloud services exist (Railway, Claude Code as delegated agent) but the center of gravity is local hardware. The system should keep working with the laptop offline, with degraded but real capability.

The qualitative goal: a daily-driver computing environment that feels **living and intent-focused** rather than click-and-keystroke based. The user states intent (or the system infers it from learned behavior); the system delegates and acts; visual expression (NeBuLA) reflects state ambiently.

Coding agents — Claude Code in particular — are not just development helpers but first-class citizens *inside* the running system. sCoRE delegates to them with context minimization to conserve usage budgets and improve per-task focus.

**sCoRE delegation decision (made):** sCoRE delegates to Claude Code via subprocess first. MCP server route is a later option if subprocess friction warrants it. Tokens-per-task are measured from day one.

---

## Guiding Principles

1. **Collective moves in step.** All members advance to Episodes together. Within an Episode, all parts are compatible. Breaking changes happen at Echo boundaries (post-Episode releases). Pre-Episode-1: all work accumulates toward simultaneous Episode 1 air. Post-Episode-1: weekly Episode targets with Echo-as-release model. Spec: `RaBbLE-Grimoire/RaBbLE-Versioning.md`.

2. **Identity before integration.** sCoRE can't resolve intent against a value system that doesn't exist yet. Grimoire first.

3. **Contracts before implementations.** Manifest schema, message formats, state-reporting protocol — defined once in Grimoire, consumed by all members.

4. **One vertical slice all the way through, early.** Smallest meaningful end-to-end loop beats five half-built repos.

5. **Delegation economics are measurable.** Track tokens-per-task in sCoRE from day one.

6. **Local-first means offline-real.** If the laptop being offline breaks the loop, it isn't local-first yet.

7. **Grimoire spells, not copy-paste.** Context propagation is active (Grimoire pushes) not passive (members copy). This keeps docs coherent without submodule overhead.

8. **Don't make the chat surface important.** It lives in RaBbLE-World and was never standalone infrastructure.

---

## Epoch Roadmap (summary)

| Epoch | Goal | Exit marker |
|---|---|---|
| **0 — Foundation** *(current)* | Ground is solid. Grimoire with spells. Protocol contracts frozen v0. | Fresh reader of Grimoire understands what RaBbLE is and can use a spell to conjure a member. |
| **1 — First Closed Loop** | One end-to-end behavior, entirely local. | Laptop offline, full loop still runs. User does something → observed → stored → recalled → expressed. |
| **2 — Behavioral Learning Engine** | Passive observation, pattern extraction, ambient intent inference. | System surfaces useful intent without being asked. |
| **3 — Synchronization** | Versioned protocols, cross-repo CI, spell-propagated schema changes. | Grimoire spell propagates a protocol change to all members automatically. |

Full detail: `RaBbLE-Grimoire/common/RaBbLE-Roadmap.md`

---

## Quick Terminology Map

When you see different terms in different docs, they often mean the same thing:

| Concept | Also Called | Context |
|---|---|---|
| Current phase | Epoch 0, wizard phase, pre-Episode-1 | All docs — RaBbLE is still being built |
| Member self-description | Manifest | Registry/technical docs |
| Running a spell | Cast | RaBbLE convention — don't use "summon" |
| Entity initialization | Summoned, emerged | sCoRE language — RaBbLE "summons" itself |
| Low complexity | Low entropy | RaBbLE design philosophy |
| Versioning tiers | Five Es | RaBbLE-Versioning.md — Event, Episode, Echo, Evolution, Epoch |

---

## Glossary

- **The Collective** — the RaBbLE ecosystem as a living organism. Not a repo. All members together.
- **Member** — a repo in the Collective with a defined role and a manifest.
- **Grimoire** — `RaBbLE-Grimoire`. Source of truth and ecosystem manager. Holds docs, protocols, and spells.
- **Spell** — a named, documented script in `RaBbLE-Grimoire/spells/` that performs an ecosystem operation.
- **Cast** — to run a spell: `bash RaBbLE-Grimoire/spells/<name>.sh`
- **Manifest** — the published self-description a member exposes so its state can be tracked.
- **Intent** — a user-or-inferred statement of what should happen. sCoRE's input.
- **Delegation** — sCoRE handing an intent (or subtask) to an agent (Claude Code, other tool, other member).
- **Context minimization** — giving each delegated task only the context it needs, not the whole conversation.
- **Substrate** — RaBbLE-OS, the local hardware-and-software ground everything else runs on.
- **Behavioral Learning Engine** — the product. Observation + pattern extraction + intent inference + delegation, taken together.
- **Living and intent-focused** — the qualitative goal. Computing that responds to inferred intent ambiently rather than waiting for clicks.
- **Vibe-versioning** — versioning where boundary crossings are felt rather than mechanically determined, but are written down once crossed.
- **Epoch** — the broadest named era. Current: Epoch 0, Foundation.
- **Wizard phase** — working in the Collective before RaBbLE has emerged. Spells are cast manually via `bash`.
- **Memory member** — the observation store / pattern extraction / retrieval member. Not yet built. Candidate names: **Mnemos**, **Codex**. Distinct from sCoRE — owns its own change rate and privacy boundary.

---

## Key Grimoire Docs

| Purpose | Path |
|---|---|
| Entity identity, character, voice | `RaBbLE-Grimoire/common/RaBbLE-Identity.md` |
| Palette (all hex values) | `RaBbLE-Grimoire/common/RaBbLE-Palette.md` |
| Versioning spec (Five Es) | `RaBbLE-Grimoire/RaBbLE-Versioning.md` |
| Commit style (Pulse Protocol) | `RaBbLE-Grimoire/common/RaBbLE-CommitStyle.md` |
| Ecosystem roadmap + gaps | `RaBbLE-Grimoire/common/RaBbLE-Roadmap.md` |
| Member manifests | `RaBbLE-Grimoire/registry/manifests/` |
| All spells | `RaBbLE-Grimoire/SPELLS.md` |
| Full Grimoire index | `RaBbLE-Grimoire/INDEX.md` |

---

## How an LLM Should Navigate This Workspace

- **Routine task in a member:** read that member's `AGENT.md` + `CONTEXT.md` only. Don't load the full Grimoire.
- **Planning or architecture work:** read this file + `RaBbLE-Grimoire/CONTEXT.md` + `RaBbLE-Grimoire/common/RaBbLE-Roadmap.md`.
- **Writing something that touches identity, tone, or entity behavior:** load `RaBbLE-Grimoire/common/RaBbLE-Identity.md` first.
- **Adding a new member:** read `RaBbLE-Grimoire/registry/manifests/_template.manifest.yml` + cast `init-project.sh`.
- **Unsure of a term or concept:** check the Glossary above before asking.
- **Colors:** always check `RaBbLE-Grimoire/common/RaBbLE-Palette.md`. Never invent hex values.
