---
layout: crate
crate: "light_nrf52833"
authors: ["AdaCore",
"Daniel King"]
maintainers: ["Daniel King <damaki.gh@gmail.com>"]
licenses: ["GPL-3.0-or-later WITH GCC-exception-3.1"]
websites: ["https://github.com/damaki/nrf52-runtimes"]
tags: ["embedded",
"runtime"]
version: "15.0.0"
short_description: "light runtime for the nRF52833 SoC"
dependencies: [{crate: "gnat_arm_elf", version: "^15"}]
configuration_variables: [{name: 'LFCLK_Src', type: 'Enum (Xtal, RC, Synth)', default: "Xtal"},
{name: 'Time_Base', type: 'Enum (RTC0, RTC1, RTC2)', default: "RTC2"},
{name: 'Use_Reset_Pin', type: 'Boolean', default: "true"},
{name: 'Use_SWO_Trace', type: 'Boolean', default: "true"}]
configuration_values: []

---
## Usage

First edit your `alire.toml` file and add the following elements:
 - Add `light_nrf52833` in the dependency list:
   ```toml
   [[depends-on]]
   light_nrf52833 = "*"
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


