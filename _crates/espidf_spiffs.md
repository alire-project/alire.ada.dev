---
layout: crate
crate: "espidf_spiffs"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/espidf_spiffs"]
tags: ["a0b",
"embedded",
"esp",
"esp32",
"espidf",
"spiffs"]
version: "0.1.0"
short_description: "Ada/ESP-IDF: SPIFFS filesystem bindings"
dependencies: [{crate: "espidf", version: "^0.2.0"}]
configuration_variables: []
configuration_values: []

---
Ada bindings for the ESP-IDF SPIFFS (SPI Flash File System) component (`spiffs`).

Covers registration of a SPIFFS partition in the ESP-IDF VFS (`esp_vfs_spiffs_register`),
after which its files are accessed through the VFS.


