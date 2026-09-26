---
layout: crate
crate: "hostarm"
authors: ["Jesper Quorning"]
maintainers: ["Jesper Quorning <jesper.quorning@gmail.com>"]
licenses: ["MIT"]
websites: ["https://github.com/jquorning/hostarm"]
tags: ["arm",
"aarm",
"reference",
"manual",
"ada202y"]
version: "26.5.2"
short_description: "CGI provider for Ada Reference Manual (ARM)"
dependencies: [{crate: "resources", version: "=0.1.0"},
{crate: "templates_parser", version: "=26.0.0"}]
configuration_variables: []
configuration_values: []

---
HostARM is a CGI program providing
- Ada Reference Manual 2012
- Ada Reference Manual 2022
- Annotated Ada Reference Manual 202Y (Draft 5)

HostARM focuses on user friendliness and more modern look of the manuals.

Benefits
- Search not dependant on external hosts
- Keypress navigation
- Shorter URL: Remove two levels of the URL and no html ending
- Optional stripping of navigation bars
- Optional modernized navigation bar
- Alphabet navigation bar in index


