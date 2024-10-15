---
layout: crate
crate: "pico_bsp"
authors: ["Jeremy Grosser"]
maintainers: ["Jeremy Grosser <jeremy@synack.me>"]
licenses: ["BSD-3-Clause"]
websites: ["https://pico-doc.synack.me/"]
tags: ["embedded",
"nostd",
"raspberrypi",
"pico",
"rp2040",
"bsp"]
version: "2.0.0"
short_description: "Board support package for Raspberry Pi Pico"
dependencies: [{crate: "hal", version: "~0.3"},
{crate: "rp2040_hal", version: "^2.0"}]
configuration_variables: []
configuration_values: [{crate: 'rp2040_hal', settings: [{name: 'Flash_Chip', value: "w25qxx"}]}]

---


