---
layout: crate
crate: "espidf_tinyusb"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/espidf_tinyusb"]
tags: ["a0b",
"embedded",
"esp",
"esp32",
"espidf",
"tinyusb"]
version: "0.1.0"
short_description: "Ada/ESP-IDF: TinyUSB device stack bindings"
dependencies: [{crate: "espidf", version: "^0.2.0"}]
configuration_variables: []
configuration_values: []

---
Ada bindings for Espressif's TinyUSB integration (`espressif/esp_tinyusb`).

Covers configuration and installation of the TinyUSB device driver. USB device classes
are provided by separate crates, e.g. `espidf_tinyusb_msc` for Mass Storage Class.


