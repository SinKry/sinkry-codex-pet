#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
SRC="$ROOT/sinkry"
DST="$HOME/.codex/pets/sinkry"

mkdir -p "$DST"
cp "$SRC/pet.json" "$DST/pet.json"
cp "$SRC/spritesheet.webp" "$DST/spritesheet.webp"

python3 - <<'PY'
import json
from pathlib import Path

state = Path.home() / ".codex" / ".codex-global-state.json"
if state.exists():
    data = json.loads(state.read_text())
else:
    data = {}

data.setdefault("electron-persisted-atom-state", {})
atoms = data["electron-persisted-atom-state"]
atoms["avatars.selected"] = "custom:sinkry"
atoms["selectedAvatarId"] = "custom:sinkry"
atoms["electron-avatar-overlay-open"] = True

state.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n")
PY

echo "SinKry optimized pet installed. Restart Codex if the old sprite is still cached."
