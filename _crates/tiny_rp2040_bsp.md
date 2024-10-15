---
layout: crate
crate: "tiny_rp2040_bsp"
authors: ["Holger Rodriguez"]
maintainers: ["Holger Rodriguez <github@roseng.ch>"]
licenses: ["BSD-3-Clause"]
websites: ["https://github.com/hgrodriguez/tiny_rp2040_bsp"]
tags: ["embedded",
"nostd",
"tiny",
"rp2040",
"bsp"]
version: "0.2.1"
short_description: "Board support package for Pimoroni Tiny RP2040"
dependencies: [{crate: "hal", version: "~0.3"},
{crate: "rp2040_hal", version: "^2"},
{crate: "gnat_arm_elf", version: "^12.1.2"}]
configuration_variables: []
configuration_values: [{crate: 'rp2040_hal', settings: [{name: 'Flash_Chip', value: "w25qxx"}]}]

---


