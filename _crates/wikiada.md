---
layout: crate
crate: "wikiada"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://gitlab.com/stcarrez/ada-wiki"]
tags: ["wiki-engine",
"markdown",
"mediawiki",
"dotclear",
"html",
"parser",
"renderer"]
version: "1.4.2"
short_description: "Wiki Engine with parser and renderer for several wiki syntaxes"
dependencies: [{crate: "utilada", version: "^2.5.0"}]
configuration_variables: []
configuration_values: []

---
[![Build Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-wiki/badges/build.json)](https://porion.vacs.fr/porion/projects/view/ada-wiki/summary)
[![Test Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-wiki/badges/tests.json)](https://porion.vacs.fr/porion/projects/view/ada-wiki/xunits)
[![Coverage](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-wiki/badges/coverage.json)](https://porion.vacs.fr/porion/projects/view/ada-wiki/summary)

Ada Wiki is a small library that provides and focuses only on the Wiki engine.

The library allows to:

* Parse a wiki text such as Mediawiki, Creole, PhpBB, Dotclear and Google Code
* Parse HTML content in embedded wiki text,
* Filter out the wiki, HTML or text through customizable filters,
* Render the wiki text in HTML, text or another wiki format

The Ada Wiki library is used by [Ada Web Application](https://gitlab.com/stcarrez/ada-awa)
for the implementation of the blog and wiki online plugins.



