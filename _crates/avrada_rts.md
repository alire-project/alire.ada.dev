---
layout: crate
crate: "avrada_rts"
authors: ["Adacore",
"Rolf Ebert"]
maintainers: ["Rolf Ebert <rolf.ebert@gcc.gmx.de>"]
licenses: ["GPL-2.0-or-later WITH GCC-exception-3.1"]
websites: ["https://sourceforge.net/projects/avr-ada/"]
tags: ["avr",
"embedded",
"rts"]
version: "2.0.1"
short_description: "Minimal run time system (RTS) for AVR 8bit controllers"
dependencies: [{crate: "gnat_avr_elf", version: "^11 | ^12.2"}]
configuration_variables: [{name: 'AVR_MCU', type: 'String', default: "atmega328p"},
{name: 'Clock_Frequency', type: 'Integer range 0 .. 9223372036854775807', default: "0"},
{name: 'Sec_Stack_Size', type: 'Integer range 0 .. 1024', default: "63"}]
configuration_values: []

---


