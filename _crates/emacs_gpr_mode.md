---
layout: crate
crate: "emacs_gpr_mode"
authors: ["Stephen Leake"]
maintainers: ["Stephen Leake <stephen_leake@stephe-leake.org>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://elpa.gnu.org/packages/gpr-mode.html"]
tags: ["indent",
"highlight",
"parser",
"gpr",
"emacs"]
version: "1.0.5"
short_description: "parser for Emacs gpr mode"
dependencies: [{crate: "emacs_wisi", version: "~4.3.2"},
{crate: "gnat", version: "(>=11 & <2000) | >=2021"},
{crate: "re2c", version: ">=2.0.3"},
{crate: "stephes_ada_library", version: "~3.7.3"},
{crate: "wisitoken", version: "~4.2.1"}]
configuration_variables: []
configuration_values: []

---
Generalized LR error-correcting parser generated using WisiToken,
interfaced to Emacs via the wisi package.

Provides semantic highlighting, indent, single-file navigation. 


