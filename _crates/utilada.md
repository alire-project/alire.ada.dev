---
layout: crate
crate: "utilada"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://gitlab.com/stcarrez/ada-util"]
tags: ["logging",
"processes",
"streams",
"json",
"beans",
"encoders",
"decoders"]
version: "2.8.2"
short_description: "Utility Library with streams, processes, logs, serialization, encoders"
dependencies: []
configuration_variables: []
configuration_values: []

---
[![Build Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-util/badges/build.json)](https://porion.vacs.fr/porion/projects/view/ada-util/summary)
[![Test Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-util/badges/tests.json)](https://porion.vacs.fr/porion/projects/view/ada-util/xunits)
[![Coverage](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-util/badges/coverage.json)](https://porion.vacs.fr/porion/projects/view/ada-util/summary)
[![Documentation Status](https://readthedocs.org/projects/ada-util/badge/?version=latest)](https://ada-util.readthedocs.io/en/latest/?badge=latest)

This Ada library contains various utility packages for building
Ada applications.  This includes:

* A logging framework close to Java log4j framework,
* Support for INI and property files,
* A serialization/deserialization framework for XML, JSON, CSV, Forms
* Ada beans framework,
* Encoding/decoding framework (Base16, Base32, Base64, SHA, HMAC-SHA, AES-256),
* A composing stream framework (raw, files, buffers, pipes, sockets, encryption, decryption, LZMA compression, LZMA decompression),
* Several concurrency tools (reference counters, counters, pools, fifos, arrays),
* Process creation and pipes,
* Support for loading shared libraries (on Windows or Unix),
* HTTP client library on top of CURL or AWS.

# Documentation

* [Ada Utility Library Programmer's Guide](https://ada-util.readthedocs.io/en/latest/) [PDF](https://github.com/stcarrez/ada-util/blob/master/docs/utilada-book.pdf)
* [IO stream composition and serialization with Ada Utility Library](https://blog.vacs.fr/vacs/blogs/post.html?post=2022/03/05/IO-stream-composition-and-serialization-with-Ada-Utility-Library)
* [Easy reading and writing files with Ada Utility Library](https://blog.vacs.fr/vacs/blogs/post.html?post=2020/08/09/Easy-reading-and-writing-files-with-Ada-Utility-Library)
* [Process creation in Java and Ada](https://blog.vacs.fr/vacs/blogs/post.html?post=2012/03/16/Process-creation-in-Java-and-Ada)



