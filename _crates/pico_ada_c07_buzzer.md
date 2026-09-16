---
layout: crate
crate: "pico_ada_c07_buzzer"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://pi-ada-tutorial.sourceforge.io/pico_ada_c07_buzzer"]
tags: ["raspberry",
"pi",
"pico",
"rp2040",
"tasking",
"light-tasking",
"ada2022",
"embedded"]
version: "1.8.0"
short_description: "Chapter 7: Controlling active and passive Buzzer"
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
Learn how to drive active and passive buzzers with the Raspberry Pi Pico using Ada.
From simple doorbell switches to PWM-generated sweeping alert tones - including hardware tips with flyback diodes and
oscilloscope measurements.

In this chapter we connect both active and passive buzzers to the Pico. We start with a simple button-controlled
doorbell, improve the passive buzzer with bit-banging, and finally create a clean sweeping alert tone using the Pico's
PWM hardware. We also look at inductive-load protection and why a diode is essential.

Contained in Chapter 07 are:

1. sketch_07_1_doorbell.adb	- Chapter 7.1 Doorbell with active buzzer
2. sketch_07_2_alert.adb	- Chapter 7.2 Alert with passive buzzer
3. pwm_alert.adb		- Use PWM to drive an passive buzzer
4. buzz_and_blink-main.adb	- Use tasks to drive both a buzzer and an LED

Read the full tutorial at [Chapter 7: Controlling a Buzzer](https://pi-ada-tutorial.sourceforge.io/pico_ada_c07_buzzer), [GNATdoc
documentation](https://pi-ada-tutorial.sourceforge.io/gnatdoc/pico_doc/), [SourceForge
repository](https://sourceforge.net/p/pi-ada-tutorial/code/ci/master/tree/pico_ada_c07_buzzer/)


