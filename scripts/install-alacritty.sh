#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "$0")/.common.sh"

if is_macos && has brew; then
  brew install --cask alacritty || true
fi