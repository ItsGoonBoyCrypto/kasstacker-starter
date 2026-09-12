#!/usr/bin/env bash
# Compiles simple.sil into artifact.json using a Silverscript checkout.
#
#   git clone https://github.com/kaspanet/silverscript ../silverscript
#   ./compile.sh
#
# Point SILVERSCRIPT_DIR elsewhere if your checkout lives somewhere else.
set -euo pipefail
DIR="${SILVERSCRIPT_DIR:-../silverscript}"
if [ ! -f "$DIR/Cargo.toml" ]; then
  echo "!! no Silverscript checkout at $DIR — clone it first:" >&2
  echo "   git clone https://github.com/kaspanet/silverscript $DIR" >&2
  exit 1
fi
HERE="$(cd "$(dirname "$0")" && pwd)"
cargo run --manifest-path "$DIR/Cargo.toml" -p silverscript-lang --bin silverc -- \
  "$HERE/simple.sil" --constructor-args "$HERE/args.json" -o "$HERE/artifact.json"
echo "==> artifact.json written — that's your compiled covenant."
echo "    Next: https://kasstacker.org/build/first-covenant"
