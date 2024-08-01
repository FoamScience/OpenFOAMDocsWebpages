---
title: About ODW
linkTitle: About
menu: {main: {weight: 10}}
---

{{% blocks/cover title="About ODW" image_anchor="bottom" height="auto" %}}
{{% /blocks/cover %}}

{{% blocks/lead %}}

OpenFOAM-Docs-Webpages (ODW) is a sample site using the [Docsy](https://github.com/google/docsy)
Hugo theme and [standardese](https://github.com/standardese/standardese) to generate stunning
and actually useful documentation pages which stay up-to-date with minimal effort.

It's for the lazy lots of us who write OpenFOAM code frequently and want to document it
in a way that's actually decent to look at and browse. Reading source code files is still
better though...

Three sections are natively supported; though there is nothing holding you back of adding more:

{{% /blocks/lead %}}

{{% blocks/section %}}

# API docs for the lazy
{.text-center}

As an alternative to Doxygen (but more feature rich), `standardese` can generate API docs
as Markdown files; and consecutive docs builds do not change the content you add in the markdown file.
{.text-center}

It uses `libclang` to parse the AST so everything that clang supports should just work. Inline comments
are still considered as documentation but it's not
recommended to fully rely on them. It's always possible to keep important notes about the classes in dedicated
markdown files (naturally with Latex support).
{.text-center}

{{% /blocks/section %}}

{{% blocks/section %}}

# Wiki-like docs
{.text-center}

The same Markdown system is used also to generate pages for things like "Getting-Started" or
a "FAQ" from your markdown input.
{.text-center}

{{% /blocks/section %}}

{{% blocks/section %}}

# A Blog
{.text-center}

I usually like to keep track of how my projects evolve over time, and a DevLog is the best tool for this purpose.
By exposing this information to the world, someone is bound to benefit from it at some point!
{.text-center}

{{% /blocks/section %}}
