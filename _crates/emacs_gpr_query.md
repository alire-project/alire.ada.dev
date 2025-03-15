---
layout: crate
crate: "emacs_gpr_query"
authors: ["Stephen Leake"]
maintainers: ["Stephen Leake <stephen_leake@stephe-leake.org>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://elpa.gnu.org/packages/gpr-query.html"]
tags: ["emacs",
"xref"]
version: "1.0.2"
short_description: "Emacs xref backend using information output by GNAT compiler."
dependencies: [{crate: "gnat", version: "(>=11 & <2000) | >=2021"},
{crate: "gnatcoll", version: "^22.0.0"},
{crate: "gnatcoll_sqlite", version: "^22.0.0"},
{crate: "gnatcoll_xref", version: "^22.0.0"}]
configuration_variables: []
configuration_values: []

---


