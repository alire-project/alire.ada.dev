---
layout: crate
crate: "gnatdoc_bin"
authors: ["AdaCore"]
maintainers: ["chouteau@adacore.com",
"sagaert@adacore.com"]
licenses: ["GPL-3.0-or-later WITH GCC-exception-3.1"]
websites: ["https://github.com/AdaCore/gnatdoc"]
tags: ["documentation",
"tools"]
version: "26.0.0"
short_description: "GNAT Documentation Generation Tool - Binary Release"
dependencies: []
configuration_variables: []
configuration_values: []

---
GNATdoc is a documentation tool for Ada which processes source files, extracts documentation from the sources,
and generates either annotated HTML files or Restructured Text (.rst) files.

It relies on documentation comments that it extracts from the source code. The engine in charge of extracting these comments, coupled with a cross-reference
engine, gives GNATdoc all the flexibility needed to generate accurate documentation, and report errors in cases of missing documentation.

Further information can be found in the [GNATdoc User's Guide](https://docs.adacore.com/gnatdoc-docs/users_guide/_build/html/introduction.html).

This is a binary release of GNATdoc, built from tha [GNAT-FSF-builds](https://github.com/alire-project/GNAT-FSF-builds) repository.


