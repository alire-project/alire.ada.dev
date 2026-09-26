---
layout: crate
crate: "light_arduino_due"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/light-startup"]
tags: ["a0b",
"embedded",
"bsp",
"light",
"atsam3x8e",
"sam3x8e",
"arduino",
"due"]
version: "0.3.0"
short_description: "Arduino Due Board Support Package for `light` GNAT Runtime"
dependencies: [{crate: "a0b_atsam3x8e", version: "*"}]
configuration_variables: []
configuration_values: [{crate: 'a0b_armv7m', settings: [{name: 'fpu_extension', value: "none"}]}]

---


