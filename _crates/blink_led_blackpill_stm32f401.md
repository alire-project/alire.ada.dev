---
layout: crate
crate: "blink_led_blackpill_stm32f401"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/a0b-examples"]
tags: ["a0b",
"embedded",
"demo",
"blackpill",
"stm32f401"]
version: "0.1.0"
short_description: "Blink LED demo for BlackPill STM32F401"
dependencies: [{crate: "a0b_armv7m_systick_clock_timer", version: "*"},
{crate: "a0b_stm32f401_gpio", version: "*"},
{crate: "a0b_timer", version: "*"},
{crate: "light_blackpill_stm32f401", version: "*"}]
configuration_variables: []
configuration_values: []

---


