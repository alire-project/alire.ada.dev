---
layout: crate
crate: "elogs"
authors: ["Kevin Chadwick"]
maintainers: ["Kevin Chadwick <elansys-open_source@elansys.co>"]
licenses: ["0BSD"]
websites: ["https://github.com/elansys/elogs"]
tags: ["spark",
"embedded",
"zfp",
"light",
"logging",
"log"]
version: "2.0.0"
short_description: "Embedded logging, proven absent of runtime errors"
dependencies: [{crate: "gnat", version: "(>=13 & <2000) | ^11 | >=2020"}]
configuration_variables: [{name: 'Device_ID_Length', type: 'Integer range -9223372036854775808 .. 9223372036854775807', default: "12"},
{name: 'Log_ID_Length', type: 'Integer range -9223372036854775808 .. 9223372036854775807', default: "7"},
{name: 'Max_Log_Count', type: 'Integer range -9223372036854775808 .. 9223372036854775807', default: "50"},
{name: 'Max_Message_Length', type: 'Integer range -9223372036854775808 .. 9223372036854775807', default: "200"},
{name: 'Version_Length', type: 'Integer range -9223372036854775808 .. 9223372036854775807', default: "8"}]
configuration_values: []

---


