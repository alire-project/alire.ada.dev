---
layout: crate
crate: "linux_hal"
authors: ["Jeremy Grosser"]
maintainers: ["Jeremy Grosser <jeremy@synack.me>"]
licenses: ["BSD-3-Clause"]
websites: ["https://github.com/JeremyGrosser/linux_hal"]
tags: ["embedded",
"hal",
"linux",
"i2c",
"smbus",
"gpio",
"spi",
"audio"]
version: "1.2.0"
short_description: "HAL drivers for Linux userspace"
dependencies: [{crate: "hal", version: "^1"},
{crate: "libgpiod", version: "^1"},
{crate: "libi2c", version: "^4"},
{crate: "libpulse", version: "^16"}]
configuration_variables: []
configuration_values: []

---


