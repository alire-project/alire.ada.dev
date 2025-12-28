---
layout: crate
crate: "lispcli"
authors: ["Brent Seidel"]
maintainers: ["Brent Seidel <brentseidel@mac.com>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://github.com/BrentSeidel/Ada-Lisp"]
tags: ["lisp"]
version: "0.1.1"
short_description: "Simple program for exploring tiny lisp"
dependencies: [{crate: "gnat", version: ">7.5"},
{crate: "bbs", version: "~0.1.0"},
{crate: "bbs_lisp", version: "~0.1.0"}]
configuration_variables: []
configuration_values: []

---
This is a simple example of embedding Lisp to provide a REPL where you
can try various Lisp functions.  It can also be modified to test out
Lisp extensions.


