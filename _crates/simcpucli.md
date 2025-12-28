---
layout: crate
crate: "simcpucli"
authors: ["Brent Seidel"]
maintainers: ["Brent Seidel <brentseidel@mac.com>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://github.com/BrentSeidel/Sim-CPU"]
tags: ["cpu-simulator"]
version: "0.4.0"
short_description: "CLI for CPU simulator"
dependencies: [{crate: "gnat", version: ">7.5"},
{crate: "bbs", version: "~0.1.0"},
{crate: "bbs_lisp", version: "~0.2.1"},
{crate: "bbs_simcpu", version: "~0.3.2"}]
configuration_variables: []
configuration_values: []

---
This provides a simple command line interface to the CPU simulator library.
It has commands for setting and reading memory, reading registers, and
executing instructions.  It also uses the Tiny-Lisp library so that many
of these actions can be scripted.


