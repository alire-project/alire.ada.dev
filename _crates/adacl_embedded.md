---
layout: crate
crate: "adacl_embedded"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://sourceforge.net/projects/adacl/"]
tags: ["library",
"embedded",
"trace",
"logging",
"spark",
"ada2022"]
version: "7.2.1"
short_description: "Ada Embedded Library"
dependencies: []
configuration_variables: [{name: 'Event_Log_Buffer_Length', type: 'Integer range 1 .. 1024', default: "200"},
{name: 'Event_Log_Buffer_Size', type: 'Integer range 0 .. 1024', default: "0"},
{name: 'Variant', type: 'Enum (tasking, no_tasking)', default: "no_tasking"}]
configuration_values: []

---
AdaCL Embedded - Lightweight Embedded Ada Library

AdaCL-Embedded focuses on embedded and real-time programming on the Raspberry Pi and similar platforms.

It favours predictability, minimal runtime overhead, and static data structures. Object-oriented programming, unbounded
strings, and wide strings are avoided or kept to an absolute minimum.

### Current Features

* **AdaCL.Embedded.Trace** - Interrupt-safe, lightweight tracing facility using a ring buffer.
* **AdaCL.Embedded.Text_IO** - Extended Ada.Text_IO.

### Configuration Options

* `Variant`
  * `no_tasking`  - for the lightest runtimes (no protected objects). Also works well with interrupt-driven runtimes.
  * `tasking`	  - for runtimes with tasking support.
* `Event_Log_Buffer_Length` - maximum length of each trace line (default: 200, min: 1, max: 1024)
* `Event_Log_Buffer_Size`   - number of entries in the ring buffer (default: 0, max: 1024, min: 0 (buffer disabled))

A text length of 200 is the standart minimum used in the Ada Standart (i.E. `Ada.Text_IO.Get_Line`, exception messages,
etc.pp).

Memory needed is approximately `(Event_Log_Buffer_Length + 4) * Event_Log_Buffer_Size` bytes, plus some overhead for the
buffer management. For example: 1024 buffer size with 200 line lenght is about the maximum size that can be used with
the static memory of Raspberry Pi Pico. The buffer size can be set to 0 to disable the trace buffer and the related code
completely.

Source: [SourceForge](https://sourceforge.net/p/adacl/git/ci/master/tree/adacl-embedded/src/)
Documentation: [GNATdoc](https://adacl-embedded.sourceforge.net/gnatdoc/adael/index.html)


