---
layout: crate
crate: "espidf_fatfs"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/espidf_fatfs"]
tags: ["a0b",
"embedded",
"esp",
"esp32",
"espidf",
"fatfs"]
version: "0.1.0"
short_description: "Ada/ESP-IDF: FAT filesystem bindings"
dependencies: [{crate: "espidf_wear_levelling", version: "^0.1.0"}]
configuration_variables: []
configuration_values: []

---
Ada bindings for the ESP-IDF FAT filesystem component (`fatfs`).

Covers mounting and unmounting a FAT filesystem located in an internal flash partition
through the wear levelling layer (`esp_vfs_fat_spiflash_mount_rw_wl`), with optional
formatting when the mount fails. Once mounted, files are accessed through the ESP-IDF VFS.


