---
layout: crate
crate: "cortex_m"
authors: ["AdaCore"]
maintainers: ["chouteau@adacore.com"]
licenses: ["BSD-3-Clause"]
websites: ["https://github.com/AdaCore/Ada_Drivers_Library/"]
tags: ["embedded",
"arm",
"nostd"]
version: "1.1.0"
short_description: "Drivers for Cortex-M micro-controllers (NVIC, SysTick, etc.)"
dependencies: [{crate: "gnat_arm_elf", version: ">=12"},
{crate: "hal", version: "~0.3 | ^1.0.0"}]
configuration_variables: [{name: 'core', type: 'Enum (m0, m0p, m4, m4f, m7f, m7df)'}]
configuration_values: []

---
# cortex-m

Ada drivers for the peripherals of ARM Cortex-M micro-controllers
(NVIC,\nSysTick, etc.)

This crate is a snapshot of the `Cortex-M` support in [Ada Drivers
Library](https://github.com/AdaCore/Ada_Drivers_Library/tree/master/arch/ARM/cortex_m).

Any bug report, issue, contribution must be adressed to the [Ada Drivers
Library](https://github.com/AdaCore/Ada_Drivers_Library/) repo.



