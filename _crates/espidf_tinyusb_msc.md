---
layout: crate
crate: "espidf_tinyusb_msc"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/espidf_tinyusb_msc"]
tags: ["a0b",
"embedded",
"esp",
"esp32",
"espidf",
"tinyusb"]
version: "0.1.0"
short_description: "Ada/ESP-IDF: TinyUSB Mass Storage Class bindings"
dependencies: [{crate: "espidf_tinyusb", version: "^0.1.0"},
{crate: "espidf_wear_levelling", version: "^0.1.0"}]
configuration_variables: []
configuration_values: []

---
Ada bindings for the Mass Storage Class (MSC) part of Espressif's TinyUSB integration
(`espressif/esp_tinyusb`).

Covers creation of an MSC storage backed by a wear-levelled internal flash partition,
and switching of its mount point between the application (VFS) and the USB host.


