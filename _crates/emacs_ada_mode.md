---
layout: crate
crate: "emacs_ada_mode"
authors: ["Stephen Leake"]
maintainers: ["Stephen Leake <stephen_leake@stephe-leake.org>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://www.nongnu.org/ada-mode/"]
tags: ["emacs",
"ada-mode"]
version: "8.1.0"
short_description: "Parser for Emacs ada-mode"
dependencies: [{crate: "emacs_wisi", version: "~4.3.0"},
{crate: "gnat", version: "(>=11 & <2000) | >=2021"},
{crate: "re2c", version: ">=2.0.3"},
{crate: "stephes_ada_library", version: "~3.7.3"},
{crate: "wisitoken", version: "~4.2.0"}]
configuration_variables: []
configuration_values: []

---


