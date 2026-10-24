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
"ada2022",
"embedded"]
version: "8.0.1"
short_description: "AdaCL embedded: portable serial port and SPARK-friendly character I/O"
dependencies: [{crate: "adacl", version: "^8.0"}]
configuration_variables: []
configuration_values: []

---
Thin, SPARK-friendly helpers for character and string I/O on a serial port, plus a
portable binding for the port itself.

The crate contains two packages.

**AdaCL.Serial_Communications**: On Linux and Windows the spec renames GNAT.Serial_Communications and  On macOS it is a
native body. GNAT reuses the Linux termios record there, which ignores Block and Timeout; this body uses the Darwin
layout (64-bit flags, no c_line, VMIN at 16 and VTIME at 17) so it's now fully macOS compatible.

AdaCL.Serial_IO is the character and string layer. It extends AdaCL.Serial_Communications.Serial_Port (itself a
descendant of Ada.Streams.Root_Stream_Type) with a null-record derivation, turning the type into a true class.
Consequently all operations can be written with the convenient Class.Method syntax (Port.Get, Port.Put_Line,
Port.Expect, ...).

Provided facilities:
* Conversion helpers between Stream_Element / Stream_Element_Array and Character / String
* Classic Get / Put / Get_Line / Put_Line operations
* High-level Expect procedures (discard or capture skipped text until a given sequence arrives)
* Full SPARK contracts on Serial_IO; that package is proven to SPARK gold level

Intended for console-style protocols used by classic and modern retro calculators (SwissMicros DM-series, HP-IL
emulators, etc.).

Licensed under the GNU Library General Public License version 3 (or later).
Integrates with the Ada Class Library (AdaCL).

Source: [SourceForge](https://sourceforge.net/p/adacl/git/ci/master/tree/adacl_serial/)
Documentation: [Overview](https://adacl.sourceforge.net/adacl-serial/) and
[GNATdoc](https://adacl.sourceforge.net/gnatdoc/index.html)


