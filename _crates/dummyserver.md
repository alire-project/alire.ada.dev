---
layout: crate
crate: "dummyserver"
authors: ["Bent Bracke"]
maintainers: ["Bent Bracke <bent@bracke.dk>"]
licenses: ["CC0-1.0"]
websites: ["https://github.com/bracke/dummyserver"]
tags: ["http",
"server",
"test",
"terminal",
"console"]
version: "1.0.0"
short_description: "DummyServer is a terminal program that serves dummy content"
dependencies: [{crate: "json", version: "^5.0.3"}]
configuration_variables: []
configuration_values: []

---
DummyServer is a terminal program that serves dummy content (resources). These resources are defined in a single JSON configuration and configuration is thus very simple and fast. The prime purpose of DummyServer is to serve content to test client applications.

