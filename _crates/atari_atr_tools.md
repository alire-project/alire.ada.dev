---
layout: crate
crate: "atari_atr_tools"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://sourceforge.net/projects/tutorial-6502"]
tags: ["atari",
"tools",
"retrocomputing",
"ada-2022"]
version: "1.5.1"
short_description: "Cross-platform tool for ATR disk images for Atari 8-bit systems"
dependencies: [{crate: "adacl", version: "^6.3.0"}]
configuration_variables: []
configuration_values: []

---
Atari ATR Tools is a versatile, cross-platform utility written in Ada 2022 for managing ATR disk image files used by Atari 8-bit emulators (e.g., Altirra, Atari800) and hardware add-ons like SIO2PC. Unlike most existing tools, which are Windows-only, this tool runs seamlessly on macOS, Linux, and Windows, making it ideal for retro computing enthusiasts across all major platforms.

Key features include:

**Header Analysis**: Display detailed metadata of ATR files, including sector
size, disk density, track count, and boot sector presence.

```sh
  > atr_tools-main --print-header test-DD-DS-80.atr
  File name        : test-DD-DS-80.atr
  Magic            :      16#296#
  Paragraphs       :        46056
  Sector size      :          256
  Flags            :         2#1#
  Bad Sectors      :            0
  Unused           :        16#0#
  Sectors          :         2880
  Bytes            :       736896
  Boot Sectors     : true
  Floppy disk double density, double sided, 80 track
```

**Floppy Image Creation**: Format and create ATR files for various disk
configurations (e.g., single-sided, double-density, 80 tracks).

```sh
> atr_tools-main --verbose --format-floppy --density=DD --side=SS --track=80 test-DD-SS-80.atr
File created     : test-DD-SS-80.atr
Sector size      :          256
Sector per track :           18
Tracks per side  :           80
Sides per disk   :            1
```

The tool includes a comprehensive test suite to ensure reliability across platforms and configurations. Source code and tests are available on SourceForge. Detailed GNATdoc documentation can be found at [6502 Tutorial](https://tutorial-6502.sourceforge.io/gnatdoc/atr_tools/index.html).


