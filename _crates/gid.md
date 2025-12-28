---
layout: crate
crate: "gid"
authors: ["Gautier de Montmollin"]
maintainers: ["gdemont@hotmail.com"]
licenses: ["MIT"]
websites: ["https://gen-img-dec.sourceforge.io/"]
tags: ["image",
"animated",
"animation",
"bitmap",
"color",
"decoder",
"decoding",
"decompress",
"digitization",
"lossless",
"lossy",
"rbg",
"steganography",
"transparency",
"transparent",
"bmp",
"gif",
"jpeg",
"jpg",
"pbm",
"pgm",
"png",
"pnm",
"ppm",
"qoi",
"tga",
"targa"]
version: "13.0.1"
short_description: "Generic Image Decoder - decode a broad variety of image formats"
dependencies: []
configuration_variables: []
configuration_values: []

---
&nbsp;<img src="https://gen-img-dec.sourceforge.io/transp.png" alt="image" width="200" height="auto">

The Generic Image Decoder (GID) is a low-level Ada package for decoding a broad variety of image formats,
from any data stream, to any kind of medium, be it an in-memory bitmap, a GUI object, some other stream,
floating-point data for scientific calculations, a browser element, a device, ...

Currently supported formats are: BMP, GIF, JPEG, PNG, PNM (PBM, PGM, PPM), QOI, TGA

Animations (GIF, PNG) are supported. 

Some features:

* *Fast*! Up to 2.8 times faster than ImageMagick.
* Task safe
* Endian-neutral
* Multi-platform, but native code build
* Standalone (no dependency on other libraires, bindings, etc.; no extra component needed for running)
* Unconditionally portable code: OS-, CPU-, compiler- independent code (*).
* Pure Ada 2012: this package can be used in projects in Ada 2012 and later versions of the Ada language
* Tests, demos and tools included.
* *Free*, open-source 

______

(*) within limits of compiler's provided integer types and target architecture capacity.


