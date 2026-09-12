---
layout: crate
crate: "printer_toolkit"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://gitlab.com/stcarrez/printer-toolkit"]
tags: ["reports",
"console",
"charts"]
version: "0.3.0"
short_description: "Printer toolkit to write reports"
dependencies: [{crate: "ansiada", version: "^1.0.0"}]
configuration_variables: []
configuration_values: []

---
Printer toolkit provides support to write reports on console or to produce SVG files with almost
the same Ada code.  It can display simple bar charts as well as images on the console.

The core library is provided by `printer_toolkit` and the SVG support implemented by the `printer_toolkit_svg`.
Run one of the following Alire commands or both:

```
alr with printer_toolkit
alr with printer_toolkit_svg
```


