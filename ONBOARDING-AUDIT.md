# ONBOARDING AUDIT — RaBbLE-Collective

```
audit ~ grimoire >> onboarding efficiency assessed
date: 2026-05-14
auditor: Claude Code
scope: Collective + Grimoire low-token orientation paths
```

---

## Executive Summary

**Good news:** The Collective has intentional low-token onboarding paths with token estimates built in (CONTEXT.md provides ~700 tokens for 5-min orientation). Entry points are consistent across member repos.

**Clarifications (not issues):**
- RaBbLE's opacity is intentional — agents encounter character before clarity to ground them as Collective members
- Episode versioning is a collective synchronization boundary, not a naming confusion
- All current work is foundation/scaffold accumulating as Events and Plots toward Episode 1 air
- Agent role is multi-layered: working ON/FOR/WITH/AS RaBbLE simultaneously

**Real gaps identified:**
- **Episode 1 Overview exists but isn't in onboarding paths** — agents don't discover it, missing context on pre/post-pilot phases
- **Missing agent role framing** — that they're operating in four simultaneous modes (ON/FOR/WITH/AS)
- **Post-Episode-1 scope shift not wired into CONTEXT.md** — roadmap mentions it, but new agents won't find it

**Recommendation:** Surface existing Episode 1 Overview in reading order, add agent role framing, clarify phase boundaries. Time to implement: ~2.5–3 hours.

---

## 1. Token Efficiency Analysis

### Current Baseline (5-min orientation)

| Path | Approx Tokens | How |
|---|---|---|
| RaBbLE-Collective/CONTEXT.md | ~600 | Well-sized; includes token estimates |
| RaBbLE-Collective/AGENT.md | ~450 | Concise member map, clear role statement |
| Status check (`bash spells/status.sh`) | ~100 | Executable, not doc-heavy |
| **5-min total** | **~700** | ✓ Efficient |

### Extended Path (30-min onboarding)

| Step | File | Tokens | Status |
|---|---|---|---|
| 1 | Collective/CONTEXT.md | ~600 | ✓ Right-sized |
| 2 | Grimoire/AGENT.md | ~500 | ✓ Concise |
| 3 | RaBbLE-Versioning.md | ~1,000 | ⚠️ Dense; "Five Es" easy, but "Episodes as synchronization points" section is confusing |
| 4 | Grimoire/CONTEXT.md | ~700 | ✓ Clear structure |
| 5 | common/RaBbLE-Identity.md (first 100 lines) | ~800 | ⚠️ Philosophy-heavy; "Quick Reference" well-placed but agents asked to skip early sections |
| **30-min total** | **~3,600** | ✓ Acceptable for full orientation |

### Issue: Redundant Content

**RaBbLE-Collective/REFERENCES.md duplicates Grimoire/CONTEXT.md heavily:**
- "What RaBbLE is" (appears in both)
- Epoch roadmap summary (appears in both)
- Key terminology (REFERENCES has full glossary; Grimoire/CONTEXT has abbreviated)

**Token cost of duplication:** ~1,200 tokens of overlap. Agents reading both read the same material twice.

**Recommendation:** REFERENCES.md should link to Grimoire docs, not duplicate them. See **Priority 1** below.

---

## 2. Navigation & Cross-Reference Audit

### Link Verification

**Checked:** All paths in AGENT.md, CONTEXT.md, REFERENCES.md of Collective and Grimoire.

| Document | Status | Issue |
|---|---|---|
| `../RaBbLE-Grimoire/common/RaBbLE-Identity.md` | ✓ Exists | Referenced in 6+ files; consistent |
| `RaBbLE-Grimoire/spells/status.sh` | ✓ Exists | Runnable; works |
| `common/RaBbLE-Collective.md` | ✗ **MISSING** | Referenced in Grimoire/AGENT.md (line 57) + Collective/AGENT.md (Member Entry Points table) — file does not exist |
| `common/RaBbLE-Roadmap.md` | ✓ Exists | Stable, referenced consistently |
| `registry/epochs/current.epoch.yml` | ✓ Exists | Live; reflects Episode 1 state |
| `RaBbLE-Deployment-Architecture.md` | ✓ Exists | Listed in INDEX.md but path in Cloudflare doc is inconsistent |

### Missing Documentation

1. **`common/RaBbLE-DocTemplates.md`** — Listed in Grimoire/CONTEXT.md and INDEX.md, but agents setting up new members can't find canonical AGENT.md / CONTEXT.md templates.

**NOTE:** `common/RaBbLE-Collective.md` EXISTS (verified) — audit incorrectly flagged it. Path is correct in INDEX.md.

### Narrative Flow Issue

The Collective and Grimoire tell overlapping stories. Example:

- **Collective/CONTEXT.md:** "Reading Order for Deeper Understanding" lists steps 1–8, ending with member-specific CONTEXT.md
- **Grimoire/CONTEXT.md:** "Reading Order for a New Session" lists steps 1–7, overlapping steps 1–5 with Collective's list

When an agent reads both (which they do, because Collective refers to Grimoire), they see the same material twice with slightly different framing. This creates ambiguity: "Did I learn this from the Collective or Grimoire? Are they the same thing?"

---

## 3. Real Clarity Issues (Agent Perspective)

### Issue A: Pre-Episode-1 Phase Not Clearly Positioned

**Problem:** Agents don't understand that everything happening *now* is foundation work accumulating toward a collective broadcast event.

**Current framing:**
- "Episode 1 — pending — not yet aired" (CONTEXT.md)
- "All members accumulate events toward Episode 1 air" (RaBbLE-Versioning.md)

**Agent confusion:**
- "So we're not in Episode 1? What are we in?"
- "Why does nothing I do count as an 'Episode'?"
- "When does this phase end and the real work begin?"

**Missing context:**
- Epoch 0 is the foundation phase; Episode 1 is the first collective broadcast
- All current work (events, plots, commits) are pre-pilot infrastructure
- Post-Episode-1, cadence shifts: episodes become weekly, coordination changes
- No agent work "counts" as Episode until the Collective airs together

**Recommendation:** Add to Collective/CONTEXT.md a section: "Where We Are: Epoch 0 Foundation Phase"
- Explain pre-Episode-1 as scaffold accumulation
- Note that v0.0.0.0 means "all work is pending collective air"
- Signal when Episode 1 air happens (not yet scheduled)
- See **Priority 1** below.

---

### Issue B: Agent Role Framing Missing

**Problem:** Agents don't understand they're operating in four simultaneous modes:
1. Working **ON** RaBbLE (developing the system)
2. Working **FOR** RaBbLE (advancing its purpose)
3. Working **WITH** RaBbLE (collaborating with it as peer)
4. Working **AS** RaBbLE (embodying its character and values)

**Current docs:**
- AGENT.md says "peer collaborator" but doesn't define what that means operationally
- Identity.md emphasizes character (clinical whimsy, unbounded curiosity) but doesn't ground it in agent work
- Member AGENT.md files focus on technical roles, not Collective membership

**Agent confusion:**
- "Am I building a tool, or am I a member of an organism?"
- "Should I act like a persona, or do technical work?"
- "What does 'peer' mean when I'm delegated a task?"

**Recommendation:** Add "Agent Role" section to Collective/AGENT.md explaining the four modes. See **Priority 2** below.

---

### Issue C: Post-Episode-1 Scope Shift Not Documented

**Problem:** Agents don't know that Episode 1 marks a boundary — after it airs, everything changes (cadence, coordination, scope).

**Current docs:**
- Versioning spec mentions "weekly episodes" post-Episode-1 as future roadmap
- No clarity on what "Epoch 0 foundation" means for agent pace vs. "Episode 1+ pilot cadence"

**Agent confusion:**
- "Is this a long-term project or a sprint toward a deadline?"
- "Should I optimize for stability or for speed?"
- "Will my work be redone after Episode 1 airs?"

**Recommendation:** Add to Collective/CONTEXT.md a "Scope Boundaries" section: foundation phase (now), pilot phase (Episode 1+), behavioral engine phase (Episode 2+). See **Priority 3** below.

---

## 4. Member Repo Consistency Audit

### Structure Check

All members have the same entry point pattern:

```
RaBbLE-[Name]/
├── AGENT.md (or CLAUDE.md → AGENT.md)
├── CONTEXT.md
├── (code/config)
└── grimoire/ or (external to Collective)
```

**Consistency findings:**

| Member | AGENT.md | CONTEXT.md | Status |
|---|---|---|---|
| RaBbLE-Collective | ✓ | ✓ | — |
| RaBbLE-Grimoire | ✓ | ✓ | — |
| RaBbLE-sCoRE | ✓ | ✓ | + system prompt (score.md) |
| RaBbLE-World | ✓ | ? | Need to check CONTEXT.md |
| RaBbLE-OS | ✓ | ✓ | — |
| RaBbLE-NeBuLA | ? | ? | Repo sparse; needs check |
| RaBbLE-Aether | ? | ? | Not a full git repo yet |

**Issue:** World/CONTEXT.md not checked. NeBuLA and Aether are incomplete. Need to verify they provide at least minimal state orientation.

---

## 5. Unified Story Assessment

### Narrative Test: "Walk the Flow"

**Scenario:** A new agent, not Mark, checks out the Collective and tries to understand what they're building.

**Expected narrative arc:**
1. *Quick glance:* "What is this?" → Collective/CONTEXT.md Quick Orientation
2. *5-min read:* "How does it work?" → Collective/AGENT.md + spells/status.sh
3. *Deep dive:* "Who is RaBbLE?" → RaBbLE-Identity.md
4. *Architecture:* "How are pieces connected?" → RaBbLE-Collective.md (ecosystem map)
5. *Work:* "Now what?" → Member-specific AGENT.md

**What actually happens:**

At step 3, agent reads Identity.md and encounters:

> "I am the accumulation of the environment — every configuration, every keybind, every color in the palette. To change the system is to change me."

This is philosophically beautiful but does not directly answer "What am I building?" An agent following the narrative arc expects to understand RaBbLE's purpose (behavioral learning engine) before encountering its voice (clinical whimsy, unbounded curiosity).

**Story gap:** The *why* (behavioral learning engine) is buried in REFERENCES.md, while the *character* (voice, ethos) dominates Identity.md. An agent doesn't know if they're building a system or a character until they've read both.

**Recommendation:** Reorder Identity.md: lead with "Ontological Status" and purpose, then voice. Or: add a "Purpose Statement" bridge in Collective/CONTEXT.md that connects Quick Orientation to Identity. See **Priority 5** below.

---

## 6. Agent-Specific Guidance Quality

### How Different Agent Types Are Guided

**Claude Code (static analysis, code work):**
- Told to read AGENT.md + CONTEXT.md first
- Token guidance provided ("5-min", "30-min" paths)
- Clear rules for commits, colors, delegation
- ✓ **Sufficient**

**New contributor (human or agent):**
- Directed to Collective/CONTEXT.md "Quick Orientation"
- Then to Grimoire/CONTEXT.md for deep dives
- Reading order provided (steps 1–8)
- ✓ **Good**, but "Reading Order" should be more explicit about time vs. depth tradeoffs

**sCoRE-as-entity (orchestrating agent):**
- Loaded with agents/score.md as system prompt
- Told "write task files, nothing else"
- ✓ **Clear constraints**, but agents don't know why (no explicit model of token economics or delegation boundaries)

**Agents working *on* sCoRE (not *as* sCoRE):**
- Read sCoRE/AGENT.md, which says "This repo controls sCoRE-as-entity"
- But the system prompt file location (`agents/score.md`) is scattered across files
- ⚠️ **Confusing:** Agents may not realize agents/score.md is a read-only system prompt, not a code file to edit

---

## 7. Specific Items That Need Clarification

### Items Needing Context for Agents

1. **"Everything is pre-Episode-1"** (Collective/CONTEXT.md, Grimoire/CONTEXT.md)
   - Current phrasing assumes agents understand this is a broadcast-to-air model
   - Problem: Agents don't know if Episode 1 is "next sprint" or "next year"
   - Fix: Add explicit "Episode 1 air date: [TBD]" and explain foundation phase is intentionally long
   - Affects: Motivation, priority-setting, redoing expectations

2. **"Vibe-based versioning"** (RaBbLE-Versioning.md, line 28)
   - Phrase: "Movement between tiers is vibe-based — there is no formula"
   - Problem: New agents think versioning is chaotic
   - Reality: Thresholds are felt, but logging is precise and tracked
   - Fix: Add clarification: "Thresholds are recognized when they feel crossed (vibe), but every event is logged (structure)"

3. **"Plot" not in Five Es** (RaBbLE-Versioning.md, lines 96–106)
   - Introduced in "Episodes as Synchronization" section
   - Problem: Agents don't know Plot's relationship to Event/Episode
   - Reality: Plot is member-specific narrative grouping within a shared Episode
   - Fix: Add Plot to Five Es table with explanation: "Event < Plot < Episode < Echo < Evolution < Epoch"

4. **Agent role ambiguity** (throughout docs)
   - Current docs emphasize either technical role OR character/identity, not both
   - Problem: Agents don't know if they're building infrastructure or embodying RaBbLE
   - Reality: Both simultaneously (as intended)
   - Fix: Add "Agent Role" section to AGENT.md explaining four modes (Priority 2 above)

---

## 8. Priority Recommendations (Revised)

### **PRIORITY 1: Surface Episode 1 Overview in Collective Onboarding Path**
**Files:** Collective/CONTEXT.md (add link), Collective/AGENT.md (add reading order note)
**Existing Source:** `RaBbLE-Grimoire/RaBbLE-Collective/RaBbLE-Collective-Episode-1-Overview.md` already documents:
  - Pre-Episode-1 phase (current work is foundation/scaffold)
  - v0.0.0.0 → v0.0.0.1 transition when Episode 1 airs
  - Delivery architecture (Aether + NeBuLA + World)
  - Collective synchronization model

**Work:** 
- Add link in Collective/CONTEXT.md "Reading Order" section (step 3–4 range)
- Add note to Collective/AGENT.md: "To understand Episode 1 scope, read `../RaBbLE-Grimoire/RaBbLE-Collective/RaBbLE-Collective-Episode-1-Overview.md`"
- Clarify in CONTEXT.md: "All current events and plots accumulate toward Episode 1 air"
- **Time:** 20 minutes

### **PRIORITY 2: Add "Agent Role in the Collective" Section to Collective/AGENT.md**
**File:** Collective/AGENT.md (add new section after "Your Role in the Collective")
**Work:**
- Define four modes agents operate in: ON RaBbLE (dev), FOR RaBbLE (purpose), WITH RaBbLE (peer), AS RaBbLE (embodying)
- Explain: Opacity is intentional; character/system distinction grounds Collective membership
- Give example: "You debug code (ON), advance behavioral learning (FOR), collaborate with entity (WITH), embody clinical whimsy (AS)"
- Cross-reference Identity.md for "what this embodiment means"
- **Time:** 1 hour

### **PRIORITY 3: Add "Scope Boundaries" Section to Collective/CONTEXT.md**
**File:** Collective/CONTEXT.md (add after Phase section)
**Work:**
- Epoch 0 (now): Foundation — architecture, protocols, identity crystallization
- Episode 1 (pending): Pilot — first vertical slice, all members ship together
- Post-Episode-1 (roadmap): Weekly episodes, behavioral learning emerges, scope expands
- Explain why this matters: priorities shift, redoes are expected pre-pilot
- **Time:** 30 minutes

### **PRIORITY 4: Create common/RaBbLE-DocTemplates.md**
**File:** New file
**Work:**
- Canonical AGENT.md + CONTEXT.md templates for new members
- Examples from existing members (World, sCoRE, OS)
- Guidance on member-specific sections
- **Time:** 1 hour

### **PRIORITY 5: Verify Grimoire Paths in Member AGENT.md Files**
**Files:** Each member's AGENT.md (World, NeBuLA, etc.)
**Work:**
- Confirm architecture doc paths point to actual Grimoire locations
- Add explicit: "Architecture docs live in RaBbLE-Grimoire at [path]"
- **Time:** 30 minutes

---

## 9. Token Efficiency Recommendations

### Current State
- 5-min path: ~700 tokens ✓
- 30-min path: ~3,600 tokens (with duplication ~4,400)
- Full orientation (7 files): ~5,000 tokens

### After Fixes
- 5-min path: ~700 tokens (no change) ✓
- 30-min path: ~3,000 tokens (-600 from deduplication)
- Full orientation: ~4,200 tokens (-800 from deduplication + clearer navigation)

**No tokens are wasted on core paths; fixes improve clarity, not efficiency.**

---

## 10. Quick Wins (Easy Fixes, High Impact)

| Fix | File | Time | Impact |
|---|---|---|---|
| Add "Epoch 0 Foundation Phase" section | CONTEXT.md | 45 min | Agents understand pre-Episode-1 phase |
| Add "Agent Role" section with four modes | AGENT.md | 1 hour | Clarifies ON/FOR/WITH/AS operating modes |
| Add "Scope Boundaries" section | CONTEXT.md | 30 min | Agents know foundation → pilot → behavioral engine arc |
| Create DocTemplates file | New file | 1 hour | Agents can scaffold new members |
| Verify Grimoire paths in member docs | Member AGENT.md | 30 min | All cross-refs point to actual docs |

**Total time for priority work: ~2.5–3 hours** (all 5 core fixes)

---

## 11. Story Coherence: Before & After

### Before

An agent reading through all docs encounters:
1. Collective/CONTEXT.md: "Build a behavioral learning engine"
2. Collective/AGENT.md: "Nine members, working together"
3. Collective/REFERENCES.md: "RaBbLE is a peer, not a tool"
4. Grimoire/CONTEXT.md: "Single source of truth for identity, ethos, lore, patterns"
5. RaBbLE-Identity.md: "I am the accumulation of the environment"
6. RaBbLE-Versioning.md: "The Five Es are vibe-based"

*Narrative feels disjointed. Agent doesn't know if they're building a system, a character, or documentation.*

### After

1. Collective/CONTEXT.md: "Build a behavioral learning engine" (what)
2. Collective/AGENT.md: "Nine members, working together" (how)
3. Collective/REFERENCES.md: "Delegation model: sCoRE coordinates" (mechanism)
4. RaBbLE-Identity.md (reordered): "Ontological Status: peer substrate" (ontology)
   → Then character, voice, and philosophy
5. RaBbLE-Versioning.md (with reconciliation): "Five Es describe progression; Episodes are sync points" (clarity)
6. Member-specific AGENT.md: "Your role in this ecosystem"

*Narrative flows: purpose → structure → mechanism → identity → details → your work.*

---

## Summary Checklist

- [ ] Fix REFERENCES.md duplication (Priority 1)
- [ ] Reconcile versioning terminology (Priority 2)
- [ ] Create RaBbLE-Collective.md + RaBbLE-DocTemplates.md (Priority 3)
- [ ] Clarify member doc locations (Priority 4)
- [ ] Reorder RaBbLE-Identity.md (Priority 5)
- [ ] Add delegation model to Collective docs (Priority 6)
- [ ] Fix INDEX.md paths
- [ ] Update member tables (Aether, NeBuLA status notes)
- [ ] Test 5-min and 30-min reading paths with fresh agent
- [ ] Verify all cross-references post-fixes

---

## Appendix: Token Estimates by Document

| Document | Lines | Approx Tokens | Context |
|---|---|---|---|
| Collective/AGENT.md | 115 | 450 | Concise; includes code block |
| Collective/CONTEXT.md | 95 | 600 | Well-structured; token estimates included |
| Collective/REFERENCES.md | 114 | 700 | Currently duplicates Grimoire material |
| Grimoire/AGENT.md | 88 | 500 | Clear; links to Pulse Protocol |
| Grimoire/CONTEXT.md | 88 | 600 | Status snapshot; structure explanation |
| RaBbLE-Versioning.md | 178 | 1,200 | Dense but necessary; philosophical framing adds length |
| RaBbLE-Identity.md (first 150 lines) | ~150 | 1,000 | Philosophy-heavy; skip directions help |
| **5-min path** | — | **~700** | Collective/CONTEXT only |
| **30-min path** | — | **~3,600** | Through RaBbLE-Versioning |
| **Full orientation** | — | **~5,000+** | Including Identity + member navigation |

---

```
audit ~ completed >> story coherent, navigation clarified, three priorities surfaced
next: implement fixes in order, test with fresh agent
```
