---
layout: crate
crate: "a0b_awaits_armv7m"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/a0b-awaits-armv7m"]
tags: ["a0b",
"await",
"armv7m",
"embedded"]
version: "0.1.0"
short_description: "A0B: Await for ARMv7M"
dependencies: [{crate: "a0b_armv7m", version: "^0.6.0"},
{crate: "a0b_callbacks", version: "^0.3.0"}]
configuration_variables: []
configuration_values: [{crate: 'a0b_base', settings: [{name: 'tasking', value: "none"}]}]

---
ARMv7-M specific wait and synchronization primitives for bare-metal Ada applications, built explicitly for GNAT `light` runtimes on Cortex-M3/M4/M7 microcontrollers.


