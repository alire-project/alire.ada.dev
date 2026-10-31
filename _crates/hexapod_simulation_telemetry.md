---
layout: crate
crate: "hexapod_simulation_telemetry"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/hexapod/"]
tags: ["hexapod",
"robot",
"gui"]
version: "0.0.1"
short_description: "Phoenyx Hexapod Simulation/Telemetry GUI"
dependencies: [{crate: "adagl_gtk3", version: "*"},
{crate: "cgk", version: "*"},
{crate: "gtkada", version: "*"}]
configuration_variables: []
configuration_values: [{crate: 'cgk', settings: [{name: 'Float_Size', value: "32"}]}]

---


