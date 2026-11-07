---
layout: crate
crate: "espidf_partition"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/espidf_partition"]
tags: ["a0b",
"embedded",
"esp",
"esp32",
"espidf",
"partition"]
version: "0.1.0"
short_description: "Ada/ESP-IDF: Partition API bindings"
dependencies: [{crate: "espidf", version: "^0.2.0"}]
configuration_variables: []
configuration_values: []

---
Ada bindings for the ESP-IDF Partition API (`esp_partition`).

Provides partition types and subtypes, and lookup of partitions in the partition table
(`esp_partition_find_first`). Used by the wear levelling, FAT and USB mass storage bindings
to locate their flash partitions.


