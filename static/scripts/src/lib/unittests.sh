#!/usr/bin/env bash
# Expects:
# - CODE_SRC_DIR to be set
# - CODE_TEST_DIR to be set
# - DOCS_DIR to be set
# - FOAM_FOAMUT to be set
# - Tested libraries are already compiled
unittests() {
    # Prep work
    if [ -d "$FOAM_FOAMUT" ] ; then
        rm -rf "$FOAM_FOAMUT"
    fi
    git clone https://github.com/FoamScience/foamUT "$FOAM_FOAMUT"
    rm -rf "$FOAM_FOAMUT/tests/exampleTests"
    test_cases_path=$(realpath "$(dirname $CODE_TEST_DIR)/testCases")
    if [ -d "$test_cases_path" ]; then
        rm -rf "$FOAM_FOAMUT"/cases
        cp -r "$test_cases_path" "$FOAM_FOAMUT/cases"
    fi
    branch=$(cd "$CODE_TEST_DIR" && git branch --show-current)
    remote=$(cd "$CODE_TEST_DIR" && git remote get-url origin)
    TESTS_DOCS="$DOCS_DIR/content/en/tests"
    mkdir -p "$TESTS_DOCS"
    mkdir -p "$FOAM_FOAMUT/reports/docs"
    # Patch Alltest to produce compile_commands while reporting UT results
    sed -i 's/wmake > log.wmake/bear -- wmake > log.wmake/g' "$FOAM_FOAMUT/Alltest"
    # Find and link tests
    test_libs=$(find "$CODE_TEST_DIR" -type d -name "Make" -printf '%h\n' | sort -u)
    for lib in $test_libs; do
        link_path="$FOAM_FOAMUT/tests/$(basename "$lib")"
        if [ -L "$link_path" ]; then
            echo "link to $lib already exists..."
        else
            ln -s "$lib" "$link_path"
        fi
    done
    # Compile and run tests
    libs=$(find -L "$FOAM_FOAMUT"/tests -maxdepth 1 -mindepth 1 -type d)
    for lib in $libs; do
        libname=$(basename "$lib")
        echo "Unit tests for lib ${libname}"
        if ! test -f "$TESTS_DOCS/${libname}/_index.md"; then
            mkdir -p "$TESTS_DOCS/${libname}"
            printf -- "---\ntitle: ${libname} tests\nlayout: unittest\n---" >  "$TESTS_DOCS/${libname}/_index.md"
        fi
        files=$(find -L "$lib" -name '*Tests.C')
        for file in $files; do
            name=$(basename -- "$file")
            mkdir -p "$FOAM_FOAMUT/reports/docs/${libname}/${name%.C}"
            echo "Processing $name"
            # TODO: For now, on each test file, recompile to get the compile_commands.json
            #       right, this is inefficient...
            (cd "$FOAM_FOAMUT" && rm -rf "$lib/testDriver" && wclean "$lib" && ./Alltest --no-parallel --report  -# "[#${name%.C}]")
            mv "$FOAM_FOAMUT/reports/${libname}"* "$FOAM_FOAMUT/reports/docs/${libname}/${name%.C}"
            echo "Generating docs for $TESTS_DOCS/${libname}/${name%.C}.md"
            uvx --from foamcd foamcd-unittests "$FOAM_FOAMUT/reports/docs/${libname}/${name%.C}" "$TESTS_DOCS/${libname}/${name%.C}.md" "$remote" "$branch"
        done
    done
    # Consolidate all compilation dbs
    find "$CODE_TEST_DIR/" -name compile_commands.json -exec cat {} + | jq -s 'add' > "$CODE_TEST_DIR/compile_commands.json"
    if jq -e 'length == 0' "$CODE_TEST_DIR/compile_commands.json" > /dev/null; then
      echo "$CODE_TEST_DIR/compile_commands.json is empty. This is unexpected. Clean UT builds and retry"
      exit 1
    fi
}
