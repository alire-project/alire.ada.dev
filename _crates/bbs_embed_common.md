---
layout: crate
crate: "bbs_embed_common"
authors: ["Brent Seidel"]
maintainers: ["Brent Seidel <brentseidel@mac.com>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://github.com/BrentSeidel/BBS-BBB-Ada"]
tags: ["embedded"]
version: "0.2.0"
short_description: "Abstract hardware drivers and drivers for some i2c bus devices."
dependencies: [{crate: "bbs", version: "~0.1.0"}]
configuration_variables: []
configuration_values: []

---
This crate contains base classes for some hardware devices such as Analog
Inputs, GPIO pins, I2C bus, and SPI bus.  It also contains drivers for
devices that use, for example, an I2C bus.

By itself, this crate isn't much use.  It will need to be used with the
bbs_embed_linux crate which contains hardware drivers for the Raspberry Pi
and BeagleBone Black.


