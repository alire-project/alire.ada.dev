---
layout: crate
crate: "muntsos_raspberrypi1"
authors: ["Philip Munts"]
maintainers: ["Philip Munts <phil@munts.net>"]
licenses: ["BSD-1-Clause"]
websites: ["https://github.com/pmunts/muntsos"]
tags: ["muntsos",
"embedded",
"linux",
"arm",
"raspberrypi1"]
version: "11.0.1"
short_description: "MuntsOS Embedded Linux support for ARMv6 Raspberry Pi 1 targets"
dependencies: [{crate: "muntsos_dev_raspberrypi1", version: "*"}]
configuration_variables: []
configuration_values: []

---
# Introduction

This crate modifies an Alire program project to build a cross-compiled
program for a **[MuntsOS Embedded
Linux](https://github.com/pmunts/muntsos)** ARMv6 Raspberry Pi 1 target
computer.

The **MuntsOS Embedded Linux** cross toolchain packages must be
installed on your development computer before you can use this crate.
See:

[Application Note
#1](https://repo.munts.com/muntsos/doc/AppNote1-Setup-Debian.pdf) for
Debian Linux distributions  
[Application Note
#2](https://repo.munts.com/muntsos/doc/AppNote2-Setup-RPM.pdf) for RPM
Linux distributions  
[Application Note
#24](https://repo.munts.com/muntsos/doc/AppNote24-Setup-RPM.pdf) for
x86-64 Windows 10 or 11.

# Environment Variables

If **`ALIRE_DISABLESTYLECHECKS`** is set to **`yes`**, the postfetch
script will disable style checking in the project **`.gpr`** file.

If **`ALIRE_INSTALLMAKEFILE`** is set to **`yes`**, the postfetch script
will install an optional but useful **`Makefile`** to the project
directory.

You can add the following to **`~/.bashrc`** or its equivalent to
permanently define these environment variables:

    export ALIRE_DISABLESTYLECHECKS=yes
    export ALIRE_INSTALLMAKEFILE=yes

# Example

The following commands illustrate how to create an Alire program project
that will cross-compile a program to run on a **MuntsOS Embedded Linux**
target computer. The result is a pristine (*i.e.* all temporary, working
and deliverable files removed) project, suitable for checking into a
source code control repository.

    alr -n init --bin myexample
    cd myexample
    alr -n with muntsos_raspberrypi1
    ALIRE_DISABLESTYLECHECKS=yes ALIRE_INSTALLMAKEFILE=yes alr action -r post-fetch
    make reallyclean

See also [Application Note
#7](https://repo.munts.com/muntsos/doc/AppNote7-Flash-LED-Ada-Alire.pdf).


