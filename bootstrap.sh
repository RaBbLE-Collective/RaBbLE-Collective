#!/usr/bin/env bash
# =============================================================================
# RaBbLE Collective — Bootstrap
#
# Usage:
#   curl -fsSL https://joinrabble.world/bootstrap.sh | bash
#   curl -fsSL https://raw.githubusercontent.com/markm1206/RaBbLE/main/bootstrap.sh | bash
#
# What this does:
#   1. Creates ~/RaBbLE/ and initializes it as the Collective root
#   2. Clones RaBbLE-Grimoire (the knowledge layer)
#   3. Runs Grimoire spells/setup.sh to wire all member repos
#
# spark ~ collective >> entry spell // %BOOTSTRAP%
# =============================================================================

set -euo pipefail

RABBLE_ROOT="${RABBLE_ROOT:-$HOME/RaBbLE}"
COLLECTIVE_REPO="https://github.com/markm1206/RaBbLE.git"
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
  info "Collective already cloned — updating..."
  git -C "$RABBLE_ROOT" pull --ff-only --quiet \
    && success "RaBbLE-Collective up to date" \
    || warn "Could not fast-forward — check for local changes"
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
  info "Grimoire already present — updating..."
  git -C "$GRIMOIRE" pull --ff-only --quiet \
    && success "RaBbLE-Grimoire up to date" \
    || warn "Could not fast-forward Grimoire — check for local changes"
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
info "Root:    $RABBLE_ROOT"
info "Grimoire: $GRIMOIRE"
echo ""
echo -e "${CYAN}  Next: cd $RABBLE_ROOT && cat AGENT.md${RESET}"
echo ""
