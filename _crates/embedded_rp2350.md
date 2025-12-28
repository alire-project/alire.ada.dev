---
layout: crate
crate: "embedded_rp2350"
authors: ["AdaCore",
"Daniel King"]
maintainers: ["Daniel King <damaki.gh@gmail.com>"]
licenses: ["GPL-3.0-or-later WITH GCC-exception-3.1"]
websites: ["https://github.com/damaki/rp-runtimes"]
tags: ["embedded",
"runtime"]
version: "15.1.0"
short_description: "embedded runtime for the RP2350 SoC"
dependencies: [{crate: "gnat_arm_elf", version: "^15"}]
configuration_variables: [{name: 'Board', type: 'Enum (generic_board, rpi_pico2, pimoroni_pico_lipo_2_xl_w, pimoroni_pico_plus_2, pimoroni_plasma_2350, pimoroni_tiny_2350, pimoroni_rp2350_stamp_xl, pimoroni_rp2350_stamp, pimoroni_pga2350, adafruit_feather_rp2350, adafruit_metro_rp2350, adafruit_fruit_jam)', default: "rpi_pico2"},
{name: 'Flash_Size', type: 'Integer range 2 .. 16', default: "2"},
{name: 'Interrupt_Secondary_Stack_Size', type: 'Integer range 1 .. 9223372036854775807', default: "128"},
{name: 'Interrupt_Stack_Size', type: 'Integer range 1 .. 9223372036854775807', default: "1024"},
{name: 'Max_CPUs', type: 'Integer range 1 .. 2', default: "2"},
{name: 'PLL_Sys_Post_Div_1', type: 'Integer range 1 .. 7', default: "5"},
{name: 'PLL_Sys_Post_Div_2', type: 'Integer range 1 .. 7', default: "2"},
{name: 'PLL_Sys_Reference_Div', type: 'Integer range 1 .. 63', default: "1"},
{name: 'PLL_Sys_VCO_Multiple', type: 'Integer range 16 .. 320', default: "125"},
{name: 'PLL_USB_Post_Div_1', type: 'Integer range 1 .. 7', default: "5"},
{name: 'PLL_USB_Post_Div_2', type: 'Integer range 1 .. 7', default: "2"},
{name: 'PLL_USB_Reference_Div', type: 'Integer range 1 .. 63', default: "1"},
{name: 'PLL_USB_VCO_Multiple', type: 'Integer range 16 .. 320', default: "40"},
{name: 'Security_Level', type: 'Enum (Secure, Non_Secure)', default: "Secure"},
{name: 'Time_Base_Alarm', type: 'Enum (ALARM0, ALARM1, ALARM2, ALARM3)', default: "ALARM3"},
{name: 'Time_Base_Timer', type: 'Enum (TIMER0, TIMER1)', default: "TIMER0"},
{name: 'XOSC_Frequency', type: 'Integer range 0 .. 9223372036854775807', default: "12000000"},
{name: 'XOSC_Startup_Delay_Mult', type: 'Integer range 1 .. 16383', default: "64"}]
configuration_values: []

---
## Usage

First edit your `alire.toml` file and add the following elements:
 - Add `embedded_rp2350` in the dependency list:
   ```toml
   [[depends-on]]
   embedded_rp2350 = "*"
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


