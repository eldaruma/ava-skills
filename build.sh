#!/usr/bin/env bash
# Rebuild skill archives: src/<id>/ -> skills/<id>.zip
# Run after any change under src/. Each archive contains a single top-level
# <id>/ folder (the structure the AVA importer expects), macOS junk excluded.
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p skills
for dir in src/*/; do
  id="$(basename "$dir")"
  rm -f "skills/$id.zip"
  (cd src && zip -rq "../skills/$id.zip" "$id" -x '*.DS_Store' -x '*__MACOSX*')
  echo "built skills/$id.zip"
done
