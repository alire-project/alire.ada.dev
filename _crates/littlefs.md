---
layout: crate
crate: "littlefs"
authors: ["Fabien Chouteau"]
maintainers: ["Fabien Chouteau <chouteau@adacore.com>"]
licenses: ["BSD-3-Clause"]
websites: ["https://github.com/Fabien-Chouteau/littlefs-ada"]
tags: ["embedded",
"filesystem",
"nostd",
"flash"]
version: "1.0.0"
short_description: "Ada/SPARK binding for the LittleFS flash embedded filesystem"
dependencies: []
configuration_variables: [{name: 'Assert', type: 'Boolean', default: "false"},
{name: 'Debug', type: 'Boolean', default: "false"},
{name: 'Error', type: 'Boolean', default: "false"},
{name: 'Max_Attr_Size', type: 'Integer range 1 .. 1022', default: "1022"},
{name: 'Max_File_Size', type: 'Integer range 1 .. 2147483647', default: "2147483647"},
{name: 'Max_Name_Size', type: 'Integer range 1 .. 1022', default: "255"},
{name: 'No_Malloc', type: 'Boolean', default: "true"},
{name: 'Trace', type: 'Boolean', default: "false"},
{name: 'Warn', type: 'Boolean', default: "false"}]
configuration_values: []

---


