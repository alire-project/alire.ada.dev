---
layout: crate
crate: "apdf"
authors: ["Gautier de Montmollin"]
maintainers: ["gdemont@hotmail.com"]
licenses: ["MIT"]
websites: ["https://github.com/zertovitch/ada-pdf-writer"]
tags: ["pdf",
"adobe",
"acrobat"]
version: "8.0.0"
short_description: "Portable package for producing dynamically PDF documents"
dependencies: [{crate: "gid", version: ">=13.0.1"}]
configuration_variables: []
configuration_values: []

---
**PDF_Out** is an Ada package for producing easily and automatically PDF files, from an Ada program, with text, vector graphics and raster graphics.

![Ada PDF Screenshot](https://apdf.sourceforge.io/pw_ari_delivery_m.png "Screenshot of a page produced by PDF_Out")
![Ada PDF Screenshot](https://apdf.sourceforge.io/pw_sowebio_m.jpg      "Screenshot of a report produced by PDF_Out")

* Ideal for the dynamic production of reports, invoices, tickets, labels, delivery notes, charts, maps etc.
* Vector graphics
* Inclusion of JPEG images
* Object oriented
* Task safe
* Endian-neutral
* Multi-platform, but native code build
* Unconditionally portable code: OS-, CPU-, compiler- independent code
* Pure Ada 2012: this package can be used in projects in Ada 2012 and later language versions
* *Free*, open-source 

The creation of a PDF file is as simple as this small procedure:

```ada
with PDF_Out;

procedure Small_Demo is
  pdf : PDF_Out.PDF_Out_File;
begin
  pdf.Create ("small.pdf");
  pdf.Put_Line ("This is a very small demo for PDF_Out...");
  pdf.Close;
end Small_Demo;
```



