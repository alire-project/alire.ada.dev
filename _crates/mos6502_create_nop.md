---
layout: crate
crate: "mos6502_create_nop"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://sourceforge.net/projects/tutorial-6502"]
tags: ["mos-6502",
"tools",
"retrocomputing",
"ada2022"]
version: "1.5.1"
short_description: "Create NOP ROM"
dependencies: [{crate: "adacl", version: "^6.3.0"}]
configuration_variables: []
configuration_values: []

---
This is a tool to create a rom image with NOP commands.

This program can be used to create a ROM immage for the MOS 6502 tutorial from Ben Eater.

Development versions available with:

```sh
alr index --add "git+https://github.com/krischik/alire-index.git#develop" --name krischik
``` 

Source code and testsuite available on [SourceForge](https://git.code.sf.net/p/tutorial-6502/git)


