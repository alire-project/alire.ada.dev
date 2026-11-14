---
layout: crate
crate: "ado_sqlite"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://gitlab.com/stcarrez/ada-ado"]
tags: ["database",
"uml",
"sql",
"sqlite"]
version: "2.5.0"
short_description: "Ada Database Objects (SQLite)"
dependencies: [{crate: "ado", version: "^2.5.0"},
{crate: "libsqlite3", version: "*"}]
configuration_variables: []
configuration_values: []

---
[![Build Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-ado/badges/build.json)](https://porion.vacs.fr/porion/projects/view/ada-ado/summary)
[![Test Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-ado/badges/tests.json)](https://porion.vacs.fr/porion/projects/view/ada-ado/xunits)
[![Coverage](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-ado/badges/coverage.json)](https://porion.vacs.fr/porion/projects/view/ada-ado/summary)
[![Documentation Status](https://readthedocs.org/projects/ada-ado/badge/?version=latest)](https://ada-ado.readthedocs.io/en/latest/?badge=latest)

This is the SQLite or SQLCipher driver for the Ada Database Objects library.

The choice between SQLite and SQLCipher is controlled by the `ADO_USE_SQLCIPHER` gpr external variable.
Use `-XADO_USE_SQLCIPHER=yes` if you want to use the SQLCipher support.  The database encryption key
is configured by using a `pragma key`.



