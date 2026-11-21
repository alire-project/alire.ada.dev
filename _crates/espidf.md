---
layout: crate
crate: "espidf"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/espidf"]
tags: ["a0b",
"embedded",
"esp",
"esp32",
"espidf"]
version: "0.2.0"
short_description: "Ada/ESP-IDF: common types and utilities for ESP-IDF bindings"
dependencies: [{crate: "a0b_base", version: "^0.5.0"}]
configuration_variables: [{name: 'Build_Environment', type: 'Enum (ada_only, espidf)', default: "ada_only"}]
configuration_values: []

---
Root crate of the Ada bindings for the Espressif IoT Development Framework (ESP-IDF).

Provides definitions shared by all `espidf_*` binding crates:
- C types used across ESP-IDF APIs (`esp_err_t`, `size_t`, ...);
- conversion of strings between Ada and C;
- conversion of `esp_err_t` error codes into Ada exceptions.


