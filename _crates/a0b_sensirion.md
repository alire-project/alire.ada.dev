---
layout: crate
crate: "a0b_sensirion"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/a0b-sensirion"]
tags: ["a0b",
"embedded",
"sensirion",
"sensor"]
version: "0.1.0"
short_description: "A0B: Utilities for various Sensirion's sensors"
dependencies: [{crate: "a0b_base", version: "*"}]
configuration_variables: []
configuration_values: []

---
The a0b-sensirion crate provides essential low-level utilities for interfacing with Sensirion sensors, specifically focusing on the data integrity requirements of their communication protocols.
It offers specialized routines for CRC calculation and provides automated packet encoding and decoding logic that handles the insertion and deletion of CRC bytes.
By abstracting these boilerplate tasks, the crate ensures reliable data transmission and simplifies the implementation of drivers for any Sensirion hardware utilizing checksum-protected packets.


