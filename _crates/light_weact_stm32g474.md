---
layout: crate
crate: "light_weact_stm32g474"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/light-startup"]
tags: ["embedded",
"bsp",
"light",
"weact",
"stm32",
"stm32g4",
"stm32g474"]
version: "0.1.0"
short_description: "WeAct STM32G474 BSP for `light` GNAT Runtime"
dependencies: [{crate: "a0b_stm32g474", version: "*"}]
configuration_variables: []
configuration_values: [{crate: 'a0b_armv7m', settings: [{name: 'fpu_extension', value: "VFPv4"}]}]

---


