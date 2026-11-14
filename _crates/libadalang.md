---
layout: crate
crate: "libadalang"
authors: ["AdaCore"]
maintainers: ["Pierre-Marie de Rodat <pmderodat@kawie.fr>",
"chouteau@adacore.com",
"sagaert@adacore.com"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/AdaCore/libadalang"]
tags: ["libadalang",
"static-analysis"]
version: "26.0.0"
short_description: "Ada semantic analysis library"
dependencies: [{crate: "gnatcoll", version: "^26"},
{crate: "gnatcoll_gmp", version: "^26"},
{crate: "gnatcoll_iconv", version: "^26"},
{crate: "gnatcoll_projects", version: "^26"},
{crate: "langkit_support", version: "^26"},
{crate: "libgpr2", version: "^26"}]
configuration_variables: []
configuration_values: []

---


