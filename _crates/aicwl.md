---
layout: crate
crate: "aicwl"
authors: ["Dmitry A. Kazakov <mailbox@dmitry-kazakov.de>"]
maintainers: ["Vinzent \"Jellix\" Saranen <vinzent@heisenbug.eu>"]
licenses: ["GPL-2.0-or-later WITH GCC-exception-2.0"]
websites: ["http://www.dmitry-kazakov.de/ada/aicwl.htm"]
tags: ["widgets",
"gauge",
"graphics",
"ui",
"gtk"]
version: "3.24.1"
short_description: "Ada Industrial Control Widgets Library"
dependencies: [{crate: "gtkada", version: ">=17"}]
configuration_variables: []
configuration_values: []

---
This crate provides a library for designing high-quality industrial control
widgets for Ada applications. The software is based on
[GtkAda](https://docs.adacore.com/live/wave/gtkada/html/gtkada_rm/index.html),
Ada bindings to [Gtk+](https://www.gtk.org/), and
[cairo](https://www.cairographics.org/manual/index.html).

The key features of the library are:

* Widgets composed of transparent layers drawn by cairo
* Fully scalable graphics
* Support of time controlled refresh policy for real-time and heavy-duty applications
* Caching graphical operations
* Stream I/O support for serialization and deserialization
* Ready-to-use gauge, meter, oscilloscope widgets
* Editor widget for WYSIWYG design of complex dashboards

For further information, visit the
[AICWL website](http://www.dmitry-kazakov.de/ada/aicwl.htm).

Maintainer's note:

This Alire crate is packaged in a rather minimalistic way to keep dependencies
on external libraries at a minimum. The crate's definition covers the core
functionality of AICWL, though, so it should be sufficient for most needs.

For example, the original distribution has references to
[Simple Components](http://www.dmitry-kazakov.de/ada/components.htm) which are
not strictly necessary for the core functionality of the library.


