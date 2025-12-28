---
layout: crate
crate: "serverfaces"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://gitlab.com/stcarrez/ada-asf"]
tags: ["web",
"servlet",
"http",
"json"]
version: "1.6.1"
short_description: "Web Server Faces JSR 252, JSR 314 and JSR 344"
dependencies: [{crate: "security", version: "^1.5.0"},
{crate: "servletada", version: "^1.7.0"},
{crate: "utilada", version: "^2.6.0"}]
configuration_variables: []
configuration_values: []

---
[![Build Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-asf/badges/build.json)](https://porion.vacs.fr/porion/projects/view/ada-asf/summary)
[![Test Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-asf/badges/tests.json)](https://porion.vacs.fr/porion/projects/view/ada-asf/xunits)
[![Coverage](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-asf/badges/coverage.json)](https://porion.vacs.fr/porion/projects/view/ada-asf/summary)
[![Documentation Status](https://readthedocs.org/projects/ada-asf/badge/?version=latest)](https://ada-asf.readthedocs.io/en/latest/?badge=latest)

Ada Servlet allows to create web applications using the same pattern
as the Java Servlet (See JSR 154, JSR 315). 

The Ada Servlet library is used by the [Ada Server Faces](https://github.com/stcarrez/ada-asf)
framework and [Ada Web Application](https://github.com/stcarrez/ada-awa)
to provide server web requests.

# Documentation

* [Ada Server Faces Programmer's Guide](https://ada-asf.readthedocs.io/en/latest/) [PDF](https://gitlab.com/stcarrez/ada-asf/blob/master/docs/asf-book.pdf)



