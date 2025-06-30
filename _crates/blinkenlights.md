---
layout: crate
crate: "blinkenlights"
authors: ["Brent Seidel"]
maintainers: ["Brent Seidel <brentseidel@mac.com>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://github.com/BrentSeidel/Pi-Mainframe"]
tags: ["embedded",
"simulation",
"i8080",
"m68000",
"hardware"]
version: "0.2.1"
short_description: "Project to blink LEDs in interesting patterns"
dependencies: [{crate: "bbs", version: "~0.1.0"},
{crate: "bbs_embed_common", version: "~0.2.0"},
{crate: "bbs_embed_linux", version: "~0.2.0"},
{crate: "bbs_webif", version: "~0.1.0"},
{crate: "bbs_simcpu", version: "~0.3.2"}]
configuration_variables: []
configuration_values: []

---
This is a complex project involving 3D printing and soldering as well as
software.  Alr will take care of the software dependencies for you, but
you will have to read the README and documentation to find the other parts.

This project is intended to replicate the look and feel of older computers
with the switches and lights.  It uses the simulators from bbs_simcpu to
drive the LEDs and act on the switches.  Using the Intel 8080 simulator,
I was actually able to toggle a bootstrap program in using the panel and
get it to boot CP/M.  A boot loader (boot.ihx) is included.  CP/M is not
included.  There are places on the web where you can find a disassembled
CP/M 2.2.  Then combine it with the BIOS from bbs_simcpu and add it to a
disk image using the loadcpm tool.  If you use the Motorola 68000 simulator,
it will load and run a simple multitasking OS.  The example simulator can
be used to flash the lights in a variaty of ways.

There is a lamp test program in the lamp-test directory that may be useful
for debugging the hardware.

Note that since each cycle of the simulator involves multiple I2C bus
transactions to read switches and set LEDs, any CPU simulation will run
rather slowly.  The intention of this project is more for display than
simulator usage.

There is also a web server that can be used to select the CPU variant.
This is most useful with the example simulator to select the light pattern.

This project runs on a Raspberry Pi 2 (or later).  It will build on most
Unix or Unix-like systems, but unless the hardware interface matches the
Raspberry Pi, it won't run.  You are welcome to try porting it to other
systems, if you like.


