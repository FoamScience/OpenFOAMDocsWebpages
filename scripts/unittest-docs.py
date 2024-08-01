#!/usr/bin/env python3
import re, sys, io, os, json
import frontmatter

if len(sys.argv) != 5:
    print(f"Usage: {sys.argv[0]} <path-to-report-json-files> <output-md-file> <code-repo-URL> <branch>")
    sys.exit(1)

def build_link(libname, filename, line):
    return f"[{filename}#{line}]({sys.argv[3]}/blob/{sys.argv[4]}/tests/{libname}/{filename}#L{line})"

def parse_path(path, libname, name, content):
    newcontent = content
    for e in path:
        if e["kind"] == "section":
            name = f"{name}\n{e['name']}"
            newcontent = parse_path(e["path"], libname, name, newcontent)
        if e["kind"] == "assertion":
            status = f"<i class='fa-sharp fa-solid fa-check -text-primary'></i>" if e["status"] else f"<i class='fa-sharp fa-solid fa-circle-exclamation -text-warning'></i>"
            newcontent = newcontent + ((
                f"\n---\n\n"
                f"{status} "
                f"From file {build_link(libname, e['source-location']['filename'], e['source-location']['line'])}.\n\n"
                f"Belonging to the test section scoped as:\n"
                f"\n```"
                f"{name}"
                f"\n```\n\n"
            ))
    return newcontent


def parse_serial_tests(data):
    tags = set()
    content = ""
    basename = re.sub('Tests$', '', os.path.basename(f"{sys.argv[1]}"))
    meta = data['metadata']
    mpi = "Serial" if "serial" in meta["filters"] else "Parallel"
    libname = meta["name"]
    case = re.sub("\[#[\w-]*\]", "", meta["filters"].replace("[serial]", "")).strip()
    test = data['test-run']
    stats = data["test-run"]["totals"]
    nTests = stats["test-cases"]["passed"]+stats["test-cases"]["failed"]
    if nTests == 0:
        return "", set(), "", ""
    content = content + ((
        f"\n## {mpi} unit tests for `{basename}` in `{libname}` library on `{case}` case\n\n"
        f"Tests were performed using [Catch2](https://github.com/catchorg/Catch2) version "
        f'`{meta["catch2-version"]}` (rng-seed: `{meta["rng-seed"]}`) with the following filters: `{meta["filters"]}`.\n\n'
        f'<i class="fa-sharp fa-solid fa-check -text-primary"></i> '
        f'<span class="-text-primary">{stats["test-cases"]["passed"]+stats["test-cases"]["fail-but-ok"]} Passing</span> test cases '
        f' (<span class="-text-primary">{stats["assertions"]["passed"]+stats["test-cases"]["fail-but-ok"]}</span> expressions), '
        f'<i class="fa-sharp fa-solid fa-circle-exclamation -text-warning"></i> '
        f'<span class="-text-warning">{stats["test-cases"]["failed"]-stats["test-cases"]["fail-but-ok"]} Failing</span> test cases '
        f' (<span class="-text-warning">{stats["assertions"]["failed"]-stats["test-cases"]["fail-but-ok"]}</span> expressions).\n\n'
    ))
    for testcase in test["test-cases"]:
        info = testcase['test-info']
        stats = testcase['totals']
        runs = testcase['runs']
        tags |= set(info['tags'])
        link = build_link(libname, info["source-location"]["filename"], info["source-location"]["line"])
        content = content + ((
            f'### {info["name"]}\n\n'
            f'Defined in {link}\n\n'
            f'With expressions:\n\n'
        ))
        for expr in runs:
            name = ""
            new_content = parse_path(expr["path"], libname, name, content)
            content = new_content
    return content, tags, libname, basename

post = frontmatter.Post(content = ((
    '{{< alert title="Note:" >}}\n'
    'The unit tests pages are automatically generated from the test reports. Some important points to mention:\n'
    '- The random number generator is seeded with the same seed for parallel/serial runs for the same test case.\n'
    '- Number of passing tests is the "effective" one (including the ones that fail but are expected to fail)".\n'
    '- Number of failing tests is the "effective" one (only the ones that fail and are not expected to fail)".\n'
    '{{< /alert >}}\n'
)))
post_tags = set()
lib = ""
testname = ""
for filename in os.listdir(sys.argv[1]):
    if filename.endswith('_serial.json'):
        filepath = os.path.join(sys.argv[1], filename)
        with open(filepath) as f:
            data = json.load(f)
        content, ttags, tlib, ttestname =  parse_serial_tests(data)
        lib = tlib if tlib != "" else lib
        testname = ttestname if ttestname != "" else testname
        post.content = post.content + content
        post_tags |= ttags
post.metadata = {
    'title': f"Unit tests for {lib} - {testname}",
    'layout': 'unittest',
    'tags': list(post_tags),
}
if lib == "" and testname == "":
    exit(0)
b = io.BytesIO()
frontmatter.dump(post, b)
with open(sys.argv[2], "wb") as f:
    f.write(b.getbuffer())
