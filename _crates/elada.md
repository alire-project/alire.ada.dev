---
layout: crate
crate: "elada"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://gitlab.com/stcarrez/ada-el"]
tags: ["web",
"expression",
"expander",
"parser"]
version: "1.8.8"
short_description: "Expression Language Library (JSR245)"
dependencies: [{crate: "utilada", version: "^2.8.0"}]
configuration_variables: []
configuration_values: []

---
[![Build Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-el/badges/build.json)](https://porion.vacs.fr/porion/projects/view/ada-el/summary)
[![Test Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-el/badges/tests.json)](https://porion.vacs.fr/porion/projects/view/ada-el/xunits)
[![Coverage](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-el/badges/coverage.json)](https://porion.vacs.fr/porion/projects/view/ada-el/summary)

This Ada05 library provides the support for a simple Expression Language
close to the Java Unified Expression Language (EL).

The API provided by the EL library is inspired from the Java
Unified Expression Language shared by the JSP 2.1 and JSF 1.2 technologies.
See Expression Language specification in JSR245
(https://jcp.org/en/jsr/summary?id=245)

The EL expression is intensively used in web development applications built
on top of various Java technologies but also on top of
[Ada Web Application](https://gitlab.com/stcarrez/ada-awa)
and [Ada Server Faces](https://gitlab.com/stcarrez/ada-asf).




