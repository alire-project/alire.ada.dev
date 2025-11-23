---
layout: crate
crate: "atari_exe_tools"
authors: ["Martin Krischik"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://sourceforge.net/projects/tutorial-6502"]
tags: ["atari",
"tools",
"retrocomputing",
"ada-2022"]
version: "1.5.1"
short_description: "Cross-platform tool for analysing and inspecting Atari 8-bit EXE files"
dependencies: [{crate: "adacl", version: "^6.3.0"}]
configuration_variables: []
configuration_values: []

---
Atari EXE Tools is a robust, cross-platform utility written in Ada 2022 for analysing Atari 8-bit executable (EXE) files, used in Atari 400/800 and XL/XE systems or emulators like Altirra and Atari800. Unlike most existing tools, which are typically Windows-only, this tool operates seamlessly on macOS, Linux, and Windows, making it an essential asset for retro computing enthusiasts and developers working across diverse platforms.

Key features include:

**Header Analysis**: Extract and display detailed metadata from EXE files,
including memory start/end addresses, segment lengths, and init/run vectors.

```sh
  > exe_tools-main --print-header ./test/share/atari_check_exe_test/HELLO_C.EXE
  File: ./test/share/atari_check_exe_test/HELLO_C.EXE
  Magic: $FFFF; Start: $2E00; End: $2EF5; Length: 246
  Magic: $0000; Start: $02E2; End: $02E3; Length: 2; Init: $2E47
  Magic: $0000; Start: $2400; End: $28DE; Length: 1247
  Magic: $0000; Start: $02E0; End: $02E1; Length: 2; Run: $2401
```

Data Dumping: Output hexadecimal data from EXE files for inspection, with ATASCII portions omitted to ensure compatibility with non-UTF-8 environments.


```sh
> exe_tools-main --print-data ./test/share/atari_check_exe_test/HELLO_A.EXE
File: ./test/share/atari_check_exe_test/HELLO_A.EXE
2400: 60 60 A2 00 A9 0B 9D 42 03 A9 3F 9D 44 03 A9 24
2410: 9D 45 03 A9 2E 9D 48 03 A9 00 9D 49 03 20 56 E4
2420: A2 00 A9 07 9D 42 03 A9 6D 9D 44 03 A9 24 9D 45
2430: 03 A9 01 9D 48 03 A9 00 9D 49 03 20 56 E4 60 48
2440: 65 6C 6C 6F 20 57 6F 72 6C 64 21 9B 28 75 73 69
2450: 6E 67 20 61 20 65 78 65 63 75 74 61 62 6C 65 20
2460: 69 6E 20 61 73 73 65 6D 62 6C 65 72 29 9B 00
02E0: 02 24
Run: $2402
```

The tool includes a comprehensive AUnit test suite to ensure reliability across
platforms and Atari 8-bit configurations. Source code and tests are available
on SourceForge. Detailed GNATdoc documentation can be found at 6502
Tutorial.


