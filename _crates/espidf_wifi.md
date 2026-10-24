---
layout: crate
crate: "espidf_wifi"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/espidf_wifi"]
tags: ["a0b",
"embedded",
"esp",
"esp32",
"espidf",
"wifi"]
version: "0.1.0"
short_description: "Ada/ESP-IDF: Wi-Fi driver bindings"
dependencies: [{crate: "espidf_netif", version: "^0.1.0"}]
configuration_variables: []
configuration_values: []

---
Ada bindings for the ESP-IDF Wi-Fi driver (`esp_wifi`).

Covers:
- driver initialization, start/stop, connect/disconnect;
- mode selection (station, access point) and configuration storage;
- station and access point configuration (SSID, password, authentication mode, PMF);
- creation of default network interfaces for station and access point.


