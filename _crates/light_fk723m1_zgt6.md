---
layout: crate
crate: "light_fk723m1_zgt6"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/light-startup"]
tags: ["a0b",
"embedded",
"bsp",
"light",
"stm32",
"stm32h7",
"stm32h723",
"fk723m1"]
version: "0.2.0"
short_description: "FK723M1-ZGT6 BSP for `light` GNAT Runtime"
dependencies: [{crate: "a0b_stm32h723", version: "*"}]
configuration_variables: []
configuration_values: [{crate: 'a0b_armv7m', settings: [{name: 'fpu_extension', value: "VFPv5"}]}]

---


