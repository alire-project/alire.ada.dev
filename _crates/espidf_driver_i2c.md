---
layout: crate
crate: "espidf_driver_i2c"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/espidf_driver_i2c"]
tags: ["embedded",
"esp32",
"espidf",
"driver",
"i2c"]
version: "0.1.0"
short_description: "Ada/ESP-IDF I2C master/slave driver"
dependencies: [{crate: "espidf", version: "*"}]
configuration_variables: []
configuration_values: []

---
Ada bindings for the ESP-IDF esp_driver_i2c component. This crate provides a native Ada interface for I2C master and slave operations, compatible with ESP-IDF v6.0 and later.


