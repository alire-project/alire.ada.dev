---
layout: crate
crate: "bbs_embed_linux"
authors: ["Brent Seidel"]
maintainers: ["Brent Seidel <brentseidel@mac.com>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://github.com/BrentSeidel/BBS-BBB-Ada"]
tags: ["embedded",
"devices",
"hardware"]
version: "0.2.0"
short_description: "Physical device drivers for Raspberry Pi and BeagleBone Black"
dependencies: [{crate: "bbs", version: "~0.1.0"},
{crate: "bbs_embed_common", version: "~0.2.0"}]
configuration_variables: []
configuration_values: []

---
This contains device drivers for unix-type systems.  The physical devices
are defined for the Raspberry Pi and BeagleBone Black, but it should
compile on any unix-type environment.


