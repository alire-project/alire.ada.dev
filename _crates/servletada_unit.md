---
layout: crate
crate: "servletada_unit"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://gitlab.com/stcarrez/ada-servlet"]
tags: ["web",
"servlet",
"http",
"json",
"rest",
"testing"]
version: "1.8.1"
short_description: "Web Servlet Library following JSR 154, JSR 315 (Testing framework)"
dependencies: [{crate: "servletada", version: "^1.8.1"},
{crate: "utilada", version: "^2.8.2"},
{crate: "utilada_unit", version: "^2.8.2"}]
configuration_variables: []
configuration_values: []

---
[![Build Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-servlet/badges/build.json)](https://porion.vacs.fr/porion/projects/view/ada-servlet/summary)
[![Test Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-servlet/badges/tests.json)](https://porion.vacs.fr/porion/projects/view/ada-servlet/xunits)
[![Coverage](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-servlet/badges/coverage.json)](https://porion.vacs.fr/porion/projects/view/ada-servlet/summary)

This library provides helper operations for unit testing a servlet implemented on top of
Ada Servlet.



