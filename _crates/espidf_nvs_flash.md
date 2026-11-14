---
layout: crate
crate: "espidf_nvs_flash"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/espidf_nvs_flash"]
tags: ["a0b",
"embedded",
"esp",
"esp32",
"espidf",
"nvs-flash"]
version: "0.1.0"
short_description: "Ada/ESP-IDF: Non-Volatile Storage (NVS) bindings"
dependencies: [{crate: "espidf", version: "^0.2.0"}]
configuration_variables: []
configuration_values: []

---
Ada bindings for the ESP-IDF Non-Volatile Storage library (`nvs_flash`).

Covers initialization of the NVS partition, opening/closing namespaces, key lookup,
reading and writing string values, and committing changes.


