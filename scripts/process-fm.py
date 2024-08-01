#!/usr/bin/env python3
import re, sys, io, os
import frontmatter

if len(sys.argv) != 2 or not os.environ.get('DOCS_DIR'):
    print("Usage: DOCS_DIR=<path> ./process-fm.py <path-to-markdown-file>")
    sys.exit(1)

# Function to extract title from the first line
def extract_title(markdown_content):
    title_match = re.search(r'^# (.*)$', markdown_content, re.MULTILINE)
    if title_match:
        title = title_match.group(1)
        markdown_content = markdown_content[:title_match.start()] + markdown_content[title_match.end():]
        return title, markdown_content
    return 'Untitled', markdown_content

# Function to extract contributors from the struct lines
def extract_contributors(markdown_content):
    contributors = set()
    sections = re.findall("//=== (.+) ===//", markdown_content)
    contributors = {item.strip().split(":")[1] for string in sections for item in string.split(',')  if item.strip().startswith("author:")}
    return list(contributors)

def check_links(markdown_content):
    content = markdown_content.replace(".md#", "#")
    title_pattern = r'^(\#{1,6})\s+(.*)$'
    def replace_title(match):
        depth = len(match.group(1))
        title_text = match.group(2).strip()
        title_text = "".join(title_text.split('`')[1:])
        anchor = title_text.lower().replace(" ", "-").replace("::", "__").replace('`','').replace('<','').replace('>','')
        shortcode = f'<a style="visibility: hidden;" id="standardese-{anchor}" href="#standardese-{anchor}"></a>'
        return shortcode + "\n" + "#" * depth + " " + title_text
    content = re.sub(title_pattern, replace_title, content, flags=re.MULTILINE)
    frag_pattern = r'\[(.*?)\]\((.*?)(#.*?)?\)'
    def replace_frag(match):
        link_text = match.group(1)
        link_url = match.group(2)
        fragment = match.group(3)
        if fragment:
            new_fragment = fragment.lower()
            new_link = f'[{link_text}]({{{{% ref "{link_url}{new_fragment}" %}}}})'
        else:
            new_link = f'[{link_text}]({{{{% ref "{link_url}" %}}}})'
        return new_link
    content = re.sub(frag_pattern, replace_frag, content, flags=re.MULTILINE | re.DOTALL)
    empty_pattern = r'\[` *`\]\((.*?)#(.*?)\)'
    def process_match(match):
        link = match.group(1)
        anchor = match.group(2)
        link_parts = link.split('__')[1:]
        joined_elements = '::'.join(link_parts)
        return f'[{joined_elements}]({link}#{anchor})'
    content = re.sub(empty_pattern, process_match, content, flags=re.MULTILINE | re.DOTALL)
    return content

# Read the markdown file
with open(sys.argv[1], 'r') as file:
    markdown_content = file.read()

outfile = {
    sys.argv[1]: f"{os.environ.get('DOCS_DIR')}/content/en/api/headers/{sys.argv[1]}",
    'standardese_files.md': f"{os.environ.get('DOCS_DIR')}/content/en/api/headers/_index.md",
    'standardese_modules.md': f"{os.environ.get('DOCS_DIR')}/content/en/api/modules/_index.md",
    'standardese_entities.md': f"{os.environ.get('DOCS_DIR')}/content/en/api/entities/_index.md",
}

# Extract title and contributors
title, content = extract_title(markdown_content)
content = check_links(content)
title_match = re.search(r'^# Header file `(.*)`$', markdown_content, re.MULTILINE)
if title_match:
    title = title_match.group(1)
contributors = extract_contributors(markdown_content)

os.makedirs(f"{os.environ.get('DOCS_DIR')}/content/en/api/headers", exist_ok=True)
os.makedirs(f"{os.environ.get('DOCS_DIR')}/content/en/api/modules", exist_ok=True)
os.makedirs(f"{os.environ.get('DOCS_DIR')}/content/en/api/entities", exist_ok=True)

file_title = {
    sys.argv[1]: title,
    'standardese_files.md': "Header Files",
    'standardese_modules.md': "Modules",
    'standardese_entities.md': "Entities",
}

file_url = {
    sys.argv[1]: f"/api/{sys.argv[1].rpartition('.')[0]}",
    'standardese_files.md': "/api/headers/",
    'standardese_modules.md': "/api/modules/",
    'standardese_entities.md': "/api/entities/",
}

# Create frontmatter metadata
metadata = {
    'title': file_title[sys.argv[1]],
    'contributors': contributors,
    'layout': 'library',
    'url': file_url[sys.argv[1]],
}

post = frontmatter.load(sys.argv[1])
post.metadata = metadata
if (all(char.isspace() for char in content)):
    post.content = "No API content is indexed under this file."
else:
    post.content = content


b = io.BytesIO()
frontmatter.dump(post, b)

with open(outfile[sys.argv[1]], "wb") as f:
    f.write(b.getbuffer())

# Write the new markdown file with frontmatter
print(f"Frontmatter added successfully to {outfile[sys.argv[1]]}!")
