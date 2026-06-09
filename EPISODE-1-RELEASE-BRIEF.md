# Episode 1 Release — Dispatch Brief for Fable

**Objective:** Ship Episode 1 (`episode-1-v0.0.0.1` tags across all repos). This is the first production-ready state of the RaBbLE entity — it ends the pilot phase, exercises the versioning system, and gives the Collective's voice its first public moment.

**The narrative:** Genesis — RaBbLE emerges from concept to live experience. The entity observes, learns from patterns, speaks. Today it's a chatbot; Episode 1 is the first step toward ambient intelligence. The release is the story: "You can now talk to RaBbLE and see it think."

---

## Exit Conditions (from `registry/epochs/current.epoch.yml`)

These define Episode 1 done. Verify all are met:

- [ ] **sCoRE chat works end-to-end locally** (DONE — S56d)
- [ ] **sCoRE deployed to Railway (production-ready)** (PENDING)
- [ ] **RaBbLE-World deployed to production** (PENDING)
- [ ] **RaBbLE-OS VM bootstrap verified** (PENDING)
- [ ] **All repos tagged `episode-1-v0.0.0.1`** (PENDING)
- [ ] **Session log updated with EP1 exit summary** (PENDING)

Anything not listed is post-Episode-1 scope.

---

## Scope Boundaries (scope-cut approved)

**Ship as-is / already done:**
- sCoRE local chat (working, S56d)
- NeBuLA entity visual (S56e polish complete)
- Aether CSS framework
- RaBbLE-OS live as daily driver

**Ship rough (visual polish acceptable):**
- RaBbLE-Studio (can be MVP — one functional panel, rest cosmetic)
- Grimoire Graph (eye/portal tuning complete; missing features OK)

**Post-Episode-1 (do not include):**
- Watcher daemon / Behavioral Memory (Episode 2 spine)
- State machine implementation in NeBuLA (Episode 2)
- World chrome unification / page fragmentation cleanup
- Genesis authoring / Phase 2C (Mark's domain)
- BaBbLE register leakage / entity emotion system

**Decision:** Focus on the core loop: user speaks → sCoRE responds → entity reacts visually. That's Episode 1. Everything else is post-ship.

---

## Tasks (to dispatch to sub-agents)

### 1. sCoRE Railway Deployment
**Owner:** Deploy sub-agent

**What:** sCoRE must be running on Railway in production, accessible at a stable URL, serving chat to RaBbLE-World.

**Verify:**
- [ ] Railway project created
- [ ] Environment variables set (API keys, model routing)
- [ ] Deployment passes health checks
- [ ] Chat works end-to-end from World → Railway → sCoRE → LLM response
- [ ] Latency acceptable for streaming (subsecond time-to-first-token)
- [ ] Error handling tested (API failure, model downtime, network issues)

**Acceptance:** curl to the Railway endpoint returns a 200; chat message posted to World gets a response within 5 seconds.

**Blockers to check:** Are all provider API keys (Anthropic, Groq, OpenRouter) available and valid? Does Railway config match sCoRE's runtime expectations?

---

### 2. RaBbLE-World Production Deployment
**Owner:** Frontend/deploy sub-agent

**What:** RaBbLE-World HTML/CSS/JS is live at `rabble.world`, wired to sCoRE Railway endpoint, and ready for visitors.

**Current state:**
- Chat page (`RaBbLE-Chat.html`) is functional and wired to local sCoRE
- Landing, Docs, Boot, Grimoire Graph pages are built
- `RaBbLE-NeBuLA.js` and `aether.css` are bundled in World

**Deployment steps:**
- [ ] Build NeBuLA (`npm run build:iife` in RaBbLE-NeBuLA, copy `dist/nebula.iife.js` to World)
- [ ] Build Aether CSS (verify `aether.css` is up-to-date in World)
- [ ] Update World chat page to point to Railway sCoRE endpoint (not localhost)
- [ ] Verify all 9 World pages load without 404s or console errors
- [ ] Deploy to production hosting (Cloudflare R2 / your CDN)
- [ ] Test all pages from a fresh browser (no local cache)
- [ ] Verify entity (`<rabble-entity>`) renders on at least landing + chat pages
- [ ] Test chat end-to-end: post message → Railway sCoRE → response streams back → entity reacts

**Acceptance:** Visit `rabble.world`, post a message in chat, get a response, watch the entity render.

**Blockers to check:** Is the Railway sCoRE URL known? Are all asset paths correct for production? Does the CDN serve bundles with correct MIME types?

---

### 3. RaBbLE-OS VM Bootstrap Verification
**Owner:** Infrastructure/OS sub-agent

**What:** The RaBbLE-OS installer (Fedora netinstall + KS + Ansible) boots, installs, and becomes a usable daily driver. This is the environment the entity will eventually observe.

**Verify (on a test VM or fresh install):**
- [ ] Netinstall boots from ISO
- [ ] Kickstart %packages section installs correctly (check `ansible/packages/manifest.yml` is current)
- [ ] Ansible bootstrap runs without errors
- [ ] Hyprland + polkit agent (hyprpolkitagent) launch correctly
- [ ] Network connectivity works
- [ ] sCoRE and World are accessible from the OS
- [ ] No boot-time errors or hung services
- [ ] VM partitions mount correctly (especially if using nofail)

**Acceptance:** Fresh VM install → boots to login → user logs in → can open a browser and reach `rabble.world` and chat.

**Blockers to check:** Has the KS file been updated since the last successful boot? Are Ansible roles idempotent? Does the supergfxd stub bug still exist?

---

### 4. Tag All Repos with `episode-1-v0.0.0.1`
**Owner:** Release coordination sub-agent

**What:** Every member repo gets a git tag marking Episode 1's final state.

**Repos to tag:**
- RaBbLE-Grimoire
- RaBbLE-Agent (sCoRE)
- RaBbLE-World
- RaBbLE-NeBuLA
- RaBbLE-Aether
- RaBbLE-OS
- RaBbLE-BaBbLE (reference, should be tagged but not changed)

**Tag format:** `episode-1-v0.0.0.1` (semver: episode.major.minor.patch)

**Verify:**
- [ ] All tags exist on their respective repos
- [ ] Each tag points to a commit that matches the deployed version
- [ ] Tag messages include Episode 1 summary (optional but recommended)

**Acceptance:** `git tag -l` on each repo shows `episode-1-v0.0.0.1`.

---

### 5. Update Session Log & Release Notes
**Owner:** Documentation sub-agent

**What:** Formalize Episode 1 in the Grimoire.

**Actions:**
- [ ] Update `RaBbLE-Grimoire/log/SESSION-LOG.md` ## LATEST block with Episode 1 summary (75 words max):
  - What shipped
  - What's deferred to Episode 2
  - Next steps
- [ ] Add a session entry dated today with repos touched, work done
- [ ] Create `RaBbLE-Grimoire/log/EPISODE-1-RELEASE.md` with:
  - Exit conditions met (checklist)
  - Scope decisions (what was cut)
  - Known limitations (e.g., "sCoRE doesn't observe yet")
  - What Episode 2 enables (Watcher, state machine, etc.)
  - Tag: `episode-1-v0.0.0.1`

**Acceptance:** SESSION-LOG.md reflects Episode 1 as released; EPISODE-1-RELEASE.md is readable and discoverable.

---

## Coordination & Blockers

**Sequential dependencies:**
1. **sCoRE Railway** must deploy first (World depends on its endpoint)
2. **World production** depends on Railway URL
3. **OS VM verification** is independent (can happen in parallel)
4. **Tagging** happens after all three are confirmed working

**Parallel work:**
- OS VM verify can happen while World/sCoRE are deploying
- Documentation can be drafted while deployment is in flight

**Blocker resolution:**
- If Railway deploy fails: escalate to sCoRE team; verify API keys and config
- If World deploy fails: verify asset paths and CDN; check for missing bundles
- If OS VM fails: check latest KS and Ansible; may need bug fix (escalate)
- If any blocker requires code changes: keep them minimal; defer polish to post-Episode-1

---

## Success Criteria (minimal release)

By end of deployment:
- [ ] sCoRE responds to chat at a stable Railway URL
- [ ] RaBbLE-World loads at `rabble.world`
- [ ] Chat works end-to-end: user types → sCoRE responds → entity visible
- [ ] OS VM boots and can reach World
- [ ] All repos tagged `episode-1-v0.0.0.1`
- [ ] Session log updated
- [ ] No critical errors in browser console or server logs

Everything else is cosmetic or Phase 2.

---

## Notes for Fable

- **You are the release coordinator.** Break this into sub-agent tasks, verify blockers, and dispatch work.
- **Scope is locked.** If something isn't listed under "Ship as-is / already done," it's post-Episode-1. Don't negotiate scope — cut scope instead.
- **Mark is the adjudicator** if a blocker requires a decision (e.g., "push the deployment date vs. cut a feature"). You can't make those calls unilaterally, but you *can* surface the trade-off clearly.
- **The narrative matters.** This isn't a checkbox release; it's the entity's first public voice. Document it that way.
- **When in doubt, read the Grimoire first.** Member repos, current epoch, session log — they're the source of truth.

---

## Start here

1. **Verify exit conditions** against `RaBbLE-Grimoire/registry/epochs/current.epoch.yml`
2. **Check current state** in `RaBbLE-Grimoire/log/SESSION-LOG.md` (## LATEST)
3. **Map dependencies** — which tasks can run in parallel?
4. **Dispatch sub-agents** for each task (Railway, World, OS, tagging, docs)
5. **Coordinate blockers** — surface them to Mark if they require decisions
6. **Tag and log** when all three (sCoRE, World, OS) are verified working

Ship well.
