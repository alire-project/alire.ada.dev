---
layout: crate
crate: "adacl"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://sourceforge.net/projects/adacl/"]
tags: ["library",
"command-line",
"trace",
"logging",
"string",
"aunit",
"assert",
"container",
"smart-pointer",
"ada2022"]
version: "5.15.1"
short_description: "Ada Class Library"
dependencies: [{crate: "gnat", version: ">=12 & <2000"}]
configuration_variables: []
configuration_values: []

---
A class library for Ada for those who like OO programming.

Currently the following functionality is migrated to Ada 2022:

* Getopt commandline argument parser
* String utilities
* Trace utility
* Smart pointer
  * Reference counted
  * Unique pointer
  * Shared pointer
* AUnit compatible informative asserts
    * generic  for arrays types
    * generic  for discrete types
    * generic  for access types

See [GNATdoc](https://adacl.sourceforge.net/gnatdoc/adacl/index.html) for details.

Development versions and testsuite available using the follwowing index:

```sh
alr index --add "git+https://github.com/krischik/alire-index.git#develop" --name krischik
```

Source code and testsuite available on [SourceForge](https://git.code.sf.net/p/adacl/git)


