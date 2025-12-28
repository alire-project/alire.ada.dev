---
layout: crate
crate: "vss_text"
authors: ["AdaCore"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>",
"Maxim Reznik <reznikmm@gmail.com>",
"sagaert@adacore.com",
"chouteau@adacore.com"]
licenses: ["Apache-2.0"]
websites: ["https://github.com/AdaCore/vss-text"]
tags: ["unicode",
"string",
"text"]
version: "26.0.0"
short_description: "A high level Unicode text processing library"
dependencies: []
configuration_variables: [{name: 'Max_Supported_Integer_Size', type: 'Enum (128, 64)', default: "128"}]
configuration_values: []

---
This crate is based on [`VSS`](https://github.com/AdaCore/VSS) (Virtual
String System). VSS has been split into two crates:

* [`vss_text`](https://alire.ada.dev/crates/vss_text) (this crate): a library
  for Unicode text processing.
* [`vss_extra`](https://alire.ada.dev/crates/vss_extra): libraries for handling
  JSON, Regexp, XML and other features based on `vss_text`.

Significant changes are planned in `vss_text` with the goal to make it a
high-quality, high-performance library suitable for a wide range of
applications.

The changes include the following (non-exhaustive list):

* API Changes
  * Introduce an immutable string type.
  * Repurpose the mutable `Virtual_String` type to a string builder type.
  * Possibly rename the root package `VSS` to a new more appropriate name. Alire crate,
    GPR project and repository names might change accordingly.
* (done) Drop the support of multiple internal encodings in favor of a single internal
  encoding (likely UTF-8) for improved performance.


