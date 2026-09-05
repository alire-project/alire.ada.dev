---
layout: crate
crate: "pico_ada_c04_pwm"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://pi-ada-tutorial.sourceforge.io/pico_ada_c04_pwm"]
tags: ["raspberry",
"pi",
"pico",
"rp2040",
"tasking",
"light-tasking",
"ada2022",
"embedded"]
version: "1.8.0"
short_description: "Chapter 4: Analog LED with PWM"
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
Building smooth breathing LEDs and flowing light bars with hardware PWM on the
Raspberry Pi Pico using Ada. From jittery duty cycles to perfect linear dimming - guided by the Voltcraft MSO-5102B
oscilloscope and a deep dive into PWM slice mapping on both Pico 1 and Pico 2.

In this chapter we create a reusable Pico.Analog package for PWM-based analogue output. We start with a classic
breathing light, then move on to a flowing light bar. Along the way the MSO-5102B reveals the real behaviour of our
code, and we discover (and fix) a subtle bug in the experimental RP2350 HAL.

Contained in Chapter 04 are:

1. Pwm			       - Original PWM sample from Jeremy Grosser
2. sketch_04_1_breathing_light - Chapter 4.1 Blink internal LED
3. sketch_04_2_flowing_light_2 - Chapter 4.1 Project Meteor Flowing Light

Read the full tutorial at [Chapter 4: Analog & PWM](https://pi-ada-tutorial.sourceforge.io/pico_ada_c04_pwm), [GNATdoc
documentation](https://pi-ada-tutorial.sourceforge.io/gnatdoc/pico_doc/), [SourceForge
repository](https://sourceforge.net/p/pi-ada-tutorial/code/ci/master/tree/pico_ada_c04_pwm/)


