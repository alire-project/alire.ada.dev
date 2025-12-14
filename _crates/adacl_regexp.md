---
layout: crate
crate: "adacl_regexp"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://sourceforge.net/projects/adacl/"]
tags: ["library",
"strings",
"wide-strings",
"search",
"regexp",
"unicode",
"ada2022"]
version: "7.0.1"
short_description: "AdaCL: Regex and SPITBOL Patterns with Wide Character Support"
dependencies: [{crate: "adacl", version: "^7.0.0"}]
configuration_variables: []
configuration_values: []

---
Regular expression and SPITBOL pattern matching for Ada 2022, with wide character support.

Features:
- Regular Expressions:
  - Generic implementation for any discrete element array
  - Instantiations for String, Wide_String, and Wide_Wide_String
- SPITBOL Patterns:
  - Pattern construction and matching, inspired by Macro-SPITBOL (Robert Dewar)
  - Supports String, Wide_String, and Wide_Wide_String
- Forked from GNAT.Regexp and GNAT.Spitbol with enhanced wide and wide-wide character support

Licensed under GPL-3.0-or-later. Integrates with the Ada Class Library (AdaCL).

Source: [SourceForge](https://sourceforge.net/p/adacl/git/ci/master/tree/adacl_regexp/src/)
Documentation: [GNATdoc](https://adacl.sourceforge.net/gnatdoc/adacl_regexp/index.html)


