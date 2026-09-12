---
layout: crate
crate: "adl_middleware"
authors: ["AdaCore"]
maintainers: ["chouteau@adacore.com"]
licenses: ["BSD-3-Clause"]
websites: ["https://github.com/AdaCore/Ada_Drivers_Library/"]
tags: ["embedded",
"nostd",
"fat",
"bitmap"]
version: "0.4.0"
short_description: "Middleware layer of the Ada Drivers Library project"
dependencies: [{crate: "hal", version: "^1.0.0"}]
configuration_variables: [{name: 'Max_Mount_Name_Length', type: 'Integer range 1 .. 9223372036854775807', default: "128"},
{name: 'Max_Mount_Points', type: 'Integer range 1 .. 9223372036854775807', default: "2"},
{name: 'Max_Path_Length', type: 'Integer range 1 .. 9223372036854775807', default: "1024"}]
configuration_values: []

---
# adl_middleware

Middleware layer of the Ada Drivers Library project.

This crate is a snapshot of the `middleware` of [Ada Drivers
Library](https://github.com/AdaCore/Ada_Drivers_Library/tree/master/middleware).

Any bug report, issue, contribution must be adressed to the [Ada Drivers
Library](https://github.com/AdaCore/Ada_Drivers_Library/) repo.



