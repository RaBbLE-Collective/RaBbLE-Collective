#!/usr/bin/env bash
# =============================================================================
# RaBbLE Collective — Setup
#
# Usage:
#   curl -fsSL https://joinrabble.world/setup.sh | bash
#   curl -fsSL https://raw.githubusercontent.com/markm1206/RaBbLE-Collective/main/setup.sh | bash
#
# What this does:
#   1. Creates ~/RaBbLE/ and initializes it as the Collective root
#   2. Clones RaBbLE-Grimoire (the knowledge layer) and verifies it is current
#   3. Runs Grimoire spells/setup.sh to wire all member repos
#
# spark ~ collective >> entry spell // %SETUP%
# =============================================================================

set -euo pipefail

RABBLE_ROOT="${RABBLE_ROOT:-$HOME/RaBbLE}"
COLLECTIVE_REPO="https://github.com/markm1206/RaBbLE-Collective.git"
GRIMOIRE_REPO="https://github.com/markm1206/RaBbLE-Grimoire.git"

# --- Colors (RaBbLE palette) -------------------------------------------------
MAGENTA='\033[38;2;255;45;120m'
CYAN='\033[38;2;0;245;255m'
GREEN='\033[38;2;80;250;123m'
VIOLET='\033[38;2;191;95;255m'
MUTED='\033[38;2;107;104;128m'
RED='\033[38;2;224;92;111m'
RESET='\033[0m'

pulse()   { echo -e "${MAGENTA}${1}${RESET}"; }
info()    { echo -e "${CYAN}  ${1}${RESET}"; }
success() { echo -e "${GREEN}  ✓ ${1}${RESET}"; }
warn()    { echo -e "${VIOLET}  ⚠ ${1}${RESET}"; }
error()   { echo -e "${RED}  ✗ ${1}${RESET}"; exit 1; }

# Check a local git repo against its remote and pull if safe.
# Args: $1 = path, $2 = label
sync_repo() {
  local path="$1" label="$2"
  git -C "$path" fetch --quiet origin
  local behind modified
  behind=$(git -C "$path" rev-list --count HEAD..@{u} 2>/dev/null || echo 0)
  modified=$(git -C "$path" status --porcelain 2>/dev/null | wc -l | tr -d ' ')

  if [[ "$behind" -gt 0 && "$modified" -gt 0 ]]; then
    warn "${label} is ${behind} commits behind and has ${modified} local changes"
    warn "Manual merge needed — run: git -C ${path} merge origin/main"
  elif [[ "$behind" -gt 0 ]]; then
    info "${label} is ${behind} commits behind — pulling..."
    git -C "$path" pull --ff-only --quiet
    success "${label} updated (${behind} commits)"
  elif [[ "$modified" -gt 0 ]]; then
    warn "${label} has ${modified} local changes — skipping pull"
    success "${label} present (local changes preserved)"
  else
    success "${label} up to date"
  fi
}

echo ""
pulse "▶ RaBbLE Collective — Bootstrap"
pulse "════════════════════════════════════════"
info "Root: $RABBLE_ROOT"
echo ""

# =============================================================================
# Step 1 — Collective root
# =============================================================================

pulse "── Step 1: Collective root"

if [[ -d "$RABBLE_ROOT/.git" ]]; then
  info "Collective already cloned — verifying..."
  sync_repo "$RABBLE_ROOT" "RaBbLE-Collective"
else
  mkdir -p "$(dirname "$RABBLE_ROOT")"
  info "Cloning RaBbLE-Collective into $RABBLE_ROOT..."
  git clone "$COLLECTIVE_REPO" "$RABBLE_ROOT"
  success "RaBbLE-Collective cloned"
fi

# =============================================================================
# Step 2 — Grimoire
# =============================================================================

pulse ""
pulse "── Step 2: Grimoire (knowledge layer)"

GRIMOIRE="$RABBLE_ROOT/RaBbLE-Grimoire"

if [[ -d "$GRIMOIRE/.git" ]]; then
  info "Grimoire already present — verifying..."
  sync_repo "$GRIMOIRE" "RaBbLE-Grimoire"
else
  info "Cloning RaBbLE-Grimoire..."
  git clone "$GRIMOIRE_REPO" "$GRIMOIRE"
  success "RaBbLE-Grimoire cloned"
fi

# =============================================================================
# Step 3 — Grimoire expands
# =============================================================================

pulse ""
pulse "── Step 3: Grimoire expanding..."
echo ""

SETUP_SPELL="$GRIMOIRE/spells/setup.sh"

if [[ ! -f "$SETUP_SPELL" ]]; then
  error "Grimoire setup spell not found at $SETUP_SPELL — Grimoire may be incomplete"
fi

bash "$SETUP_SPELL"

# =============================================================================
# Done
# =============================================================================

echo ""
pulse "════════════════════════════════════════"
pulse "harmonize ~ collective >> ecosystem bootstrapped // %BOOTSTRAP_COMPLETE%"
echo ""
info "Root:     $RABBLE_ROOT"
info "Grimoire: $GRIMOIRE"

# =============================================================================
# Wizard Entry
# =============================================================================

echo ""
pulse "── Wizard Entry"
echo ""
echo -e "${MUTED}  Epoch 0: Foundation. RaBbLE has not yet emerged. Cast manually.${RESET}"
echo ""

echo -e "${MUTED}  Read first:${RESET}"
echo -e "    ${CYAN}cat $GRIMOIRE/CONTEXT.md${RESET}   ${MUTED}# current Grimoire state${RESET}"
echo -e "    ${CYAN}cat $GRIMOIRE/SPELLS.md${RESET}    ${MUTED}# what spells exist and what they do${RESET}"
echo -e "    ${CYAN}cat $GRIMOIRE/INDEX.md${RESET}     ${MUTED}# full Grimoire map${RESET}"
echo ""

echo -e "${MUTED}  Cast a spell:${RESET}"
for spell_file in "$GRIMOIRE/spells"/*.sh; do
  [[ -f "$spell_file" ]] || continue
  name="$(basename "$spell_file" .sh)"
  desc=$(grep -A1 "^# RaBbLE-Grimoire —" "$spell_file" 2>/dev/null \
    | tail -1 | sed 's/^# //' || true)
  echo -e "    ${GREEN}bash $GRIMOIRE/spells/${name}.sh${RESET}"
  [[ -n "$desc" ]] && echo -e "    ${MUTED}${desc}${RESET}"
  echo ""
done
