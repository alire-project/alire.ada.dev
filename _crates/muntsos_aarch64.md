---
layout: crate
crate: "muntsos_aarch64"
authors: ["Philip Munts"]
maintainers: ["Philip Munts <phil@munts.net>"]
licenses: []
websites: ["https://github.com/pmunts/muntsos"]
tags: ["muntsos",
"embedded",
"linux",
"arm64",
"aarch64"]
version: "9.3.1"
short_description: "MuntsOS Embedded Linux support for AArch64 targets"
dependencies: [{crate: "muntsos_dev_aarch64", version: "*"}]
configuration_variables: []
configuration_values: []

---
Introduction
============

This crate modifies an Alire program project to build a cross-compiled
program for a **[MuntsOS Embedded
Linux](https://github.com/pmunts/muntsos)** AArch64 / ARMv8 / arm64
target computer.

The **MuntsOS Embedded Linux** cross toolchain packages must be
installed on your Linux development computer before you can use this
crate. See [Application Note
#1](http://git.munts.com/muntsos/doc/AppNote1-Setup-Debian.pdf) for
Debian distributions or [Application Note
#2](http://git.munts.com/muntsos/doc/AppNote2-Setup-RPM.pdf) for RPM
distributions.

Each **MuntsOS Embedded Linux** cross toolchain contains prebuilt **[Ada
Web Server](https://github.com/AdaCore/aws)** and **[Linux Simple I/O
Library](https://github.com/pmunts/libsimpleio)** components. Therefore,
**DO NOT** attempt to **`alr with`** any of the **aws**,
**libsimpleio**, **mcp2221**, or **remoteio** crates in a project using
this crate.

Environment Variables
=====================

If **`ALIRE_DISABLESTYLECHECKS`** is set to **`yes`**, the postfetch
script will disable style checking in the project **`.gpr`** file.

If **`ALIRE_INSTALLMAKEFILE`** is set to **`yes`**, the postfetch script
will install an optional but useful **`Makefile`** to the project
directory.

You can add the following to **`~/.bashrc`** or its equivalent to
permanently define these environment variables:

    export ALIRE_DISABLESTYLECHECKS=yes
    export ALIRE_INSTALLMAKEFILE=yes

Example
=======

The following commands illustrate how to create an Alire program project
that will cross-compile a program to run on a **MuntsOS Embedded Linux**
target computer. The result is a pristine (*i.e.* all temporary, working
and deliverable files removed) project, suitable for checking into a
source code control repository.

    alr -n init --bin myexample
    cd myexample
    alr -n with muntsos_aarch64
    ALIRE_DISABLESTYLECHECKS=yes ALIRE_INSTALLMAKEFILE=yes alr action -r post-fetch
    make reallyclean

See also [Application Note
#7](http://git.munts.com/muntsos/doc/AppNote7-Flash-LED-Ada-Alire.pdf).


