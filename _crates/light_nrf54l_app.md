---
layout: crate
crate: "light_nrf54l_app"
authors: ["AdaCore",
"Daniel King"]
maintainers: ["Daniel King <damaki.gh@gmail.com>"]
licenses: ["GPL-3.0-or-later WITH GCC-exception-3.1"]
websites: ["https://github.com/damaki/community-bb-runtimes"]
tags: ["embedded",
"runtime"]
version: "16.0.0"
short_description: "light runtime for the nRF54L series"
dependencies: [{crate: "gnat_arm_elf", version: "^16"}]
configuration_variables: [{name: 'Device', type: 'Enum (nRF54L05, nRF54L10, nRF54L15, nRF54LS05A, nRF54LS05B, nRF54LV10A, nRF54LM20A, nRF54LM20B)', default: "nRF54L15"},
{name: 'Enable_Glitch_Detector', type: 'Boolean', default: "true"},
{name: 'Enable_SWO', type: 'Boolean', default: "true"},
{name: 'Enable_Trace', type: 'Boolean', default: "false"},
{name: 'Interrupt_Stack_Size', type: 'Integer range 1 .. 9223372036854775807', default: "1024"},
{name: 'LFCLK_Src', type: 'Enum (LFXO, LFRC, LFSYNT)', default: "LFXO"},
{name: 'MCU_Domain_Speed', type: 'Enum (CK64M, CK128M)', default: "CK64M"},
{name: 'Security_Level', type: 'Enum (Secure, Non_Secure)', default: "Secure"},
{name: 'Time_Base_GRTC_CCn', type: 'Integer range 0 .. 11', default: "11"},
{name: 'Time_Base_GRTC_IRQ', type: 'Integer range 0 .. 3', default: "3"}]
configuration_values: []

---
## Usage

First edit your `alire.toml` file and add the following elements:
 - Add `light_nrf54l_app` in the dependency list:
   ```toml
   [[depends-on]]
   light_nrf54l_app = "*"
   ```

Then edit your project file to add the following elements:
 - "with" the run-time project files:
   ```ada
   with "runtime_build.gpr";
   ```
 - Specify the `Target` and `Runtime` attributes:
   ```ada
      for Target use Runtime_Build'Target;
      for Runtime ("Ada") use Runtime_Build'Runtime ("Ada");
   ```
 - specify the `Linker` switches:
   ```ada
   package Linker is
     for Switches ("Ada") use Runtime_Build.Linker_Switches & ("-Wl,--gc-sections");
   end Linker;
   ```

Note that the linker switch `-Wl,--gc-sections` is optional, but its use is
recommended since it reduces the final size of the executable by removing
unused code.


