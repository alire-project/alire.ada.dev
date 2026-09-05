---
layout: crate
crate: "usb_embedded"
authors: ["Fabien Chouteau"]
maintainers: ["Fabien Chouteau <chouteau@adacore.com>"]
licenses: ["BSD-3-Clause"]
websites: ["https://github.com/Fabien-Chouteau/usb_embedded"]
tags: ["embedded",
"usb",
"hid",
"midi",
"nostd"]
version: "1.0.1"
short_description: "An Ada USB stack for embedded devices"
dependencies: [{crate: "bbqueue", version: "^1.0.0"},
{crate: "hal", version: "^1.0.0"}]
configuration_variables: [{name: 'Control_Buffer_Size', type: 'Integer range 256 .. 9223372036854775807', default: "256"},
{name: 'Event_Log_Buffer_Size', type: 'Integer range 0 .. 9223372036854775807', default: "0"},
{name: 'Max_Strings', type: 'Integer range 0 .. 9223372036854775807', default: "10"},
{name: 'String_Buffer_Size', type: 'Integer range 0 .. 9223372036854775807', default: "256"}]
configuration_values: []

---


