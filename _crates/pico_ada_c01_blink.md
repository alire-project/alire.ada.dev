---
layout: crate
crate: "pico_ada_c01_blink"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://pi-ada-tutorial.sourceforge.io/pico_ada_c01_blink"]
tags: ["raspberry",
"pi",
"pico",
"rp2040",
"ada2022",
"embedded"]
version: "1.8.0"
short_description: "Chapter 1: Blinking LEDs - Getting Started on the Raspberry Pi Pico"
dependencies: [{crate: "pico_bsp", version: "^2.2"},
{crate: "pico_xbsp", version: "^1.8"}]
configuration_variables: []
configuration_values: [{crate: 'pico_xbsp', settings: [{name: 'Event_Log_Output', value: "uart"}]}]

---
My first steps into Ada programming on the Pico: from Jeremy Grosser's classic
blink example through explicit pin control to using an external LED, plus thoughts on the elegant (but still
experimental) Ravenscar profile.

Starting simple with LED blinking in Ada - internal LED, external LED with proper renaming, and a look at why Ravenscar
looks so clean (even if it's not quite ready for everyday use yet).

Contained in Chapter 01 are:

1. blink	     - Jeremy Grosser Ada sample
2. sketch_01_1_blink - Chapter 1.1 Blink internal LED
3. sketch_01_2_blink - Chapter 1.2 Blink external LED


