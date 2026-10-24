---
layout: crate
crate: "lvgl_ada"
authors: ["Fabien Chouteau <fabien.chouteau@gmail.com>"]
maintainers: ["fabien.chouteau@gmail.com"]
licenses: ["MIT"]
websites: ["https://github.com/Fabien-Chouteau/lvgl-ada"]
tags: ["embedded",
"gui",
"lvgl",
"no-std"]
version: "1.0.0"
short_description: "Bindings for the LVGL embedded GUI framework"
dependencies: []
configuration_variables: [{name: 'Builtin_Allocator_Size', type: 'Integer range 1 .. 1000000', default: "65536"},
{name: 'Color_16_SWAP', type: 'Boolean', default: "false"},
{name: 'Default_Font', type: 'Enum (dejavu_10, dejavu_20, dejavu_30, dejavu_40, monospace_8)', default: "dejavu_20"},
{name: 'Density_Per_Inch', type: 'Integer range 1 .. 1000000'},
{name: 'Double_Buffering', type: 'Boolean', default: "false"},
{name: 'Horizontal_Resolution', type: 'Integer range 1 .. 1000000'},
{name: 'Log_Level', type: 'Enum (Trace, Info, Warn, Error)', default: "Warn"},
{name: 'Log_With_Printf', type: 'Boolean', default: "false"},
{name: 'Pixel_Bit_Depth', type: 'Enum (Pix_1bit, Pix_8bit, Pix_16bit, Pix_32bit)'},
{name: 'Theme_Live_Update', type: 'Boolean', default: "false"},
{name: 'Use_Builtin_Allocator', type: 'Boolean', default: "true"},
{name: 'Vertical_Resolution', type: 'Integer range 1 .. 1000000'},
{name: 'Virtual_Display_Buffer_Size', type: 'Integer range 1 .. 1000000', default: "10240"}]
configuration_values: []

---


