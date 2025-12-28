---
layout: crate
crate: "startup_gen"
authors: ["AdaCore"]
maintainers: ["chouteau@adacore.com"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://github.com/AdaCore/startup-gen"]
tags: ["embedded",
"zfp",
"nostd"]
version: "25.0.0"
short_description: "Generates startup files (crt0 and linker script)"
dependencies: [{crate: "gnatcoll", version: "~25.0.0"},
{crate: "libgpr", version: "~25.0.0"},
{crate: "templates_parser", version: "~25.0.0"}]
configuration_variables: []
configuration_values: []

---


