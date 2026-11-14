---
layout: crate
crate: "password_gen"
authors: ["Jeff Carter"]
maintainers: ["Bent Bracke <bent@bracke.dk>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://github.com/bracke/Password_Gen"]
tags: ["passwordmaker"]
version: "20220720.0.0"
short_description: "A password generator using Ada-GUI/Gnoga"
dependencies: [{crate: "gnat", version: "<13.0 | >=13.3"},
{crate: "ada_gui", version: "^20240224.0.0"},
{crate: "pragmarc", version: "^20240323.0.0"},
{crate: "ssl", version: "^3.0.2"}]
configuration_variables: []
configuration_values: []

---
# Password_Gen
A password generator using Ada_GUI (https://github.com/jrcarter/Ada_GUI)


