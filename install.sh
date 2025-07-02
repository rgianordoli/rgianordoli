#!/bin/bash
set -e

TARGET="$1"

if [ -z "$TARGET" ]; then
  echo "❌ Kein Ziel angegeben. Beispiel: ./install.sh worker"
  exit 1
fi

# Ermittle absoluten Pfad zu diesem Skript (liegt in rgianordoli/)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Zielpfad: ein Verzeichnis höher (also aus rgianordoli/ zu z. B. ../worker)
PROJECT_DIR="$SCRIPT_DIR/../$TARGET"

if [ ! -d "$PROJECT_DIR" ]; then
  echo "❌ Verzeichnis '$PROJECT_DIR' existiert nicht."
  exit 1
fi

cd "$PROJECT_DIR"

echo "📦 Initialisiere Poetry-Umgebung in '$TARGET/.venv' ..."
poetry config virtualenvs.in-project true
poetry install

echo "✅ Installation für '$TARGET' abgeschlossen."
