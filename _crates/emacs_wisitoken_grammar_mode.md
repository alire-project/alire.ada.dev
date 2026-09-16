---
layout: crate
crate: "emacs_wisitoken_grammar_mode"
authors: ["Stephen Leake"]
maintainers: ["Stephen Leake <stephen_leake@stephe-leake.org>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://elpa.gnu.org/packages/wisitoken-grammar-mode.html"]
tags: ["indent",
"highlight",
"parser",
"emacs"]
version: "1.3.0"
short_description: "parser for Emacs wisitoken-grammar mode"
dependencies: [{crate: "emacs_wisi", version: "~4.2.0"},
{crate: "gnat", version: "(>=11 & <2000) | >=2021"},
{crate: "re2c", version: ">=2.2"},
{crate: "stephes_ada_library", version: "~3.7.2"},
{crate: "wisitoken", version: "~4.1.0"}]
configuration_variables: []
configuration_values: []

---
Generalized LR error-correcting parser for WisiToken grammar source
files, generated using WisiToken, interfaced to Emacs via the wisi
package.

Provides semantic highlighting, indent, single-file navigation. 


