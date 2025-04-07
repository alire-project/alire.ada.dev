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
version: "1.5.0"
short_description: "Atari / SIO2PC tools for ATR-files"
dependencies: [{crate: "adacl", version: "^5.15.1"},
{crate: "gnat", version: ">=12 & <2000"}]
configuration_variables: []
configuration_values: []

---
This is a tool to analyse, create and convert ATR files.

ATR files are used by various Atari 8bit emulators and hardware add ons. Currently implemented

# Print Header

```sh
>atr_tools-main --print-header test-DD-DS-80.atr 
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

# Create Floppy image

```sh
>atr_tools-main --verbose --format-floppy --density=DD --side=SS --track=80 test-DD-SS-80.atr
File created     : test-DD-SS-80.atr
Sector size      :          256
Sector per track :           18
Tracks per side  :           80
Sides per disk   :            1
```

Development versions available with:

```sh
alr index --add "git+https://github.com/krischik/alire-index.git#develop" --name krischik
```

Source code and testsuite available on [SourceForge](https://git.code.sf.net/p/tutorial-6502/git)


