---
layout: crate
crate: "bfdada"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["GPL-2.0-or-later WITH GCC-exception-2.0"]
websites: ["https://gitlab.com/stcarrez/ada-bfd"]
tags: ["object",
"binary",
"elf",
"symbols",
"disassembler"]
version: "1.3.1"
short_description: "Ada API for the GNU Binutils BFD library"
dependencies: [{crate: "gnat", version: ">=13"}]
configuration_variables: []
configuration_values: []

---
[![Build Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-bfd/badges/build.json)](https://porion.vacs.fr/porion/projects/view/ada-bfd/summary)
[![Test Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-bfd/badges/tests.json)](https://porion.vacs.fr/porion/projects/view/ada-bfd/xunits)
[![Coverage](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-bfd/badges/coverage.json)](https://porion.vacs.fr/porion/projects/view/ada-bfd/summary)

The Ada-BFD is a library which provides Ada API for GNU Binutils BFD
library.  It works on any version of GNU Binutils (starting at 2.15).
The recommended version for GNU Binutils is at least the 2.42.

The Ada-BFD library allows to:

* list and scan the ELF sections of an executable or object file,
* get the content of the ELF sections,
* get access to the symbol table,
* use the BFD disassembler

# Documentation

* [BFD Documentation](http://sourceware.org/binutils/docs/bfd/index.html)
* [Reading a program symbol table with Ada BFD](https://blog.vacs.fr/vacs/blogs/post.html?post=2012/11/03/Reading-a-program-symbol-table-with-Ada-Bfd)



