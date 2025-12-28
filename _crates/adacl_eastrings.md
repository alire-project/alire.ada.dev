---
layout: crate
crate: "adacl_eastrings"
authors: ["Martin Krischik <krischik@users.sourceforge.net>",
"Björn Persson <rombobeorn@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>",
"Björn Persson <rombobeorn@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://sourceforge.net/projects/adacl/"]
tags: ["library",
"strings",
"i18n",
"ada2022"]
version: "7.0.1"
short_description: "AdaCL: Encoding-Aware String Utilities"
dependencies: [{crate: "adacl", version: "^7.0.0"}]
configuration_variables: []
configuration_values: []

---
Encoding-aware string utilities for Ada 2022, developed by Björn Persson for robust internationalization (i18n).

Supports text processing with the following encodings:
- Universal Character Set 4, Big-Endian (UCS-4 BE)
- Universal Character Set 4, Little-Endian (UCS-4 LE)
- Universal Character Set 2, Big-Endian (UCS-2 BE)
- Universal Character Set 2, Little-Endian (UCS-2 LE)
- Unicode Transformation Format 16, Big-Endian (UTF-16 BE)
- Unicode Transformation Format 16, Little-Endian (UTF-16 LE)
- Unicode Transformation Format 8 (UTF-8)
- American Standard Code for Information Interchange (ASCII)
- ISO/IEC 8859-1 (Latin-1)
- Code Page 850 (DOS Latin-1)
- Windows Code Page 1252

Additional features:
- Text I/O for encoding-aware input/output
- Basic command-line parsing for internationalized text

Licensed under GPL-3.0-or-later. Integrates with the Ada Class Library (AdaCL).

Source: [SourceForge](https://sourceforge.net/p/adacl/git/ci/master/tree/adacl_eastrings/src/)
Documentation: [GNATdoc](https://adacl.sourceforge.net/gnatdoc/adacl_eastrings/index.html)


