#!/usr/bin/env bash
echo "+==========================+"
echo "| Updating API and UT Docs |"
echo "+==========================+"

if [[ -n "$CODE_TEST_DIR" && -z "$FOAM_FOAMUT" ]] || [[ -z "$CODE_TEST_DIR" && -n "$FOAM_FOAMUT" ]]; then
  echo "Error: Both CODE_TEST_DIR and FOAM_FOAMUT must be set, or both must be unset."
  exit 1
fi


## Prepping
generate_config=false
if [[ -n "${args[--foamcd_config]}" ]]; then
  if [[ ! -f "${args[--foamcd_config]}" ]]; then
    echo "Error: File does not exist: ${args[foamcd_config]}"
    exit 1
  fi
else
  echo "foamcd-config was not provided, will generate one on the fly"
  generate_config=1
fi
mkdir -p "${args[databases_folder]}"
make_dirs=$(find "$CODE_SRC_DIR" -type d -name "Make" -printf '%h\n' | sort -u)
do_unit_tests=false
if [[ ${args[--with-unit-tests]} ]]; then
  do_unit_tests=${args[--with-unit-tests]}
fi

## File/Link maps
url_mappings='['
for dir in $make_dirs; do
    url_mappings+="{ \"base_url\":\"\", \"path\":\"$dir\", \"pattern\":\"{{base_url}}/api/{{namespace}}_{{name}}\"}, "
done
url_mappings="${url_mappings%, }]"
filename_uri='{{git_repository}}/blob/{{git_reference}}/{{file_path}}#L{{start_line}}-L{{end_line}}'

## Generate compilation dbs if not there yet
for dir in $make_dirs; do
  if [[ ! -f "$dir/compile_commands.json" ]]; then
    echo "Generating compile_commands.json for $dir"
    (cd "$dir"; wclean; bear -- wmake) || echo "Compilation failed, now we chck for valid compile_commands.json"
    if jq -e 'length == 0' "$dir/compile_commands.json" > /dev/null; then
      echo "$dir/compile_commands.json is empty. This is unexpected. Clean builds and retry"
      exit 1
    fi
  fi
done

## If doing UTs, generate the reports + compilation dbs
if [[ $do_unit_tests == 1 ]]; then
  unittests
fi

## Parse the docs, with linking to UTs if enabled
for dir in $make_dirs; do
  echo "API docs for $dir"
  lib_name=$(basename "$dir")
  tmp_lib="${args[databases_folder]}"
  mkdir -p "$tmp_lib"

  test_dir=""
  if [[ $do_unit_tests == 1 ]]; then
    test_dir=$(realpath "$CODE_TEST_DIR")
  fi
  if [[ $generate_config == false ]]; then
    cp "${args[--foamcd_config]}" "$tmp_lib/$lib_name.yaml"
    uvx --from foamcd foamcd-parse -g "$tmp_lib/$lib_name.yaml" \
      +markdown.project_name="$lib_name" \
      +parser.compile_commands_dir="$dir" \
      +database.path="$tmp_lib/$lib_name.db"
  else
    plugin_list='["openfoam"]'
    if [[ -n "${args[--plugin-list]}" ]]; then
      IFS=',' read -ra plugins <<< "${args[--plugin-list]}"
      plugin_list=$(printf '"%s",' "${plugins[@]}")
      plugin_list="[${plugin_list%,}]"
    fi 
    uvx --from foamcd foamcd-parse -g "$tmp_lib/$lib_name.yaml" \
      +markdown.project_name="$lib_name" \
      +markdown.url_mappings="$url_mappings" \
      +markdown.filename_uri=$filename_uri \
      +markdown.method_doc_uri=$filename_uri \
      +markdown.frontmatter.entities.unit_tests="${do_unit_tests}" \
      +markdown.frontmatter.entities.unit_tests_compile_commands_dir="$test_dir" \
      +database.path="$tmp_lib/$lib_name.db" \
      +parser.compile_commands_dir="$dir" \
      +parser.plugins.only_plugins="$plugin_list" \
      +parser.prefixes_to_skip='["/usr/include", "/usr/include/x86_64-linux-gnu", "'"$FOAM_SRC"'"]' \
      +parser.include_paths='["/usr/lib/gcc/x86_64-linux-gnu/13/include"]'
  fi
  uvx --from foamcd foamcd-parse --config "$tmp_lib/$lib_name.yaml"
  uvx --from foamcd foamcd-markdown --config "$tmp_lib/$lib_name.yaml" --db "$tmp_lib/$lib_name.db" --output "$DOCS_DIR/content/en/api/$lib_name"
done
