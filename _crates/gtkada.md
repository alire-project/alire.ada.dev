---
layout: crate
crate: "gtkada"
authors: ["AdaCore"]
maintainers: ["chouteau@adacore.com",
"reznikmm@gmail.com"]
licenses: ["GPL-3.0-or-later WITH GCC-exception-3.1"]
websites: ["https://github.com/adacore/gtkada"]
tags: ["gtk",
"gui"]
version: "25.0.1"
short_description: "An Ada graphical toolkit based on Gtk+"
dependencies: [{crate: "libgtk3", version: ">=3.24.24"},
{crate: "make", version: "*"},
{crate: "pkg_config", version: "*"}]
configuration_variables: []
configuration_values: []

---
This crate requires Gtk3+ >= 3.24.24

