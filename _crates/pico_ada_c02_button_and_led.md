---
layout: crate
crate: "pico_ada_c02_button_and_led"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://pi-ada-tutorial.sourceforge.io/pico_ada_c02_button_and_led"]
tags: ["raspberry",
"pi",
"pico",
"rp2040",
"tasking",
"light-tasking",
"ada2022",
"embedded"]
version: "1.8.0"
short_description: "Chapter 2: Button controled LEDs"
dependencies: [{crate: "light_tasking_rp2040", version: "^15.4"},
{crate: "pico_bsp", version: "^2.2"},
{crate: "pico_xbsp", version: "^1.8"},
{crate: "rp2040_hal", version: "^2.7.1"}]
configuration_variables: []
configuration_values: [{crate: 'light_tasking_rp2040', settings: [{name: 'Board', value: "rpi_pico"}, 
{name: 'Max_CPUs', value: "2"}]},
{crate: 'pico_xbsp', settings: [{name: 'Variant', value: "tasking"}]},
{crate: 'rp2040_hal', settings: [{name: 'Interrupts', value: "bb_runtimes"}, 
{name: 'Use_Startup', value: "false"}]}]

---
Controlling an LED with a button on the Raspberry Pi Pico using Ada - two simple
but useful interaction examples.

In this chapter I combine a push button with an LED. We start with basic on/off control, then move to a toggle-style
table lamp with software debounce.

Contained in Chapter 02 are:

1. sketch_02_1_button_and_led - Chapter 2.1 Switch LED with Button
2. sketch_02_2_table_lamp     - Chapter 2.2 Simple table lamp

Read the full tutorial at [Chapter 2 - Button &
LED](https://pi-ada-tutorial.sourceforge.io/pico_ada_c02_button_and_led), [GNATdoc
documentation](https://pi-ada-tutorial.sourceforge.io/gnatdoc/pico_doc/), [SourceForge
repository](https://sourceforge.net/p/pi-ada-tutorial/code/ci/master/tree/pico_ada_c02_button_and_led/)


