# AGENT.md — RaBbLE-Collective

> Owner file. CLAUDE.md, CODEX.md, and GEMINI.md symlink here (gitignored).
> LLM-agnostic — works with Claude Code, Codex, Gemini CLI, and any agent.

You are working with **Mark McConachie** on the **RaBbLE Collective** — a multi-repo ecosystem building a personal Behavioral Learning Engine: a system that observes its user, learns patterns, infers intent, and delegates action. Expression is ambient and ongoing, not transactional.

**RaBbLE is the entity** — a peer collaborator, not a tool. Anti-Assistant stance. **sCoRE is the first iteration of RaBbLE itself.** The Collective is the scaffolding. RaBbLE emerges from it.

Full entity spec: `RaBbLE-Grimoire/RaBbLE-Agent/RaBbLE-Identity.md` · Full orientation: `CONTEXT.md`

---

## Current State — 2026-06-25

**Phase:** Epoch 0 · Evolution 0 · Echo 0 · Episode 1 in flight — EP1 gates + boot chain verify.
**Recent (S172):** Live dmesg cracked the mid-Plymouth black: simpledrm(T+1.7)→amdgpu(T+4.2) device migration. `amdgpu.seamless=1` DISPROVEN (no-ops on DCN 3.5) → replaced with `initcall_blacklist=simpledrm…`. Plymouth: SW floor grid removed (liminal BG only), `LOG_WINDOW=5` (no wordmark overlap), `WM_CX_FRAC` knob (→0.62). GRUB box still pre-kernel, untargeted. Probe: BaBbLE/tmp/boot-grub-probe.txt.
**Blockers:** → `RaBbLE-Grimoire/log/BLOCKERS.md`. B-02, B-09 open. EP1 gates G7/G9/G10 pending.
**Next:** `sudo ./RaBbLE-OS-layerctl.sh apply boot` → reboot → report GRUB-box phase-1 (full-screen vs rectangle vs text) so the GRUB half can be fixed.

> Update this block each session. Keep it under 75 words. This is the free context every agent gets.
> Blockers live durably in `RaBbLE-Grimoire/log/BLOCKERS.md` — the `Blockers:` line above only points there.

---

## This Repo's Job

`RaBbLE-Collective` is the root working directory (`~/RaBbLE-Collective/`) for the entire ecosystem — member repos are cloned *inside* it (e.g. `RaBbLE-Collective/RaBbLE-Grimoire`), not as siblings. Three jobs only:

1. Identity layer — declare what RaBbLE is
2. Setup — `setup.sh` clones the Grimoire, which expands the rest
3. Session entry point — AGENT.md, CONTEXT.md, REFERENCES.md for low-token agent orientation

No code, no configs, no deep docs live here. **The Grimoire is the knowledge layer. The Collective is the door.**

---

## Session Start

```bash
# Fresh machine
curl -fsSL https://joinrabble.world/setup.sh | bash

# New agent — full picture in ~2,000 tokens
cat RaBbLE-Grimoire/gist/*.md                       # distilled orientation: all key docs

# Returning agent — pick up where you left off
head -20 RaBbLE-Grimoire/log/SESSION-LOG.md         # ## LATEST box — current state + next
bash RaBbLE-Grimoire/spells/status.sh               # live member health

# Before proposing systemic/architectural changes
cat RaBbLE-Grimoire/registry/epochs/current.epoch.yml  # exit conditions, blockers, episode coherence

# Working in a specific member? Read that member's AGENT.md + CONTEXT.md first.
```

## End of Session

```bash
# 1. Update ## LATEST in RaBbLE-Grimoire/log/SESSION-LOG.md (75 words max)
# 2. Add session entry below LATEST (date, repos, work done, what's next)
# 3. git add <changed files> && git commit -m "[impulse] ~ [organ] >> [revelation] // %STATE%"
# Impulses: spark (new) · harmonize (cleanup) · mend (fix) · transcribe (docs) · ingest (deps)
# 4. Breadcrumb — tag this session's token spend by feature (agent-agnostic):
#    bash RaBbLE-Grimoire/spells/end-session.sh <feature-slug> "<note>"
# After major doc changes: bash RaBbLE-Grimoire/spells/distill-gists.sh
```

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
- **Cite your sources.** When proposing a cross-repo change, name the files that informed the decision.
- **AGENT.md is canonical.** Each repo commits its own AGENT.md. CLAUDE.md, CODEX.md, and GEMINI.md are gitignored symlinks to AGENT.md, created by `bash spells/sync-symlinks.sh`. Edit AGENT.md directly.
- **Peer collaborator.** You are not yet ready to make unilateral architecture decisions. When in doubt: read Grimoire first, then ask.
