# CONTEXT.md — RaBbLE-Collective

> Pre-Episode-1 stub. Current dev state lives on `new-horizons`.
> Phase: Epoch 0 · Evolution 0 · Echo 0 · Episode 1 in flight.

---

## Why you're seeing this

`main` holds the pre-EP1 orientation stub. The live session state, member health, and current blocker list are on `new-horizons`.

```bash
# Switch to active dev and read live context:
git checkout new-horizons
cat CONTEXT.md

# Or after bootstrap — read the Grimoire directly:
head -20 RaBbLE-Grimoire/log/SESSION-LOG.md
bash RaBbLE-Grimoire/spells/status.sh
```

---

## EP1 State (as of branch cut)

**Phase:** Epoch 0 · Evolution 0 · Echo 0 · Episode 1 in flight.

| Member | Status |
|---|---|
| `RaBbLE-Grimoire` | Active — source of truth, spells live |
| `RaBbLE-sCoRE` | Render deploy pending (Mark's step) |
| `RaBbLE-World` | EP1 pages built — CF Pages setup TODO |
| `RaBbLE-Aether` | Build pipeline ready — CF Pages setup TODO |
| `RaBbLE-NeBuLA` | IIFE build ready — CF Pages setup TODO |
| `RaBbLE-OS` | Daily driver — Plymouth boot, OS reboot QA pending |
| `RaBbLE-BaBbLE` | Local-only intake workspace |

**Next (from `new-horizons`):** OS reboot QA → CF Pages (aether/nebula subdomains) → `publish-cdn.sh v0.0.0.1` → Render → `episode-1-v0.0.0.1`
