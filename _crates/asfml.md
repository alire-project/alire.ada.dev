---
layout: crate
crate: "asfml"
authors: ["Manuel Gomez",
"Dan Lee Vazquez Garcia"]
maintainers: ["Manuel Gomez <mgrojo@gmail.com>"]
licenses: ["custom-zlib-acknowledgement"]
websites: ["https://mgrojo.github.io/ASFML/"]
tags: ["audio",
"games",
"opengl",
"cross-platform",
"multimedia",
"binding",
"graphics",
"sfml"]
version: "2.6.0"
short_description: "An Ada binding to SFML, the Simple and Fast Multimedia Library"
dependencies: [{crate: "libcsfml", version: "^2.6.0"}]
configuration_variables: []
configuration_values: []

---
[![ASFML logo](https://raw.githubusercontent.com/mgrojo/ASFML/master/images/ASFML_Logo.svg)](https://www.sfml-dev.org)
![Ada (GNAT)](https://github.com/mgrojo/ASFML/workflows/Ada%20(GNAT)/badge.svg)
[![Gitter chat](https://badges.gitter.im/gitterHQ/gitter.png)](https://gitter.im/ada-lang/Lobby)
[![Mentioned in Awesome Ada](https://awesome.re/mentioned-badge.svg)](https://github.com/ohenley/awesome-ada)

ASFML is an Ada semi-thick binding to the
[SFML](https://www.sfml-dev.org/) library. It uses Ada types and
portable defined types which eliminates the inclusion of Ada interface
libraries, but most of the functions are directly imported.

# Documentation
Generated API documentation can be consulted [online](https://mgrojo.github.io/ASFML/doc/).

The Ada API follows the [CSFML](https://26.customprotocol.com/csfml/index.htm) interface, but
with some changes and additions for ease of use.

Applicability of the [SFML documentation](https://www.sfml-dev.org/learn.php) is usually straightforward.


