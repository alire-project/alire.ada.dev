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
version: "6.2.0"
short_description: "Ada Class Library (String, Trace, AUnit, Smart Pointer. GetOpt)"
dependencies: [{crate: "aunit", version: "24.0.0"},
{crate: "gnat_native", version: "^14.2"}]
configuration_variables: []
configuration_values: []

---
A class library for Ada for those who like OO programming.

Currently the following functionality is migrated to Ada 2022:

* Getopt commandline argument parser - with wide character support.
* String utilities - with wide character support.
* Calendar utilities - with wide character support.
* Trace utility - with wide character support.
* Protected queue - with finish, wait for finish and abort support.
* Smart pointer
  * Reference counted
  * Unique pointer
  * Shared pointer
* AUnit compatible informative asserts
  * generic for access types
  * generic for arrays types
  * generic for discrete types
  * generic for floating point types
  * generic for fixed point types
  * generic for decimal fixed point types
  * generic for vector types
* AUnit parameter
  * Call one test with multipe input and expected values

See [GNATdoc](https://adacl.sourceforge.net/gnatdoc/adacl/index.html) for details.

Development versions and testsuite available using the follwowing index:

```sh
alr index --add "git+https://github.com/krischik/alire-index.git#develop" --name krischik
```

Source code and testsuite available on [SourceForge](https://git.code.sf.net/p/adacl/git)


