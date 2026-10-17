---
layout: crate
crate: "wordlist"
authors: ["Alejandro R. Mosteo"]
maintainers: ["Alejandro R. Mosteo <alejandro@mosteo.com>"]
licenses: ["MIT"]
websites: []
tags: ["wordlist",
"english"]
version: "0.1.3"
short_description: "An English word list"
dependencies: [{crate: "aaa", version: "~0.2.5"},
{crate: "ada_toml", version: "~0.3.0"},
{crate: "gnat", version: ">=11 & <2000"},
{crate: "resources", version: "~0.1.0"}]
configuration_variables: [{name: 'Logging', type: 'Boolean', default: "false"},
{name: 'Wordset', type: 'Enum (small, large, wordle)', default: "large"}]
configuration_values: []

---


