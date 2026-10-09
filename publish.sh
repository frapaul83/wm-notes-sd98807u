#!/bin/zsh
# Copies the working-model page out of the health folder and publishes it.
set -e
SRC="$HOME/Google Drive/Documents Synced/AI Porphyria Flare and other Health Docs/Symptom Documentation/Working Model Page.html"
REPO="$HOME/Developer/wm-notes-sd98807u"
cp "$SRC" "$REPO/index.html"
cd "$REPO"
git add index.html
git commit -m "Update page $(date '+%Y-%m-%d %H:%M')" || { echo "No changes to publish."; exit 0; }
git push
echo "Published. Live in about a minute."
