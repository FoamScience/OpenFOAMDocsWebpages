#!/usr/bin/env bash
_repo_root=$(git rev-parse --show-toplevel)
curr_pwd=$PWD
cd "$_repo_root" || exit
branch=$(git branch --show-current)
remote=$(git remote get-url origin)
echo "Updating Docs for unit tests"
if [ -d "$PWD/testCases" ]; then
    rm -rf "$FOAM_FOAMUT"/cases
    cp -r "$PWD/testCases" "$FOAM_FOAMUT/cases"
fi
if [ -d "$FOAM_FOAMUT" ] ; then
    rm -rf $FOAM_FOAMUT
fi
git clone https://github.com/FoamScience/foamUT $FOAM_FOAMUT
set +e
TESTS_DOCS="$DOCS_DIR/content/en/tests"
mkdir -p "$TESTS_DOCS"
mkdir -p "$FOAM_FOAMUT/reports/docs"
export MESHFREE_TESTS=$PWD/tests
export MESHFREE_SRC=$PWD/src
rm -rf "$FOAM_FOAMUT/tests/exampleTests"
libs=$(find "$PWD/tests" -maxdepth 1 -mindepth 1 -type d)
for lib in $libs; do
    link_path="$FOAM_FOAMUT/tests/$(basename "$lib")"
    if [ -L "$link_path" ]; then
        echo "link to $lib already exists..."
    else
        ln -s "$lib" "$link_path"
    fi
done
libs=$(find -L "$FOAM_FOAMUT"/tests -maxdepth 1 -mindepth 1 -type d)
for lib in $libs; do
    libname=$(basename "$lib")
    echo "Unit tests for lib ${libname}"
    if ! test -f "$TESTS_DOCS/${libname}/_index.md"; then
        mkdir -p "$TESTS_DOCS/${libname}"
        printf -- "---\ntitle: ${libname} tests\nlayout: unittest\n---" >  "$TESTS_DOCS/${libname}/_index.md"
    fi
    files=$(find -L "$lib" -name '*Tests.C')
    echo $files
    for file in $files; do
        name=$(basename -- "$file")
        mkdir -p "$FOAM_FOAMUT/reports/docs/${libname}/${name%.C}"
        echo "Processing $name"
        cd "$FOAM_FOAMUT" || exit
        ./Alltest --no-parallel --report  -# "[#${name%.C}]"
        mv "$FOAM_FOAMUT/reports/${libname}"* "$FOAM_FOAMUT/reports/docs/${libname}/${name%.C}"
        cd - || exit
        echo "Generating docs for $TESTS_DOCS/${libname}/${name%.C}.md"
        $DOCS_DIR/scripts/unittest-docs.py "$FOAM_FOAMUT/reports/docs/${libname}/${name%.C}" "$TESTS_DOCS/${libname}/${name%.C}.md" $remote $branch
    done
done
set -e
cd "$curr_pwd" || exit
