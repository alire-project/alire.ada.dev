---
layout: crate
crate: "sparklib"
authors: ["AdaCore"]
maintainers: ["chouteau@adacore.com",
"sagaert@adacore.com"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/AdaCore/SPARKlib"]
tags: []
version: "16.1.0"
short_description: "Companion libraries for SPARK programming"
dependencies: [{crate: "gnat", version: ">=16"}]
configuration_variables: []
configuration_values: []

---
SPARKlib is meant to provide users of SPARK libraries to use in SPARK code. SPARKlib contains various libraries, such as a wide range of containers, as well as lemmas to use directly in user code.

This version of SPARKlib is made for use with [GNATprove FSF 16](https://github.com/alire-project/GNAT-FSF-builds/releases/tag/gnatprove-16.1.0-1). Unlike what is specified in the AdaCore SPARK User's guide, you do not need to copy the sources to your project to use it - and in fact, it's not recommended when developing with Alire. This crate is usable as-is without special manipulations.

The SPARKlib is configurable through GPR external definitions:
- `SPARKLIB_MODE` can be configured to `light` or `full`, defaults to `full`.
- `SPARKLIB_BUILD` can be configured to `Production`, `Assertions` or `Debug`, defaults to `Production`.

You can set these with the `[gpr-set-externals]` section in your Alire manifest. Only set them as an end user of the crate (that is, when testing locally, or when developing a binary).


