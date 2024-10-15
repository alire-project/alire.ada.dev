---
layout: crate
crate: "tresses"
authors: ["Fabien Chouteau"]
maintainers: ["Fabien Chouteau <fabien.chouteau@gmail.com>"]
licenses: ["MIT OR Apache-2.0 WITH LLVM-exception"]
websites: ["https://weenoisemaker.com/"]
tags: ["embedded",
"audio",
"synthesis",
"nostd"]
version: "0.1.0"
short_description: "Synth library inspired by Mutable Instruments Braids"
dependencies: [{crate: "midi", version: "~0.2.0"}]
configuration_variables: [{name: 'Resources_Linker_Section', type: 'String', default: ""},
{name: 'Sample_Rate', type: 'Enum (SR22050, SR32000, SR44100, SR48000, SR96000)', default: "SR44100"}]
configuration_values: []

---


