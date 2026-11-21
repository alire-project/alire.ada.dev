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
version: "0.6.0"
short_description: "Fundamental types, GCC built-ins, and base packages for Ada projects"
dependencies: [{crate: "gnat", version: ">16"}]
configuration_variables: [{name: 'Tasking', type: 'Enum (none, ada, a0b)', default: "none"}]
configuration_values: []

---
The `a0b_base` crate provides the root package hierarchy and foundational components tailored for low-level, embedded, and bare-metal Ada applications.

Key features include:
- Foundational Numeric Types (`A0B.Types`):
  - Fixed-size `Integer_*` and `Unsigned_*` types (1 to 64 bits).
  - Bitwise shift and rotate operations for 8, 16, 32, and 64-bit unsigned types.
- Array & Enumerable Utilities:
  - `Unsigned_*_Array` types in `A0B.Types.Arrays`.
  - Non-arithmetic modular index types (2 to 8 bits) for case statements and indexing in `A0B.Types.Enumerable`.
- Low-Level & Protocol Utilities:
  - Big-endian integer and unsigned types (`A0B.Types.Big_Endian`, sizes 16 to 64-bit) for wire-format protocols.
  - SVD2Ada support types and definitions in `A0B.Types.SVD`.
- Memory & Storage Abstractions (`A0B.Storage`):
  - Foundational memory views, explicit alignment management, and address/storage offset definitions for bare-metal drivers.
- Compiler & Target Optimization:
  - Direct bindings to GCC intrinsics (`bswap`, `clz`, `ffs`, etc.) in `A0B.Types.GCC_Builtins`.
- Build & Runtime Configuration:
  - Exposes the `a0b_base.tasking` build variable to seamlessly propagate Ada tasking mode capabilities (`none`, `ada`, `a0b`) across dependent crates.


