---
layout: crate
crate: "bb_pico_bsp"
authors: ["Fabien Chouteau"]
maintainers: ["Fabien Chouteau <fabien.chouteau@gmail.com>"]
licenses: ["MIT"]
websites: ["https://github.com/Fabien-Chouteau/bb_pico_bsp"]
tags: ["embedded",
"pico",
"handheld",
"featherwing"]
version: "0.1.0"
short_description: "Ada BSP for the Keyboard Featherwing + RPI PICO"
dependencies: [{crate: "embedded_components", version: "~0.1.0"},
{crate: "lvgl_ada", version: "~0.2.0"},
{crate: "pico_bsp", version: "^1.0.0"}]
configuration_variables: []
configuration_values: [{crate: 'lvgl_ada', settings: [{name: 'Color_16_SWAP', value: "true"}, 
{name: 'Density_Per_Inch', value: "50"}, 
{name: 'Double_Buffering', value: "true"}, 
{name: 'Horizontal_Resolution', value: "320"}, 
{name: 'Pixel_Bit_Depth', value: "Pix_16bit"}, 
{name: 'Theme_Live_Update', value: "true"}, 
{name: 'Vertical_Resolution', value: "240"}, 
{name: 'Virtual_Display_Buffer_Size', value: "30720"}]}]

---


