---
layout: crate
crate: "clic"
authors: ["Alejandro R. Mosteo",
"Fabien Chouteau"]
maintainers: ["alejandro@mosteo.com",
"Fabien Chouteau <fabien.chouteau@gmail.com>"]
licenses: ["MIT AND GPL-3.0-or-later WITH GCC-exception-3.1"]
websites: ["https://github.com/alire-project/clic"]
tags: ["cli",
"command-line",
"user-input",
"tty"]
version: "0.3.0"
short_description: "Command Line Interface Components"
dependencies: [{crate: "aaa", version: "~0.2.4"},
{crate: "ada_toml", version: "~0.2|~0.3"},
{crate: "ansiada", version: "^1.0"},
{crate: "simple_logging", version: "^1.2.0"}]
configuration_variables: []
configuration_values: []

---
Command Line Interface Components:
 - "git like" subcommand handling
 - TTY color and formatting
 - User input queries
 - User configuration


