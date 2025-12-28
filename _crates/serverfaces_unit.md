---
layout: crate
crate: "serverfaces_unit"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://gitlab.com/stcarrez/ada-asf"]
tags: ["web",
"servlet",
"http",
"framework",
"facelet",
"jsf",
"testing"]
version: "1.6.1"
short_description: "Web Server Faces JSR 252, JSR 314 and JSR 344 (Testing framework)"
dependencies: [{crate: "security", version: "^1.5.0"},
{crate: "serverfaces", version: "^1.6.0"},
{crate: "servletada", version: "^1.7.0"},
{crate: "servletada_unit", version: "^1.7.0"},
{crate: "utilada", version: "^2.6.0"},
{crate: "utilada_unit", version: "^2.6.0"}]
configuration_variables: []
configuration_values: []

---
[![Build Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-asf/badges/build.json)](https://porion.vacs.fr/porion/projects/view/ada-asf/summary)
[![Test Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-asf/badges/tests.json)](https://porion.vacs.fr/porion/projects/view/ada-asf/xunits)
[![Coverage](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-asf/badges/coverage.json)](https://porion.vacs.fr/porion/projects/view/ada-asf/summary)
[![Documentation Status](https://readthedocs.org/projects/ada-asf/badge/?version=latest)](https://ada-asf.readthedocs.io/en/latest/?badge=latest)

Ada Server Faces allows to create web applications using the same pattern
as the Java Server Faces (See JSR 252, JSR 314 and JSR 344). 

This library provides a unit test framework that helps in building unit tests
on top of Ada Server Faces.

# Documentation

* [Ada Server Faces Programmer's Guide](https://ada-asf.readthedocs.io/en/latest/) [PDF](https://gitlab.com/stcarrez/ada-asf/blob/master/docs/asf-book.pdf)



