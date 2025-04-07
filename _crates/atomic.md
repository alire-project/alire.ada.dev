---
layout: crate
crate: "atomic"
authors: ["Fabien Chouteau"]
maintainers: ["Fabien Chouteau <chouteau@adacore.com>"]
licenses: ["MIT"]
websites: ["https://github.com/Fabien-Chouteau/atomic"]
tags: ["atomic",
"spark",
"embedded",
"nostd"]
version: "1.0.0"
short_description: "Standalone Ada/SPARK bindings to GCC atomic built-ins"
dependencies: []
configuration_variables: [{name: 'Backend', type: 'Enum (Intrinsic, armv6m, rp2040_spinlock)', default: "Intrinsic"},
{name: 'RP2040_Spinlock_ID', type: 'Integer range 0 .. 31', default: "31"}]
configuration_values: []

---


