---
layout: crate
crate: "espidf_event"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/espidf_event"]
tags: ["a0b",
"embedded",
"esp",
"esp32",
"espidf",
"event"]
version: "0.1.0"
short_description: "Ada/ESP-IDF: Event Loop Library bindings"
dependencies: [{crate: "espidf", version: "^0.2.0"}]
configuration_variables: []
configuration_values: []

---
Ada bindings for the ESP-IDF Event Loop Library (`esp_event`).

Covers creation of the default event loop and registration/unregistration of event handlers,
as needed by other components (Wi-Fi, network interfaces) to report asynchronous events.


