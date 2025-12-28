---
layout: crate
crate: "noise_nugget_sdk"
authors: ["Fabien Chouteau"]
maintainers: ["Fabien Chouteau <fabien.chouteau@gmail.com>"]
licenses: ["MIT OR Apache-2.0 WITH LLVM-exception"]
websites: ["https://weenoisemakers.com/noise-nugget-2040/"]
tags: ["embedded",
"audio",
"synth",
"dsp"]
version: "2.0.0"
short_description: "Ada Software Development Kit for the Noise Nugget"
dependencies: [{crate: "midi", version: "^1.0.0"},
{crate: "rp2040_hal", version: "~2.5.0"}]
configuration_variables: [{name: 'System_Clock', type: 'Enum (SYS_48MHz, SYS_125MHz, SYS_133MHz, SYS_200MHz, SYS_250MHz)', default: "SYS_133MHz"}]
configuration_values: [{crate: 'rp2040_hal', settings: [{name: 'Flash_Chip', value: "w25qxx"}]}]

---


