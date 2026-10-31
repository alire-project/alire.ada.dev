---
layout: crate
crate: "stm32f0x2_hal"
authors: ["AdaCore",
"Marc Poulhiès"]
maintainers: ["Marc Poulhiès <dkm@kataplop.net>"]
licenses: ["GPL-3.0-or-later AND BSD-3-Clause"]
websites: ["https://github.com/dkm/stm32f0x2_hal-ada"]
tags: ["embedded",
"stm32f0",
"nostd",
"drivers"]
version: "0.1.0"
short_description: "Drivers and HAL for stm32f0x2 mcu family"
dependencies: [{crate: "cortex_m", version: "~0.5"},
{crate: "gnat_arm_elf", version: "^12"},
{crate: "hal", version: "~0.3"},
{crate: "usb_embedded", version: "~0.3"}]
configuration_variables: [{name: 'Use_Startup', type: 'Boolean', default: "true"}]
configuration_values: [{crate: 'atomic', settings: [{name: 'backend', value: "armv6m"}]},
{crate: 'cortex_m', settings: [{name: 'core', value: "m0"}]}]

---


