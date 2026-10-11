---
layout: crate
crate: "gnattest_bin"
authors: ["AdaCore"]
maintainers: ["chouteau@adacore.com",
"sagaert@adacore.com"]
licenses: ["GPL-3.0-or-later WITH GCC-exception-3.1"]
websites: ["https://github.com/AdaCore/gnattest"]
tags: ["gnattest",
"testing",
"libadalang"]
version: "26.2.0"
short_description: "GNAT unit testing framework and generator - Binary Release"
dependencies: []
configuration_variables: []
configuration_values: []

---
The gnattest tool is a utility that creates unit-test skeletons as well as a test driver infrastructure (harness). gnattest creates a skeleton for each visible subprogram in the packages under consideration when they do not exist already.

gnattest is a project-aware tool. A project file is mandatory for test driver generation. The project file package that can specify gnattest switches is named gnattest.

This is a binary release of GNATtest, built from tha [GNAT-FSF-builds](https://github.com/alire-project/GNAT-FSF-builds) repository.


