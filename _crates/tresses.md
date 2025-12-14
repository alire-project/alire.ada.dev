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
version: "2.0.0"
short_description: "Synth library inspired by Mutable Instruments Braids"
dependencies: [{crate: "midi", version: "^1.0.0"}]
configuration_variables: [{name: 'Code_Linker_Section', type: 'String', default: ""},
{name: 'Resources_Linker_Section', type: 'String', default: ""},
{name: 'Sample_Rate', type: 'Enum (SR8000, SR11025, SR16000, SR22050, SR32000, SR44100, SR48000)', default: "SR44100"}]
configuration_values: []

---


