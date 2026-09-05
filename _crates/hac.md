---
layout: crate
crate: "hac"
authors: ["Gautier de Montmollin"]
maintainers: ["gdemont@hotmail.com"]
licenses: ["MIT"]
websites: ["https://github.com/zertovitch/hac"]
tags: ["hac",
"compiler",
"virtual-machine",
"native",
"semantic",
"parser",
"advent-of-code"]
version: "0.42.0"
short_description: "HAC Ada Compiler: a small, quick Ada compiler covering a subset of Ada"
dependencies: []
configuration_variables: []
configuration_values: []

---
&nbsp;<img src="https://hacadacompiler.sourceforge.io/hac_anim.gif" alt="hac logo" width="464" height="auto">

HAC (HAC Ada Compiler) is a small, quickly compiling, open-source Ada compiler, covering a subset of the Ada language.
HAC is perhaps the first open-source (albeit partial) Ada compiler fully programmed in Ada itself.

Features:

* **Quick**: short programming-compilation-run-test cycles.
* Perfect for scripting jobs.
* Compiles Ada sources from any stream - file, internet, editor data, Zip archive, ...
* Compilation leaves zero compilation temp file - all is done in memory!
* Portable, fully programmed in Ada.
* Can be embedded into another software - see the [**LEA**](https://l-e-a.sourceforge.io/) editor - and even exchange data with it - see the `demo/data_exchange/exchange_native_side.adb` demo.
* **Free**, open-source.


