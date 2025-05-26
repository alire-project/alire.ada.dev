---
layout: crate
crate: "hp41cx_tools"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://calculator-scripts.sourceforge.io/px-41cx"]
tags: ["calculator",
"tools",
"retrocomputing",
"ada-2022",
"hp-41cx",
"dm41x",
"px41cx"]
version: "1.6.3"
short_description: "HP-41CX emulator Tools"
dependencies: [{crate: "adacl", version: "^6.1.0"},
{crate: "gnat_native", version: "^14.2"}]
configuration_variables: []
configuration_values: []

---
Tools for manipulating memory dumps from HP-41CX emulators.

The following HP-41CX emulators are supported:

* [PX-41CX](https://paxer.net/PX-41CX/) from Paxer.
* [DM41X](https://www.swissmicros.com/product/dm41x) from SwissMicros.

Currently hex dump files can be decoded to user readable UTF-8 encoded files.


