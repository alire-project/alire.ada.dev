---
layout: crate
crate: "a0b_asynchronous_operations"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/a0b-asynchronous_operations"]
tags: ["a0b",
"asynchronous"]
version: "0.1.0"
short_description: "A0B: Asynchronous Operations"
dependencies: [{crate: "a0b_base", version: "^0.5.0"}]
configuration_variables: []
configuration_values: []

---
Common Ada types and utilities for describing asynchronous operations in
the A0B embedded framework.

The crate provides transfer descriptors that track a buffer address, the
requested transfer length, the number of bytes transferred, and the operation
state (inactive, active, success, or failure). It also includes arrays of
transfer descriptors for batch operations and helper procedures to initialize
descriptors and record successful or failed completion.


