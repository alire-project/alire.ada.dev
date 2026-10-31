---
layout: crate
crate: "minimal_containers"
authors: ["Simon Wright"]
maintainers: ["Simon Wright <simon@pushface.org>"]
licenses: ["GPL-3.0-or-later WITH GCC-exception-3.1"]
websites: ["https://github.com/simonjwright/minimal_containers"]
tags: ["containers"]
version: "1.2.1"
short_description: "Much reduced version of Ada.Containers (bounded Maps, Vectors)"
dependencies: []
configuration_variables: []
configuration_values: []

---
The motivation for these containers was use in [ColdFrame](https://simonjwright.github.io/coldframe/), an open-source code generator backend for use with UML tools in a restricted environment (a BBC micro:bit).

In such an environment, it's normal to strip out unused code and data at link time (`-gc-sections` with GNU `ld`, `-dead_strip` with Apple `ld`).

Unfortunately, it turns out that no primitive subprograms of tagged types can be stripped (they are all referenced by the dispatch table).

These containers are still tagged, because (without compiler extensions) ColdFrame expects to use prefixed notation (_object_._primitive subprogram (...)_, as would users). However, the number of subprograms has been much reduced.


