---
layout: crate
crate: "vss_extra"
authors: ["AdaCore"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>",
"Maxim Reznik <reznikmm@gmail.com>",
"sagaert@adacore.com",
"chouteau@adacore.com"]
licenses: ["Apache-2.0"]
websites: ["https://github.com/AdaCore/vss-extra"]
tags: ["unicode",
"vss",
"os",
"json",
"xml"]
version: "26.0.0"
short_description: "Extra features for VSS"
dependencies: [{crate: "vss_text", version: "^26.0.0"}]
configuration_variables: []
configuration_values: []

---
## Warning - Work in Progress

This crate is based on [`VSS`](https://github.com/AdaCore/VSS) (Virtual
String System). VSS has been split into two crates:

* [`vss_text`](https://alire.ada.dev/crates/vss_text): a library for Unicode text
  processing.
* [`vss_extra`](https://alire.ada.dev/crates/vss_extra) (this crate): libraries
  for handling JSON, Regexp, XML and other features based on `vss_text`.

Significant API changes are planned in `vss_text` which will likely have an
impact on this crate.

Moreover, `vss_extra` is planned to be further split into more focused
projects (e.g. JSON, Regexp, XML, etc.) and might ultimately disappear once all
features find a new home.


