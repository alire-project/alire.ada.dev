---
layout: crate
crate: "loadcpm"
authors: ["Brent Seidel"]
maintainers: ["Brent Seidel <brentseidel@mac.com>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://github.com/BrentSeidel/Sim-CPU"]
tags: ["cpm"]
version: "0.2.1"
short_description: "Write CP/M (or other similar binary) to floppy disk image"
dependencies: [{crate: "bbs", version: "~0.1.0"}]
configuration_variables: []
configuration_values: []

---
Three basic functions are available.  First, a CP/M image in Intel Hex
format can be added to the first two track of an existing floppy disk
image.  Second, a floppy disk image can be created and initialized with
the CP/M image on the first two tracks.  Finally, a small bootstrap
program can be created to load CP/M from the disk image into the simulator.


