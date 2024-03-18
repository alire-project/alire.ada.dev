---
layout: crate
crate: "hirtos"
authors: ["J. German Rivera"]
maintainers: ["J. German Rivera <jgrivera67@gmail.com>"]
licenses: ["Apache-2.0"]
websites: ["https://github.com/jgrivera67/HiRTOS"]
tags: ["rtos"]
version: "1.0.0"
short_description: "High-Integrity RTOS"
dependencies: [{crate: "gnat_arm_elf", version: "^13.2.1"},
{crate: "gnatprove", version: "^13.2.1"}]
configuration_variables: [{name: 'Separation_Kernel_Debug_Tracing_On', type: 'Boolean', default: "false"}]
configuration_values: []

---


