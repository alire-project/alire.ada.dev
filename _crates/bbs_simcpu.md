---
layout: crate
crate: "bbs_simcpu"
authors: ["Brent Seidel"]
maintainers: ["Brent Seidel <brentseidel@mac.com>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://github.com/BrentSeidel/Sim-CPU"]
tags: ["cpu-simulator",
"6502",
"i8080",
"i8085",
"z80",
"m68000",
"pdp11"]
version: "0.5.0"
short_description: "CPU Simulator for multiple CPUs"
dependencies: [{crate: "bbs", version: "~0.1.0"}]
configuration_variables: []
configuration_values: []

---
This contains simulators for the 6502, 8080/8085/Z80, 680000/68008,
and some of the PDP-11 (11/04, 11/05,10, and 11/15,20) processors.

For the PDP-11 processors, some of the DEC I/O is also simulated well
enough to be able to run the RT-11 operating system.

More will probably be added with time.


