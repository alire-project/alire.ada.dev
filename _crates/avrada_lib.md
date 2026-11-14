---
layout: crate
crate: "avrada_lib"
authors: ["Rolf Ebert"]
maintainers: ["Rolf Ebert <rolf.ebert.gcc@gmx.de>"]
licenses: ["GPL-2.0-or-later WITH GCC-exception-3.1"]
websites: ["https://sourceforge.net/projects/avr-ada/"]
tags: ["avr",
"embedded",
"drivers"]
version: "2.1.0"
short_description: "Library of drivers for AVR microcontrollers"
dependencies: [{crate: "avrada_mcu", version: "^2.1"},
{crate: "avrada_rts", version: "^2.0.1"},
{crate: "gnat_avr_elf", version: "^11 | ^12.2"}]
configuration_variables: [{name: 'Process_Timing_Events_In_Ticks', type: 'Boolean', default: "false"},
{name: 'UART_Receive_Mode', type: 'Enum (polled, interrupt)', default: "polled"}]
configuration_values: []

---


