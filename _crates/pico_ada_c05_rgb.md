---
layout: crate
crate: "pico_ada_c05_rgb"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://pi-ada-tutorial.sourceforge.io/pico_ada_c05_rgb"]
tags: ["raspberry",
"pi",
"pico",
"rp2040",
"tasking",
"light-tasking",
"ada2022",
"embedded"]
version: "1.8.0"
short_description: "Chapter 5: Controlling an RGB LED with PWM"
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
Learn how to drive a common-cathode RGB LED using the RP2040's PWM peripherals.
This chapter introduces a reusable Ada package for colour control and demonstrates both random colours and a smooth
colour-wheel gradient.

Extend the simple LED examples to full-colour control with an RGB LED. Create a reusable `Pico.Analog.RGB_LED` package
and explore two sketches: random colours (using the embedded runtime) and a smooth colour-wheel transition.

Contained in Chapter 05 are:

2. sketch_05_1_random_color_light.adb	- Chapter 5.1 Random Color Light
3. sketch_05_2_gradient_color_light.adb - Chapter 5.2 Gradient Color Light

Read the full tutorial at [Chapter 5: Controlling an RGB LED with
PWM](https://pi-ada-tutorial.sourceforge.io/pico_ada_c05_rgb), [GNATdoc
documentation](https://pi-ada-tutorial.sourceforge.io/gnatdoc/pico_doc/), [SourceForge
repository](https://sourceforge.net/p/pi-ada-tutorial/code/ci/master/tree/pico_ada_c05_rgb/)


