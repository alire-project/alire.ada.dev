---
layout: crate
crate: "pico_ada_c06_neopixel"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://pi-ada-tutorial.sourceforge.io/pico_ada_c06_neopixel"]
tags: ["raspberry",
"pi",
"pico",
"rp2040",
"tasking",
"light-tasking",
"ada2022",
"embedded"]
version: "1.8.0"
short_description: "Chapter 6: Controlling 8 NeoPixel RGB LED"
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
Learn how to drive WS2812 (NeoPixel) LEDs on the Raspberry Pi Pico using the RP2040
PIO in Ada. Includes a square-wave diagnostic, fixes for the official ws2812_demo, and two complete animation sketches.

From understanding the WS2812 protocol to writing our own PIO code and creating colourful animations - everything you
need to make NeoPixels dance with Ada on the Pico.

Contained in Chapter 06 are:

1. square_wave-main.adb		 - Simple Square Wave test using PIO (for timing reference)
1. ws2812_demo.adb		 - Jeremy Grosser's WS2812 demo adapted for the RP2040 and Ada 2022
2. sketch_06_1_led_pixel.adb	 - Chapter 6.1 NeoPixel LED Pixel
3. sketch_06_2_rainbow_light.adb - Chapter 6.2 NeoPixel Rainbow Light

Read the full tutorial at [Chapter 6: Controlling an NeoPixel LED with
PWM](https://pi-ada-tutorial.sourceforge.io/pico_ada_c06_neopixel), [GNATdoc
documentation](https://pi-ada-tutorial.sourceforge.io/gnatdoc/pico_doc/), [SourceForge
repository](https://sourceforge.net/p/pi-ada-tutorial/code/ci/master/tree/pico_ada_c06_neopixel/)


