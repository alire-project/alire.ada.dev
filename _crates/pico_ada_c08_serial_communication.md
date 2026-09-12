---
layout: crate
crate: "pico_ada_c08_serial_communication"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://pi-ada-tutorial.sourceforge.io/pico_ada_c08_serial_communication"]
tags: ["raspberry",
"pi",
"pico",
"rp2040",
"tasking",
"light-tasking",
"ada2022",
"embedded"]
version: "1.8.0"
short_description: "Chapter 8: Serial Communication (UART, USB, SWD)"
dependencies: [{crate: "embedded_rp2040", version: "^15.4"},
{crate: "pico_bsp", version: "^2.2"},
{crate: "pico_xbsp", version: "^1.8"},
{crate: "rp2040_hal", version: "^2.7.1"}]
configuration_variables: []
configuration_values: [{crate: 'adacl_embedded', settings: [{name: 'Event_Log_Buffer_Size', value: "0"}, 
{name: 'Variant', value: "no_tasking"}]},
{crate: 'embedded_rp2040', settings: [{name: 'Board', value: "rpi_pico"}, 
{name: 'Max_CPUs', value: "2"}]},
{crate: 'pico_xbsp', settings: [{name: 'Variant', value: "tasking"}]},
{crate: 'rp2040_hal', settings: [{name: 'Interrupts', value: "bb_runtimes"}, 
{name: 'Use_Startup', value: "false"}]}]

---
Learn three different ways to perform serial communication with the
Raspberry Pi Pico using Ada - SWD semihosting, UART and USB CDC-ACM.

Three practical serial output methods together with complete example programs for sending and receiving data.

Contained in Chapter 08 are:

1. sketch_08_1_serial_print.adb	- Chapter 8.1 Print on all three destinations
2. sketch_08_2_serial_rw.adb	- Chapter 8.2 Read data from all three destinations

Read the full tutorial at [Chapter 8: Serial Communication (UART, USB,
SWD)](https://pi-ada-tutorial.sourceforge.io/pico_ada_c08_serial_communication), [GNATdoc
documentation](https://pi-ada-tutorial.sourceforge.io/gnatdoc/pico_doc/), [SourceForge
repository](https://sourceforge.net/p/pi-ada-tutorial/code/ci/master/tree/pico_ada_c08_serial_communication/)


