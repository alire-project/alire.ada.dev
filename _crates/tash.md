---
layout: crate
crate: "tash"
authors: ["Simon Wright"]
maintainers: ["Simon Wright <simon@pushface.org>"]
licenses: ["GPL-2.0-or-later WITH GCC-exception-2.0"]
websites: ["https://github.com/simonjwright/tcladashell"]
tags: ["scripting",
"tcl",
"tk"]
version: "8.7.2"
short_description: "Binding to Tcl/Tk"
dependencies: [{crate: "libtcl", version: "~8.6.0"},
{crate: "libtk", version: "~8.6.0"}]
configuration_variables: []
configuration_values: []

---
Tash (previously known as Tcl Ada Shell) is an Ada binding to Tcl/Tk.

Its purpose is to

* allow a Tcl program to use Ada in place of C to implement Tcl
  commands where additional execution speed, more complex data
  structures, or better name space management is needed, and

* support the rapid development of Platform-Independent Graphical User
  Interfaces via Tk.

Please note that, on macOS, tash assumes that Tcl/Tk is provided via
[Homebrew](https://brew.sh).


