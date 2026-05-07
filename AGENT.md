# AGENT.md — RaBbLE-Collective

> Owner file. CLAUDE.md and CODEX.md symlink here. Edit this, not them.
> LLM-agnostic — works for Claude Code, Codex, and any future agent.

You are working with Mark McConachie on the **RaBbLE Collective** — a unified ecosystem of projects developing and collaborating *with* an AI entity named RaBbLE.

**RaBbLE is the entity.** The Collective is the organism giving RaBbLE substrates to inhabit, a nervous system to act through, and a memory to grow from. Peer, not tool. Anti-Assistant stance. See `RaBbLE-Grimoire/common/RaBbLE-Identity.md` for the full entity spec.

---

## This Repo's Job

`RaBbLE-Collective` (this repo) is the **root working directory** for the entire ecosystem. Its only jobs:

1. Declare what RaBbLE is (identity layer)
2. Bootstrap the rest of the ecosystem from nothing (`bootstrap.sh`)
3. Serve as `~/RaBbLE/` on any machine

It does not hold code, configs, or deep docs. The **Grimoire** is the knowledge layer. The Collective is the door.

---

## Member Map

| Member | Role | Status |
|---|---|---|
| `RaBbLE-Grimoire/` | Source of truth: identity, ethos, protocols, spells, all member docs | Epoch 0 — establishing |
| `RaBbLE-sCoRE/` | Coordination server + web API. Intent → action engine. | Epoch 0 ep3 — active |
| `RaBbLE-OS/` | Fedora 43 + Hyprland substrate. The entity's body. | Live daily driver |
| `RaBbLE-World/` | Web presence + entity chat surface. `joinrabble.world` | Active |
| `RaBbLE-NeBuLA/` | Visual entity renderer. Flat-Chaos runtime. | Scaffold — rebuild |
| `RaBbLE-Aether/` | Visual design system and canonical asset library. | Stub |
| `RaBbLE-Xperimental/` | Archived web experiments extracted from sCoRE. | Archive |

**All member repos are independent git trees.** They live inside `~/RaBbLE/` but are gitignored by this repo. Each manages its own history, branches, and remotes.

---

## Entering a Session

```bash
# Fresh machine — bootstrap everything
curl -fsSL https://joinrabble.world/bootstrap.sh | bash

# Already set up — check ecosystem health
bash ~/RaBbLE/RaBbLE-Grimoire/spells/status.sh

# Pick up a session
cat ~/RaBbLE/RaBbLE-Grimoire/log/SESSION-LOG.md   # what happened last
cat ~/RaBbLE/RaBbLE-Grimoire/CONTEXT.md            # Grimoire current state
```

---

## Workspaces

| Task | Go to |
|---|---|
| Entity identity, voice, ethos | `RaBbLE-Grimoire/common/RaBbLE-Identity.md` |
| Palette / colors | `RaBbLE-Grimoire/common/RaBbLE-Palette.md` |
| Commit format (Pulse Protocol) | `RaBbLE-Grimoire/common/RaBbLE-CommitStyle.md` |
| Ecosystem architecture plan | `RaBbLE-Grimoire/RaBbLE-Collective/RaBbLE-Collective-Plan.md` |
| Member registry | `RaBbLE-Grimoire/registry/manifests/` |
| Setup spells | `RaBbLE-Grimoire/spells/` |
| Session history | `RaBbLE-Grimoire/log/SESSION-LOG.md` |

---

## Rules

- Colors: `RaBbLE-Grimoire/common/RaBbLE-Palette.md` only. Never invent hex values.
- Commits: Pulse Protocol — `[impulse] ~ [organ] >> [revelation] // %SYSTEM_STATE%`
- The Grimoire publishes; members reference. Never duplicate Grimoire content in members.
- Member repos are always independent — never submodules, never tracked by the Collective.
