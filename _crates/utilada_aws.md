---
layout: crate
crate: "utilada_aws"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://gitlab.com/stcarrez/ada-util"]
tags: ["web",
"http"]
version: "2.8.2"
short_description: "Utility Library REST support on top of AWS"
dependencies: [{crate: "aws", version: "^24.0|^25.0"},
{crate: "utilada", version: "^2.8.1"}]
configuration_variables: []
configuration_values: []

---
[![Build Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-util/badges/build.json)](https://porion.vacs.fr/porion/projects/view/ada-util/summary)
[![Test Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-util/badges/tests.json)](https://porion.vacs.fr/porion/projects/view/ada-util/xunits)
[![Coverage](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-util/badges/coverage.json)](https://porion.vacs.fr/porion/projects/view/ada-util/summary)
[![Documentation Status](https://readthedocs.org/projects/ada-util/badge/?version=latest)](https://ada-util.readthedocs.io/en/latest/?badge=latest)

This small library provides an HTTP backend on top of AWS.
It can be used by the `Util.Http` package.

An alternate HTTP backend is provided by CURL with `utilada_curl`.

# Documentation

* [Ada Utility Library Programmer's Guide](https://ada-util.readthedocs.io/en/latest/) [PDF](https://github.com/stcarrez/ada-util/blob/master/docs/utilada-book.pdf)



