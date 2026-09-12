---
layout: crate
crate: "cheddar"
authors: ["Lab-STICC"]
maintainers: ["Maxim Reznik <reznikmm@gmail.com>"]
licenses: ["GPL-3.0-only"]
websites: ["http://beru.univ-brest.fr/cheddar"]
tags: ["realtime",
"model",
"simulator",
"analyzer"]
version: "3.3.0"
short_description: "Cheddar is a real time scheduling analysis tool."
dependencies: [{crate: "gtkada", version: "*"},
{crate: "ocarina_lib", version: "=1.1.0-20070603"},
{crate: "xmlada", version: "*"}]
configuration_variables: []
configuration_values: []

---
To run cheddar you should set CHEDDAR_INSTALL_PATH or change
current working directory to the crate root.


