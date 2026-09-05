---
layout: crate
crate: "mold"
authors: ["Francesc Rocher"]
maintainers: ["Francesc Rocher <francesc.rocher@gmail.com>"]
licenses: ["MIT"]
websites: ["https://rocher.github.io/mold"]
tags: ["template",
"template-engine",
"template-repo"]
version: "1.1.0"
short_description: "Meta-variable Operations for Lean Development (cli)"
dependencies: [{crate: "clic", version: "~0.3.0"},
{crate: "gnat", version: ">=2021 | (>=12 & <2000)"},
{crate: "mold_lib", version: "^2.3.0"},
{crate: "simple_logging", version: "^1.2.0"}]
configuration_variables: []
configuration_values: []

---
[![Alire](https://img.shields.io/endpoint?url=https://alire.ada.dev/badges/mold.json)](https://alire.ada.dev/crates/mold.html)
[![Alire CI/CD](https://img.shields.io/endpoint?url=https://alire-crate-ci.ada.dev/badges/mold.json)](https://alire-crate-ci.ada.dev/crates/mold.html)
![unit-test](https://github.com/rocher/mold/actions/workflows/unit-test.yml/badge.svg)
[![codecov](https://codecov.io/gh/rocher/mold/graph/badge.svg?token=LB83SI4I0Y)](https://codecov.io/gh/rocher/mold)
[![GitHub release](https://img.shields.io/github/release/rocher/mold.svg)](https://github.com/rocher/mold/releases/latest)
[![License](https://img.shields.io/github/license/rocher/mold.svg?color=blue)](https://github.com/rocher/mold/blob/master/LICENSE)

## Welcome to **Mold (cli)**

> **MOLD**: *Meta-variable Operations for Lean Development*

Mold is a Template Processor, or Template Engine, to work with repository
templates. The main motivation of Mold is to have repositories in GitHub used
as template repositories to create new, customized repositories for other
users.

Main features supported in Mold include

  * variable replacement in mold files (*.mold)

  * for a given directory, variable replacement recursively for all mold files
    in all subdirectories

  * variable replacement in file names

  * inclusion of other templates

  * definition of variables with a simple TOML file

  * predefined and custom text filters to easy text transformations

  * predefined variables to use in templates

  * support for optional and mandatory variables

  * support for custom filter and variables

Variable replacement can be specified as *normal*, *optional* or *mandatory*.
For example, the variable `foo = "bar"` can be specified with `{{foo}}`,
`{{?foo}}` (optional) or `{{#foo}}` (mandatory). The difference is the handling
of errors when an undefined variable is encountered.

All mold files must end with the extension `.mold`, for example
`README.md.mold`. Destination files (with variables replaced) have the same
name without the mold extension: `README.md`. This simplifies the work done in
large subdirectories with few templates.

This crate contains the Ada library and unit tests. For a CLI tool, please
take a look at the crate `mold`.

## Reference Guide

Please visit [Mold documentation](https://rocher.github.io/mold) for more
information.

---
## License
MIT (c) 2023-2025 Francesc Rocher


