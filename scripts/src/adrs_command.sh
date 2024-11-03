#!/usr/bin/env bash
_repo_root=$(git rev-parse --show-toplevel)
echo "Updating Docs for ADRs from"
echo "Copying decisions from ${_repo_root}/docs/decisions to $DOCS_DIR/content/en/adr"
cp -rT "${_repo_root}/docs/decisions" "$DOCS_DIR/content/en/adr"
