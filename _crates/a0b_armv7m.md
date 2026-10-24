---
layout: crate
crate: "a0b_armv7m"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/a0b-armv7m"]
tags: ["a0b",
"embedded",
"armv7m",
"cortex-m",
"cortex-m3",
"cortex-m4",
"cortex-m7"]
version: "0.5.0"
short_description: "ARMv7-M support (Cortex-M3, Cortex-M4, Cortex-M7)"
dependencies: [{crate: "a0b_base", version: "^0.5.0"},
{crate: "gnat_arm_elf", version: "^16"}]
configuration_variables: [{name: 'FPU_Extension', type: 'Enum (undefined, none, VFPv4, VFPv5)', default: "undefined"}]
configuration_values: []

---
Low-level Ada support for ARMv7-M processors (Cortex-M3, Cortex-M4, and
Cortex-M7) in the A0B embedded framework.

The crate provides register definitions for the NVIC, SysTick, System Control
Block, MPU, floating-point support, cache control, Debug Control Block, and
Data Watchpoint and Trace unit. It also includes wrappers for processor
instructions and access to system registers, interrupt control utilities,
cache maintenance operations, and cycle-counter profiling utilities.

Startup helpers support copying code and initialized data, clearing BSS
sections, initializing ITCM and DTCM sections, and enabling the floating-point
coprocessor. These building blocks are intended for board support packages,
runtime startup code, and other low-level components. Availability of
individual hardware features depends on the target processor.


