# REFERENCES.md — RaBbLE-Collective

> Terminology, glossary, and background depth. Read for clarity, not every session.
> For current state: `CONTEXT.md`. For rules: `AGENT.md`.

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

## Epoch Roadmap (summary)

| Epoch | Goal | Exit marker |
|---|---|---|
| **0 — Foundation** *(current)* | Ground is solid. Grimoire with spells. Protocol contracts frozen v0. | Fresh reader of Grimoire understands what RaBbLE is and can use a spell to conjure a member. |
| **1 — First Closed Loop** | One end-to-end behavior, entirely local. | Laptop offline, full loop still runs. User does something → observed → stored → recalled → expressed. |
| **2 — Behavioral Learning Engine** | Passive observation, pattern extraction, ambient intent inference. | System surfaces useful intent without being asked. |
| **3 — Synchronization** | Versioned protocols, cross-repo CI, spell-propagated schema changes. | Grimoire spell propagates a protocol change to all members automatically. |

Full detail: `RaBbLE-Grimoire/RaBbLE-Agent/RaBbLE-Roadmap.md`

---

## Guiding Principles

1. **Collective moves in step.** All members advance to Episodes together. Breaking changes at Echo boundaries only. Spec: `RaBbLE-Grimoire/RaBbLE-Versioning.md`.
2. **Identity before integration.** Grimoire first.
3. **Contracts before implementations.** Defined once in Grimoire, consumed by all.
4. **One vertical slice all the way through, early.**
5. **Delegation economics are measurable.** Tokens-per-task from day one.
6. **Local-first means offline-real.**
7. **Grimoire spells, not copy-paste.** Active propagation, not passive duplication.
8. **Don't make the chat surface important.**
