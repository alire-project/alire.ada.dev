---
layout: crate
crate: "espidf_mdns"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/espidf_mdns"]
tags: ["a0b",
"embedded",
"esp",
"esp32",
"espidf",
"mdns"]
version: "0.1.0"
short_description: "Ada/ESP-IDF: mDNS bindings"
dependencies: [{crate: "espidf", version: "^0.2.0"}]
configuration_variables: []
configuration_values: []

---
Ada bindings for the mDNS (Multicast DNS) component from Espressif's ESP-Protocols
(`espressif/mdns`).

Covers initialization of the mDNS service and setting of the host name,
so the device is reachable as `<hostname>.local` on the local network.


