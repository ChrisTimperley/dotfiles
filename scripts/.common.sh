is_macos()   { [[ "$(uname -s)" == "Darwin" ]]; }
has()        { command -v "$1" >/dev/null 2>&1; }