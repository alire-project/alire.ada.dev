---
layout: crate
crate: "espidf_wear_levelling"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/espidf_wear_levelling"]
tags: ["a0b",
"embedded",
"esp",
"esp32",
"espidf",
"wear-levelling"]
version: "0.1.0"
short_description: "Ada/ESP-IDF: Wear Levelling bindings"
dependencies: [{crate: "espidf_partition", version: "^0.1.0"}]
configuration_variables: []
configuration_values: []

---
Ada bindings for the ESP-IDF Wear Levelling component (`wear_levelling`).

Covers mounting of the wear levelling layer on top of a flash partition (`wl_mount`).
The resulting handle is used by the FAT filesystem and USB mass storage bindings.


