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
version: "1.5.0"
short_description: "Atari tools for for handling EXE-files"
dependencies: [{crate: "adacl", version: "^5.15.1"},
{crate: "gnat", version: ">=12 & <2000"}]
configuration_variables: []
configuration_values: []

---
This is a tool to analyse Atari 8 bit EXE files.

# Print Header

```sh
>exe_tools-main --print-header ./test/share/atari_check_exe_test/HELLO_C.EXE"
File: ./test/share/atari_check_exe_test/HELLO_C.EXE
Magic: $FFFF; Start: $2E00; End: $2EF5; Length: 246
Magic: $0000; Start: $02E2; End: $02E3; Length: 2; Init: $2E47
Magic: $0000; Start: $2400; End: $28DE; Length: 1247
Magic: $0000; Start: $02E0; End: $02E1; Length: 2; Run: $2401
```

# Print Data

```sh
--print-data ./test/share/atari_check_exe_test/HELLO_A.EXE"
File: ./test/share/atari_check_exe_test/HELLO_A.EXE
2400: 60 60 A2 00 A9 0B 9D 42 03 A9 3F 9D 44 03 A9 24  
2410: 9D 45 03 A9 2E 9D 48 03 A9 00 9D 49 03 20 56 E4  
2420: A2 00 A9 07 9D 42 03 A9 6D 9D 44 03 A9 24 9D 45  
2430: 03 A9 01 9D 48 03 A9 00 9D 49 03 20 56 E4 60 48  
2440: 65 6C 6C 6F 20 57 6F 72 6C 64 21 9B 28 75 73 69  
2450: 6E 67 20 61 20 65 78 65 63 75 74 61 62 6C 65 20  
2460: 69 6E 20 61 73 73 65 6D 62 65 72 29 9B 00        
02E0: 02 24                                            
Run: $2402
>exe_tools-main 
```

The ATASCII part of the hexdump has been removed as Alire is not UTF8 compatible.

Development versions and testsuite available using the follwowing index:

```sh
alr index --add "git+https://github.com/krischik/alire-index.git#develop" --name krischik
```

Source code including AUnit tests available on [SourceForge](https://git.code.sf.net/p/tutorial-6502/git)


