---
layout: crate
crate: "elogs"
authors: ["Kevin Chadwick"]
maintainers: ["Kevin Chadwick <kc-ada@elansys.co>"]
licenses: ["0BSD"]
websites: ["https://github.com/kevlar700/elogs"]
tags: ["spark",
"embedded",
"zfp",
"logging",
"log"]
version: "1.3.2"
short_description: "Embedded logging, proven absent of runtime errors"
dependencies: [{crate: "gnat", version: "(>=13 & <2000) | ^11 | >=2020"}]
configuration_variables: [{name: 'Device_ID_Length', type: 'Integer range -9223372036854775808 .. 9223372036854775807', default: "12"},
{name: 'Max_Log_Count', type: 'Integer range -9223372036854775808 .. 9223372036854775807', default: "50"},
{name: 'Max_Message_Length', type: 'Integer range -9223372036854775808 .. 9223372036854775807', default: "200"},
{name: 'Version_Length', type: 'Integer range -9223372036854775808 .. 9223372036854775807', default: "8"}]
configuration_values: []

---


