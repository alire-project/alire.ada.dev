---
layout: crate
crate: "a0b_awaits_astc"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/a0b-awaits-astc"]
tags: ["a0b",
"await",
"embedded",
"tasking"]
version: "0.1.0"
short_description: "A0B: Await on Ada.Synchronous_Task_Control"
dependencies: [{crate: "a0b_callbacks", version: "^0.3.0"}]
configuration_variables: []
configuration_values: [{crate: 'a0b_base', settings: [{name: 'tasking', value: "ada"}]}]

---
A0B: Portable wait and synchronization primitives for Ada applications running on standard GNAT tasking runtimes.


