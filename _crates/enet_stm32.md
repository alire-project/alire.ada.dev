---
layout: crate
crate: "enet_stm32"
authors: ["Stephane Carrez"]
maintainers: ["Stephane Carrez <Stephane.Carrez@gmail.com>",
"Max Reznik <reznikmm@gmail.com>"]
licenses: ["Apache-2.0"]
websites: ["https://github.com/stcarrez/ada-enet"]
tags: ["stm32",
"enet",
"driver",
"network"]
version: "1.0.0"
short_description: "ENet driver for STM32"
dependencies: [{crate: "cortex_m", version: "~0.5"},
{crate: "enet", version: "^1.0.0"},
{crate: "ethernet", version: "^1.0.0"}]
configuration_variables: [{name: 'Extra_Buffers', type: 'Integer range 0 .. 1024', default: "8"},
{name: 'RX_Ring_Size', type: 'Integer range 0 .. 1024', default: "8"},
{name: 'TX_Ring_Size', type: 'Integer range 0 .. 1024', default: "8"}]
configuration_values: []

---


