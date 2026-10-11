---
layout: crate
crate: "gade"
authors: ["ellamosi"]
maintainers: ["ellamosi <ellamosi@users.noreply.github.com>"]
licenses: ["MIT"]
websites: ["https://github.com/ellamosi/gade"]
tags: ["ada",
"gameboy",
"emulator",
"library"]
version: "0.2.0"
short_description: "A Game Boy emulation library in Ada"
dependencies: []
configuration_variables: []
configuration_values: []

---
Gade is Game Boy emulation library written in Ada. It is intended to be
consumed by different front ends, for easy portability.

The library currently includes CPU emulation, joypad, timer, audio,
background/window/sprite rendering, and plain ROM, MBC1, MBC2, and MBC3
cartridge support with save data and MBC3 RTC handling.

The project is primarily aimed at experimentation around emulator architecture,
native-code performance, and cross-language integration. The repository also
includes a C ABI bridge and C++ wrapper so alternate hosts can reuse the same
core.


