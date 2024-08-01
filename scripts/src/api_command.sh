#!/usr/bin/env bash
echo "Updating API Docs"
_repo_root=$(git rev-parse --show-toplevel)
cd "$_repo_root" || exit
blacklist_dirs=$(find src/ \( -type d -iname animations -o -type d -iname lnInclude -o -type d -iname Make \) | while read -r dir; do   echo "--input.blacklist_dir ${dir#src/}"; done)
includes=$(find $PWD -type d -iname lnInclude | while read -r dir; do   echo "-I${dir}"; done)
compile_commands=$(find src/ -type f -name compile_commands.json | while read -r cc; do echo  "--input.blacklist_file ${cc#src/}"; done)
openfoam_includes=$(find src -type f -name compile_commands.json -exec jq -r '[.[] | .arguments[] | select(startswith("-I"))] | unique[]'  {} \;)
pip install -r "$DOCS_DIR"/scripts/requirements.txt
set -e
standardese src \
    -DNoRepository -DOPENFOAM=2306 -DWM_DP -DWM_LABEL_SIZE=32 -fPIC -ftemplate-depth-100 \
    $includes \
    $openfoam_includes \
    --compilation.standard=c++20 \
    --input.source_ext ".H" \
    --input.source_ext ".C" \
    $blacklist_dirs \
    $compile_commands \
    --input.force_blacklist 1 \
    --comment.command_character "@" \
    --output.link_prefix "/api/headers/"
rm -f "$DOCS_DIR/content/en/api/headers/doc*md"
for fl in doc_*md standardese*md; do
    python "$DOCS_DIR"/scripts/process-fm.py $fl
done
rm doc_*md standardese*md
cd -
