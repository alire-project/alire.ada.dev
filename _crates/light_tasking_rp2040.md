---
layout: crate
crate: "light_tasking_rp2040"
authors: ["AdaCore",
"Daniel King"]
maintainers: ["Daniel King <damaki.gh@gmail.com>"]
licenses: ["GPL-3.0-or-later WITH GCC-exception-3.1"]
websites: ["https://github.com/damaki/rp-runtimes"]
tags: ["embedded",
"runtime"]
version: "15.1.0"
short_description: "light-tasking runtime for the RP2040 SoC"
dependencies: [{crate: "gnat_arm_elf", version: "^15"}]
configuration_variables: [{name: 'Board', type: 'Enum (generic_board, rpi_pico, adafruit_feather_rp2040, adafruit_itsybitsy_rp2040, adafruit_macropad_rp2040, adafruit_qt2040_trinkey, adafruit_qtpy_rp2040, arduino_nano_rp2040_connect, pimoroni_interstate75, pimoroni_keybow2040, pimoroni_pga2040, pimoroni_picolipo_4m, pimoroni_picolipo_16m, pimoroni_picosystem, pimoroni_plasma2040, pimoroni_tiny2040, sparkfun_micromod, sparkfun_promicro, sparkfun_thingplus)', default: "rpi_pico"},
{name: 'Flash_Chip', type: 'Enum (generic_qspi_128, at25sf128a, gd25q64c, w25q16jv, w25q32jv, w25q64jv, w25q128jv)', default: "generic_qspi_128"},
{name: 'Interrupt_Secondary_Stack_Size', type: 'Integer range 1 .. 9223372036854775807', default: "128"},
{name: 'Interrupt_Stack_Size', type: 'Integer range 1 .. 9223372036854775807', default: "1024"},
{name: 'Max_CPUs', type: 'Integer range 1 .. 2', default: "2"},
{name: 'PLL_Sys_Post_Div_1', type: 'Integer range 1 .. 7', default: "6"},
{name: 'PLL_Sys_Post_Div_2', type: 'Integer range 1 .. 7', default: "2"},
{name: 'PLL_Sys_Reference_Div', type: 'Integer range 1 .. 63', default: "1"},
{name: 'PLL_Sys_VCO_Multiple', type: 'Integer range 16 .. 320', default: "125"},
{name: 'PLL_USB_Post_Div_1', type: 'Integer range 1 .. 7', default: "5"},
{name: 'PLL_USB_Post_Div_2', type: 'Integer range 1 .. 7', default: "2"},
{name: 'PLL_USB_Reference_Div', type: 'Integer range 1 .. 63', default: "1"},
{name: 'PLL_USB_VCO_Multiple', type: 'Integer range 16 .. 320', default: "40"},
{name: 'Time_Base', type: 'Enum (ALARM0, ALARM1, ALARM2, ALARM3)', default: "ALARM3"},
{name: 'XOSC_Frequency', type: 'Integer range 0 .. 9223372036854775807', default: "12000000"},
{name: 'XOSC_Startup_Delay_Mult', type: 'Integer range 1 .. 16383', default: "64"}]
configuration_values: []

---
## Usage

First edit your `alire.toml` file and add the following elements:
 - Add `light_tasking_rp2040` in the dependency list:
   ```toml
   [[depends-on]]
   light_tasking_rp2040 = "*"
   ```

Then edit your project file to add the following elements:
 - "with" the run-time project file. With this, gprbuild will compile the run-time before your application
   ```ada
   with "runtime_build.gpr";
   ```
 - Specify the `Target` and `Runtime` attributes:
   ```ada
      for Target use runtime_build'Target;
      for Runtime ("Ada") use runtime_build'Runtime ("Ada");
   ```
 - specify the `Linker` switches:
   ```ada
   package Linker is
     for Switches ("Ada") use Runtime_Build.Linker_Switches & ("-Wl,--gc-sections");
   end Linker;
   ```
   Note that `--gc-switches` is recommended as it reduces flash and RAM usage
   by removing unused code and data, but it is not mandatory.

See the project website for details on configuring the runtime.


