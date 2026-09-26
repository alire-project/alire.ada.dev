---
layout: crate
crate: "pico_ada_c09_ad_converter"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://pi-ada-tutorial.sourceforge.io/pico_ada_c09_ad_converter"]
tags: ["raspberry",
"pi",
"pico",
"rp2040",
"tasking",
"light-tasking",
"ada2022",
"embedded"]
version: "1.9.0"
short_description: "Chapter 9: read the Pico ADC as counts, microvolts and fixed-point volts"
dependencies: [{crate: "embedded_rp2040", version: "^15.4"},
{crate: "pico_bsp", version: "^2.2"},
{crate: "pico_xbsp", version: "^1.9"},
{crate: "rp2040_hal", version: "^2.7.1"}]
configuration_variables: []
configuration_values: [{crate: 'adacl_embedded', settings: [{name: 'Event_Log_Buffer_Size', value: "0"}, 
{name: 'Variant', value: "no_tasking"}]},
{crate: 'embedded_rp2040', settings: [{name: 'Board', value: "rpi_pico"}, 
{name: 'Max_CPUs', value: "2"}]},
{crate: 'pico_xbsp', settings: [{name: 'Event_Log_Output', value: "uart"}, 
{name: 'Variant', value: "tasking"}]},
{crate: 'rp2040_hal', settings: [{name: 'Interrupts', value: "bb_runtimes"}, 
{name: 'Use_Startup', value: "false"}]}]

---
Chapter 9 - AD Converter

Ada rewrite of the Freenove "AD Converter" lesson for the Raspberry Pi Pico.

The sketch on GP26 (ADC0) prints three representations of the same
potentiometer on one UART line:

* `RP.ADC.Analog_Value` - the 12-bit code (`0 .. 4095`)
* `RP.ADC.Microvolts` - that code scaled by the HAL with a `Float`
* `Pico.Analog.Input.Volts` - a 32-bit ordinary fixed-point subtype
  (`delta 0.1 mV`, `'Small => 2**(-16)`), converted from the count
  by multiply-first / divide-second

The chapter is the notes I needed before that line made sense:

* **AGND** and **ADC_VREF** are a filtered analogue pair, not a second
  isolated supply. ADC3 (VSYS/3) and ADC4 (the on-chip temperature
  sensor) are not available as general inputs.
* The RP2040 ADC has dead zones at both rails. On my board the floor
  sits around 19 counts (~15 mV) and the ceiling around 4081. Software
  clamps those to `Volts'First` and `Volts'Last`.
* `Free_Running` plus a 2 Hz `Put_Line` leaves stale samples in the
  FIFO. The sketch uses `One_Shot`.
* The three columns are three conversions, not three formats of one
  sample. They may differ by a count or two.
* `Sketch_09_1_ADC` is `No_Return` under the Jorvik profile. The
  handler logs on `Ada.Text_IO` and re-raises; the embedded runtime
  then halts. Fine for a sample you reset with BOOTSEL. SPARK would
  want an outer loop instead.

Built against `rp2040_hal` / the Pico BSP. Watch the UART with
CoolTerm (or any 115200 8N1 terminal).

Read the full tutorial at [Chapter 9 - AD Converter: three ways to read a
voltage](https://pi-ada-tutorial.sourceforge.io/pico_ada_c09_ad_converter), [GNATdoc
documentation](https://pi-ada-tutorial.sourceforge.io/gnatdoc/pico_doc/), [SourceForge
repository](https://sourceforge.net/p/pi-ada-tutorial/code/ci/master/tree/pico_ada_c09_ad_converter/)


