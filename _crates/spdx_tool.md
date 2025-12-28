---
layout: crate
crate: "spdx_tool"
authors: ["ciceron"]
maintainers: ["ciceron <Stephane.Carrez@gmail.com>"]
licenses: ["Apache-2.0"]
websites: ["https://github.com/stcarrez/spdx-tool"]
tags: ["tools",
"spdx",
"license"]
version: "0.4.1"
short_description: "SPDX license detection and management tool"
dependencies: [{crate: "ada_toml", version: "~0.5.0"},
{crate: "ansiada", version: "^1.0.0"},
{crate: "intl", version: "^1.0.1"},
{crate: "printer_toolkit", version: "~0.2.0"},
{crate: "sciada", version: "~0.4.0"},
{crate: "spdx", version: "~0.2.0"},
{crate: "utilada", version: "^2.8.0"},
{crate: "utilada_xml", version: "^2.8.0"},
{crate: "magicada", version: "^1"}]
configuration_variables: []
configuration_values: []

---
spdx-tool scans the source files to identify licenses and allows to update them in order to use the
SPDX license format.  It can be used to:

* identify the license used in source files of a project,
* produce a JSON/XML report for the licenses found with the list of files,
* replace a license header by the [SPDX license](https://spdx.org/licenses/) tag equivalent.

Identify licenses used in a project:

```
spdx-tool
```

Identify files matching a given license:

```
spdx-tool --only-licenses=Apache-2.0 -f
```

Check the license header before replacing it:

```
spdx-tool --only-licenses=Apache-2.0 --print-license --line-number src
```

Replace the license header by the `SPDX-License-Identifier` header:

```
spdx-tool --only-licenses=Apache-2.0 --update=spdx src
```

Build an XML or JSON report of files with their licenses:

```
spdx-tool --output-xml=report.xml
```

## Documentation

* Man page: [spdx-tool (1)](https://gitlab.com/stcarrez/spdx-tool/-/blob/main/docs/spdx-tool.md?ref_type=heads)



