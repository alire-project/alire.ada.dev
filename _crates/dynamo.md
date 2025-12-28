---
layout: crate
crate: "dynamo"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://gitlab.com/stcarrez/dynamo"]
tags: ["uml",
"generator",
"database"]
version: "1.4.0"
short_description: "Dynamo Ada Generator"
dependencies: [{crate: "ado_all", version: "2.4.0"},
{crate: "ado_mysql", version: "2.4.0"},
{crate: "ado_postgresql", version: "2.4.0"},
{crate: "ado_sqlite", version: "2.4.0"},
{crate: "elada", version: "^1.8.6"},
{crate: "libgpr", version: "*"},
{crate: "security", version: "^1.5.0"},
{crate: "serverfaces", version: "1.6.0"},
{crate: "servletada", version: "^1.7.0"},
{crate: "utilada", version: "^2.6.0"},
{crate: "utilada_xml", version: "^2.6.0"},
{crate: "xmlada", version: "*"}]
configuration_variables: []
configuration_values: []

---
[![Build Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/dynamo/badges/build.json)](https://porion.vacs.fr/porion/projects/view/dynamo/summary)
[![Test Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/dynamo/badges/tests.json)](https://porion.vacs.fr/porion/projects/view/dynamo/xunits)
[![Coverage](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/dynamo/badges/coverage.json)](https://porion.vacs.fr/porion/projects/view/dynamo/summary)

This Ada05 application is a code generator used to generate
an Ada Web Application or database mappings from hibernate-like
XML description, YAML doctrine model or UML models.  It provides various commands for the
generation of a web application which uses the Ada Web Application framework
(https://gitlab.com/stcarrez/ada-awa/).



