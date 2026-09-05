---
layout: crate
crate: "adacl_serial"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://sourceforge.net/projects/adacl/"]
tags: ["library",
"serial",
"io",
"streams",
"communication",
"spark",
"ada2022"]
version: "7.2.1"
short_description: "SPARK-friendly character and string I/O helpers for GNAT serial ports"
dependencies: [{crate: "adacl", version: "^7.2"}]
configuration_variables: []
configuration_values: []

---
Thin, SPARK-friendly helpers for character and string I/O on a
GNAT.Serial_Communications port.

The package is deliberately compact - it contains only AdaCL.Serial_IO.

It extends GNAT.Serial_Communications.Serial_Port (itself a descendant of Ada.Streams.Root_Stream_Type) with a
null-record derivation, turning the type into a true class.  Consequently all operations can be written with the
convenient Class.Method syntax (Port.Get, Port.Put_Line, Port.Expect, ...).

Provided facilities:
* Conversion helpers between Stream_Element / Stream_Element_Array and Character / String
* Classic Get / Put / Get_Line / Put_Line operations
* High-level Expect procedures (discard or capture skipped text until a given sequence arrives)
* Full SPARK contracts; the package is proven to SPARK bronze level

Intended for console-style protocols used by classic and modern retro calculators (SwissMicros DM-series, HP-IL
emulators, etc.).

Licensed under the GNU Library General Public License version 3 (or later).
Integrates with the Ada Class Library (AdaCL).


