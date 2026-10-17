---
layout: crate
crate: "standard_atomic_ops"
authors: ["AdaCore"]
maintainers: ["Pat Rogers <progers@classwide.com>"]
licenses: ["GPL-3.0-or-later WITH GCC-exception-3.1"]
websites: ["https://github.com/pat-rogers/standard_atomic_ops"]
tags: ["atomic",
"standard",
"runtime"]
version: "1.0.0"
short_description: "Language-defined atomic operation packages for GNAT runtimes."
dependencies: []
configuration_variables: []
configuration_values: []

---
This crate supplies the GNAT source files for the Ada 2022 language-defined units for atomic operations:

- System.Atomic_Operations
- System.Atomic_Operations.Exchange
- System.Atomic_Operations.Modular_Arithmetic
- System.Atomic_Operations.Integer_Arithmetic

They are provided for use with those bare-board GNAT runtimes that do not (yet) include them, for example Arm-elf (the only target tested to date). 
The sources here are verbatim copies taken from a native runtime. As such, the implementations are GNAT-specific so their use with other compilers will not work.
Once the shipped GNAT runtimes include them you can simply remove any references to this crate.
Note that the license includes the GCC Runtime Library Exception.


