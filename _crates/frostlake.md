---
layout: crate
crate: "frostlake"
authors: ["Michal Lorek"]
maintainers: ["Michal Lorek <michal.lorek@gmail.com>"]
licenses: ["Apache-2.0"]
websites: ["https://github.com/Frostlake-DB/frostlake-ada"]
tags: ["database",
"sql",
"driver",
"frostlake",
"snowflake"]
version: "0.1.0"
short_description: "Ada driver for Frostlake, speaking the engine's HTTP protocol"
dependencies: []
configuration_variables: []
configuration_values: []

---
A dependency-free Ada 2022 client for Frostlake's DatabaseHttpServer:
DSN-based connections, client-side parameter binding, typed result cells
(exact NUMBER digits, DATE/TIMESTAMP values, BINARY bytes), transactions,
and session handling. Needs nothing beyond GNAT's own runtime library.


