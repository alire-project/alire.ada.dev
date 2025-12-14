---
layout: crate
crate: "zipada"
authors: ["Gautier de Montmollin"]
maintainers: ["gdemont@hotmail.com"]
licenses: ["MIT"]
websites: ["https://github.com/zertovitch/zip-ada"]
tags: ["zip",
"archive",
"compression",
"deflate",
"lzma",
"bzip2",
"lzw",
"shrink"]
version: "61.0.0"
short_description: "Manage Zip Archives and raw BZip2 and LZMA streams"
dependencies: []
configuration_variables: []
configuration_values: []

---
![Zip-Ada logo](https://unzip-ada.sourceforge.io/za_logo.png)

Zip-Ada is a free, open-source programming library for dealing with the Zip compressed archive file format.
The full sources of Zip-Ada are in Ada, compilable on every compiler and for every system (*).

Key features of Zip-Ada:

* Files and streams supported, for archives and entries, for compression and decompression
* Task safe
* Endian-neutral
* Standalone
* Zip methods supported for compression: Reduce, Shrink, Deflate, BZip2, LZMA.
* Zip methods supported for decompression: the above methods, plus: Implode, Deflate64
* Library is in pure Ada 2012 (nothing compiler/system specific), can be used in projects in Ada 2012 and later versions of the language
* Unconditionally portable (*)
* Tests and demos included

The library includes LZMA & BZip2 independant compressor & decompressor pairs
(can be used outside of the Zip archive context).

___

(*) within limits of compiler's provided integer types and target architecture capacity.


