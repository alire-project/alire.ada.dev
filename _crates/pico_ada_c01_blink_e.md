---
layout: crate
crate: "pico_ada_c01_blink_e"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://pi-ada-tutorial.sourceforge.io/pico_ada_c01_blink_e"]
tags: ["raspberry",
"pi",
"pico",
"rp2040",
"tasking",
"light-tasking",
"ada2022",
"embedded"]
version: "1.8.0"
short_description: "Chapter 1 Reloaded: Blinking LEDs on Both Cores (embedded runtime)"
dependencies: [{crate: "embedded_rp2040", version: "^15.4"},
{crate: "pico_bsp", version: "^2.2"},
{crate: "pico_xbsp", version: "^1.8"},
{crate: "rp2040_hal", version: "^2.7.1"}]
configuration_variables: []
configuration_values: [{crate: 'embedded_rp2040', settings: [{name: 'Board', value: "rpi_pico"}, 
{name: 'Max_CPUs', value: "2"}]},
{crate: 'pico_xbsp', settings: [{name: 'Variant', value: "tasking"}]},
{crate: 'rp2040_hal', settings: [{name: 'Interrupts', value: "bb_runtimes"}, 
{name: 'Use_Startup', value: "false"}]}]

---
Blinking LEDs on Both Cores Updated Chapter 1 using the new embedded_rp2040
runtime - now with proper multi-core support, Ada.Real_Time, and delay until for accurate, slippage-free LED blinking on
Raspberry Pi Pico.

After quick community help, I rewrote Chapter 1 to use light tasking on both RP2040 cores. No more manual timers -
clean, precise dual-LED blinking with zero slippage.

Contained in Chapter 01 reloaded are:

1. blink	     - Jeremy Grosser Ada sample
2. sketch_01_1_blink - Chapter 1.1 Blink internal LED
3. sketch_01_2_blink - Chapter 1.2 Blink external LED
4. double_blink-main - double blink using both cores.

Read the full tutorial at [Chapter 1 Reloaded: Dual-Core Light Tasking - Blinking LEDs on Both
Cores](https://pi-ada-tutorial.sourceforge.io/pico_ada_c01_blink_e), [GNATdoc
documentation](https://pi-ada-tutorial.sourceforge.io/gnatdoc/pico_doc/), [SourceForge
repository](https://sourceforge.net/p/pi-ada-tutorial/code/ci/master/tree/pico2_ada_c01_blink_lt/)


