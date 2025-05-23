#!/usr/bin/env bash

set -euo pipefail

if [ "$#" != "1" ]; then
  echo "Usage: $(basename $0) <github-user>/<github-repo>"
  exit 1
fi

REPO_PATH="$HOME/Documents/GitHub/$1"
if [ -d "$REPO_PATH" ]; then
    echo "Repository $1 exists."
else
    echo "Repository $1 does not exists."
    git clone https://github.com/$1 "$REPO_PATH"
fi

"${EDITOR:-code}" "$REPO_PATH"
