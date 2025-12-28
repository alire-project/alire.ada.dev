---
layout: crate
crate: "spawn_glib"
authors: ["AdaCore"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>",
"Max Reznik <reznikmm@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/AdaCore/spawn"]
tags: ["process",
"launch",
"pipe",
"glib"]
version: "25.0.0"
short_description: "A simple library to spawn processes and communicate with them."
dependencies: [{crate: "gtkada", version: ">=23"}]
configuration_variables: []
configuration_values: []

---
This is Glib integrated implementation of a spawn processes interface.

