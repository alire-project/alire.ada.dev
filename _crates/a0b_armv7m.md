---
layout: crate
crate: "a0b_armv7m"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/a0b-base"]
tags: ["a0b",
"embedded",
"armv7m",
"cortex-m",
"cortex-m3",
"cortex-m4",
"cortex-m7"]
version: "0.3.0"
short_description: "ARMv7-M support (Cortex-M3, Cortex-M4, Cortex-M7)"
dependencies: [{crate: "a0b_base", version: "*"},
{crate: "gnat_arm_elf", version: "*"}]
configuration_variables: [{name: 'FPU_Extension', type: 'Enum (none, VFPv4, VFPv5)'}]
configuration_values: []

---


