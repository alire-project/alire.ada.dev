---
layout: crate
crate: "embedded_components"
authors: ["AdaCore"]
maintainers: ["chouteau@adacore.com"]
licenses: ["BSD-3-Clause"]
websites: ["https://github.com/AdaCore/Ada_Drivers_Library/"]
tags: ["embedded",
"nostd"]
version: "0.3.0"
short_description: "Platform agnostic drivers to interface external components"
dependencies: [{crate: "adl_middleware", version: "~0.2.0"},
{crate: "gnat", version: ">=11.2 & <2000"},
{crate: "hal", version: "~0.3.1"}]
configuration_variables: []
configuration_values: []

---
# embedded-components

Platform agnostic drivers to interface external components.

This crate is a snapshot of the `components` of [Ada Drivers
Library](https://github.com/AdaCore/Ada_Drivers_Library/tree/master/components).

Any bug report, issue, contribution must be adressed to the [Ada Drivers
Library](https://github.com/AdaCore/Ada_Drivers_Library/) repo.



