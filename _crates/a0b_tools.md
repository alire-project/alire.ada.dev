---
layout: crate
crate: "a0b_tools"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://github.com/godunko/a0b-tools"]
tags: ["a0b",
"tools",
"runtime"]
version: "0.3.0"
short_description: "A0B Tools: Runtime Generator"
dependencies: [{crate: "a0b_base", version: "*"},
{crate: "gnat", version: "^15"},
{crate: "gnatcoll", version: "^25"},
{crate: "vss_extra", version: "*"},
{crate: "vss_text", version: "*"}]
configuration_variables: []
configuration_values: []

---
The primary tool in this crate is the `a0b-runtime` generator.
While GNAT provides several standard runtimes (such as `light`, `light-tasking`, and `embedded`), these can be difficult to customize for specific project requirements.

`a0b-tools` solves this by allowing developers to generate a tailored, project-specific runtime from a single configuration file.
It also enables the creation of runtimes for hardware platforms and MCUs that do not have prebuilt GNAT runtimes available, providing full control over startup code, linker scripts, and Ada library components.


