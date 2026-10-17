---
layout: crate
crate: "bar_codes"
authors: ["Gautier de Montmollin"]
maintainers: ["fabien.chouteau@gmail.com"]
licenses: ["MIT"]
websites: ["https://ada-bar-codes.sourceforge.io/"]
tags: ["bar",
"code",
"barcode",
"bar-code",
"datamatrix",
"data-matrix",
"qr",
"qrcode",
"qr-code",
"code128",
"msi",
"ean13",
"upca",
"pbm",
"pdf",
"png",
"svg"]
version: "6.0.0"
short_description: "Generate various types of bar codes (1D or 2D) on various media"
dependencies: []
configuration_variables: []
configuration_values: []

---
&nbsp;<a target="_blank" href="https://a.fsdn.com/con/app/proj/ada-bar-codes/screenshots/qr_code-d286323e.png"      ><img src="https://a.fsdn.com/con/app/proj/ada-bar-codes/screenshots/qr_code-d286323e.png"       alt="QR"          width="171" height="129"></a>
&nbsp;<a target="_blank" href="https://a.fsdn.com/con/app/proj/ada-bar-codes/screenshots/abc_logo_rect-d71ba4ac.png"><img src="https://a.fsdn.com/con/app/proj/ada-bar-codes/screenshots/abc_logo_rect-d71ba4ac.png" alt="Code 128"    width="178" height="129"></a>
&nbsp;<a target="_blank" href="https://a.fsdn.com/con/app/proj/ada-bar-codes/screenshots/dm_code_y129-8619c0ec.png" ><img src="https://a.fsdn.com/con/app/proj/ada-bar-codes/screenshots/dm_code_y129-8619c0ec.png"  alt="Data Matrix" width="181" height="129"></a>

Some features:

* 1D bar codes supported: Code 128, EAN-13, MSI, UPC-A
* 2D bar codes supported: Data Matrix, QR Codes
* Task safe
* Endian-neutral
* Multi-platform, but native code build
* Standalone (no dependency on other libraires, bindings, etc.; no extra component needed for running)
* Unconditionally portable code: OS-, CPU-, compiler- independent code.
* Pure Ada 2012: this package can be used in projects in Ada 2012 and later versions of the Ada language
* Tests and demos included
* *Free*, open-source 

The creation of a bar code is as simple as this small procedure:

```ada
with Ada.Text_IO, Bar_Codes, Bar_Codes_Media;

procedure Small_Demo is
  use Ada.Text_IO;
  svg : File_Type;
begin
  Create (svg, Out_File, "qr_code.svg");
  Put_Line
    (svg,
     Bar_Codes_Media.SVG_Bar_Code
       (Bar_Codes.Code_QR_Low, (5.0, 5.0, 100.0, 100.0), "mm", "Hello"));
  Close (svg);
end Small_Demo;
```


