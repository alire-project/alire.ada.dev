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
"manual"]
version: "25.0.4"
short_description: "Local hosting of Ada Reference Manual (ARM)"
dependencies: [{crate: "gnat", version: "<15"},
{crate: "aws", version: "^24.0.0"},
{crate: "gnatcoll", version: "^24.0.0"},
{crate: "xmlada", version: "^24.0.0"}]
configuration_variables: []
configuration_values: []

---
HostARM is a local hosting of
- Ada Reference Manual 2012
- Ada Reference Manual 2022
- Annotated Ada Reference Manual 202Y (Draft 4)

HostARM focuses on user friendliness and more modern look of the manuals.

Benefits
- Shorter URL: Remove two levels of the URL and no html ending
- Optional stripping of navigation bars
- Keypress navigation
- Local search not dependant on external hosts
- Optional modernized navigation bar
- Alphabet navigation bar in index


