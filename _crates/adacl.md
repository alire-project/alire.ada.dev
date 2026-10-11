---
layout: crate
crate: "adacl"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://adacl.sourceforge.net/"]
tags: ["library",
"embedded",
"spark",
"ada2022"]
version: "8.0.0"
short_description: "AdaCL: SPARK gold core shared by desktop, embedded and bare-metal"
dependencies: []
configuration_variables: []
configuration_values: []

---
Ada Class Library core crate for Ada 2022.

`adacl` is the shared root of the AdaCL family. It is suitable for both
embedded and desktop targets and is proven to SPARK gold. The former
desktop utilities no longer live here; they were moved to `adacl_desktop`
in 8.0.0.

Sister crates:

- [adacl_aunit](https://alire.ada.dev/crates/adacl_aunit) - AUnit-compatible assertions and parameterised tests
- [adacl_desktop](https://alire.ada.dev/crates/adacl_desktop) - Getopt, strings, calendar, tracing, queues, and smart pointers
- [adacl_eastrings](https://alire.ada.dev/crates/adacl_eastrings) - encoding-aware string utilities
- [adacl_embedded](https://alire.ada.dev/crates/adacl_embedded) - lightweight tracing and text I/O for embedded targets
- [adacl_regexp](https://alire.ada.dev/crates/adacl_regexp) - regular expressions and SPITBOL patterns
- [adacl_sar](https://alire.ada.dev/crates/adacl_sar) - search and replace for String, Wide_String, and Wide_Wide_String
- [adacl_serial](https://alire.ada.dev/crates/adacl_serial) - SPARK-friendly serial I/O helpers over GNAT.Serial_Communications

Source: [SourceForge](https://sourceforge.net/p/adacl/git/ci/master/tree/adacl/src/)
Documentation: [GNATdoc](https://adacl.sourceforge.net/gnatdoc/adacl/index.html)


