#!/usr/bin/env bash
set -euo pipefail

is_macos()   { [[ "$(uname -s)" == "Darwin" ]]; }
has()        { command -v "$1" >/dev/null 2>&1; }

if is_macos && has brew; then
  brew install --cask font-hack-nerd-font || true
  exit 0
fi