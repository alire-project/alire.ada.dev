---
layout: crate
crate: "pico_ada_c03_led_bar"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://pi-ada-tutorial.sourceforge.io/pico_ada_c03_led_bar"]
tags: ["raspberry",
"pi",
"pico",
"rp2040",
"tasking",
"light-tasking",
"ada2022",
"embedded"]
version: "1.8.0"
short_description: "Chapter 3: Cylon LED Bar: flowing light upgraded to a menacing scanner"
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
Building a smooth flowing LED bar on the Raspberry Pi Pico with Ada - from a simple
chasing light to a proper menacing Cylon scanner effect using real-time delays.

In this chapter we turn ten LEDs into a flowing light bar. We start with the basic Freenove example using an array of
RP.GPIO.GPIO_Point (aliased limited tagged types). We then improve it with a pre-calculated sine-harmonic timing table
to create a realistic Cylon scanner - all done with Ada.Real_Time and zero floating-point at runtime for perfect
jitter-free movement.

Contained in Chapter 03 are:

1. Sketch_03_1_Flowing_Light  - straight port of the classic flowing light
2. Cylon_Light		      - the final dramatic Cylon scanner with organic easing
3. Cylon_Light_Float	      - Floating point version of Cylon_Light

Read the full tutorial at [Chapter 3 - Cylon LED Bar: flowing light upgraded to a menacing
scanner](https://pi-ada-tutorial.sourceforge.io/pico_ada_c03_led_bar), [GNATdoc
documentation](https://pi-ada-tutorial.sourceforge.io/gnatdoc/pico_doc/), [SourceForge
repository](https://sourceforge.net/p/pi-ada-tutorial/code/ci/master/tree/pico_ada_c03_led_bar/)

(The Cylons did nothing wrong. Humans created the perfect companion species and then completely messed it up.)


