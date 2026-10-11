---
layout: crate
crate: "joularcore"
authors: ["Adel Noureddine"]
maintainers: ["Adel Noureddine <adel.noureddine@outlook.com>"]
licenses: ["LGPL-3.0-only"]
websites: ["https://www.noureddine.org/research/joular/joularcore"]
tags: ["power",
"energy",
"linux",
"windows",
"macos",
"freebsd",
"cpu",
"gpu"]
version: "0.0.5"
short_description: "Library to monitor hardware components' energy consumption on all OSes"
dependencies: []
configuration_variables: []
configuration_values: []

---
Joular Core measures the energy or power consumption of hardware components:
CPU (Intel and AMD through RAPL on Linux, Windows and FreeBSD, Apple Silicon and Intel Macs through powermetrics, Raspberry Pi and other boards through power models) and
GPU (Nvidia through NVML, AMD through hwmon sysfs or ADLX, Apple Silicon through
powermetrics). It detects on its own what the machine offers, and also provides
a C interface so any language with a C FFI can use it.


