---
layout: crate
crate: "embedded_nrf52832"
authors: ["AdaCore",
"Daniel King"]
maintainers: ["Daniel King <damaki.gh@gmail.com>"]
licenses: ["GPL-3.0-or-later WITH GCC-exception-3.1"]
websites: ["https://github.com/damaki/community-bb-runtimes"]
tags: ["embedded",
"runtime"]
version: "16.0.0"
short_description: "embedded runtime for the NRF52832 SoC"
dependencies: [{crate: "gnat_arm_elf", version: "^16"}]
configuration_variables: [{name: 'Interrupt_Stack_Size', type: 'Integer range 1 .. 9223372036854775807', default: "1024"},
{name: 'LFCLK_Src', type: 'Enum (Xtal, RC, Synth)', default: "Xtal"},
{name: 'Time_Base', type: 'Enum (RTC0, RTC1, RTC2)', default: "RTC2"},
{name: 'Use_Reset_Pin', type: 'Boolean', default: "true"},
{name: 'Use_SWO_Trace', type: 'Boolean', default: "true"}]
configuration_values: []

---
## Usage

First edit your `alire.toml` file and add the following elements:
 - Add `embedded_nrf52832` in the dependency list:
   ```toml
   [[depends-on]]
   embedded_nrf52832 = "*"
   ```

Then edit your project file to add the following elements:
 - "with" the run-time project file. With this, gprbuild will compile the run-time before your application
   ```ada
   with "runtime_build.gpr";
   with "ravenscar_build.gpr";
   ```
 - Specify the `Target` and `Runtime` attributes:
   ```ada
      for Target use Runtime_Build'Target;
      for Runtime ("Ada") use Runtime_Build'Runtime ("Ada");
   ```


