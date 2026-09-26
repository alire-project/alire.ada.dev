---
layout: crate
crate: "adacl_desktop"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://adacl.sourceforge.net/"]
tags: ["library",
"command-line",
"trace",
"logging",
"string",
"container",
"smart-pointer",
"ada2022"]
version: "8.0.0"
short_description: "AdaCL desktop: Getopt, strings, calendar, tracing, queues, pointers"
dependencies: [{crate: "adacl", version: "^8.0"}]
configuration_variables: []
configuration_values: []

---
Ada Class Library desktop crate for Ada 2022.

This crate holds the former `adacl` desktop API. Use it for hosted
applications that need command-line handling, wide-character text,
diagnostics, queues, or smart pointers. It depends on the SPARK-proven
`adacl` core.

Features:

- Getopt: command-line argument parser with wide character support
- Strings: utilities for String, Wide_String, and Wide_Wide_String
- Calendar: time and date utilities with wide character support
- Tracing: diagnostic trace utility with wide character support
- Protected Queue: finish, wait, and abort operations
- Smart Pointers:
  - Reference-counted pointers
  - Unique pointers (C++-style)
  - Shared pointers (C++-style)

Source: [SourceForge](https://sourceforge.net/p/adacl/git/ci/master/tree/adacl_desktop/src/)
Documentation: [GNATdoc](https://adacl.sourceforge.net/gnatdoc/adacl_desktop/index.html)


