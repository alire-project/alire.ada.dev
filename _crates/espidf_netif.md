---
layout: crate
crate: "espidf_netif"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/espidf_netif"]
tags: ["a0b",
"embedded",
"esp",
"esp32",
"espidf",
"netif"]
version: "0.1.0"
short_description: "Ada/ESP-IDF: network interface and sockets bindings"
dependencies: [{crate: "espidf_event", version: "^0.1.0"}]
configuration_variables: []
configuration_values: []

---
Ada bindings for the ESP-IDF network interface abstraction (`esp_netif`) and the lwIP sockets API.

Covers:
- initialization of the TCP/IP stack;
- query of interface IP information;
- configuration of DHCP server options (including captive portal URI);
- BSD sockets (`socket`, `bind`, `sendto`, `recvfrom`) with typed address families,
  socket types and protocols.


