---
layout: crate
crate: "servletada_aws"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://gitlab.com/stcarrez/ada-servlet"]
tags: ["web",
"servlet",
"http",
"json"]
version: "1.8.1"
short_description: "Web Servlet Library following JSR 154, JSR 315 (AWS)"
dependencies: [{crate: "aws", version: "*"},
{crate: "servletada", version: "^1.8.1"},
{crate: "utilada_aws", version: "^2.8.2"}]
configuration_variables: []
configuration_values: []

---
[![Build Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-servlet/badges/build.json)](https://porion.vacs.fr/porion/projects/view/ada-servlet/summary)
[![Test Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-servlet/badges/tests.json)](https://porion.vacs.fr/porion/projects/view/ada-servlet/xunits)
[![Coverage](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-servlet/badges/coverage.json)](https://porion.vacs.fr/porion/projects/view/ada-servlet/summary)

Ada Servlet allows to create web applications using the same pattern
as the Java Servlet (See JSR 154, JSR 315). 

This library integrates the Ada Servlet in the Ada Web Server.



