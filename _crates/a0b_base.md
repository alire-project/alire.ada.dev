---
layout: crate
crate: "a0b_base"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/a0b-base"]
tags: ["a0b",
"types",
"builtins"]
version: "0.5.0"
short_description: "Fundamental types, GCC built-ins, and base packages for Ada projects"
dependencies: []
configuration_variables: [{name: 'Tasking', type: 'Enum (none, ada, a0b)', default: "none"}]
configuration_values: []

---
The `a0b_base` crate provides the root package hierarchy and foundational components tailored for embedded, bare-metal, and low-level Ada applications. 

Key features include:
* Foundational Types: 
  - `Integer_*` and `Unsigned_*` types of various sizes (1 to 64 bits) with shift and rotate operations.
  - `Unsigned_*_Array` types and "Enumerable" modular types (2 to 8 bits).
* Low-Level Utilities: 
  - Big-endian formatted types (`A0B.Types.Big_Endian`) for low-level protocol specifications.
  - Type declarations specifically designed for use with the SVD2Ada code generator.
* Compiler Bindings: 
  - Direct bindings to GCC built-ins (such as `bswap`, `clz`, `ffs`) in `A0B.Types.GCC_Builtins`.


