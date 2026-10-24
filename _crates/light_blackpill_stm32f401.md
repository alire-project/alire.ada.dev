---
layout: crate
crate: "light_blackpill_stm32f401"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/light-startup"]
tags: ["embedded",
"bsp",
"light",
"blackpill",
"stm32",
"stm32f4",
"stm32f401"]
version: "0.3.0"
short_description: "BlackPill STM32F401 BSP for `light` GNAT Runtime"
dependencies: [{crate: "a0b_stm32f401", version: "*"}]
configuration_variables: [{name: 'STM32F401', type: 'Enum (CB, CC, CD, CE)', default: "CB"}]
configuration_values: [{crate: 'a0b_armv7m', settings: [{name: 'fpu_extension', value: "VFPv4"}]}]

---


