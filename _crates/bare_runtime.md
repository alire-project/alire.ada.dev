---
layout: crate
crate: "bare_runtime"
authors: ["AdaCore"]
maintainers: ["Fabien Chouteau <fabien.chouteau@gmail.com>"]
licenses: ["GPL-3.0-or-later WITH GCC-exception-3.1"]
websites: ["https://github.com/Fabien-Chouteau/bare_runtime"]
tags: ["embedded",
"runtime"]
version: "14.0.0"
short_description: "Minimal Ada/SPARK run-time for embedded or other restricted targets"
dependencies: [{crate: "gnat", version: "^14"}]
configuration_variables: [{name: 'LCH_Print_Info', type: 'Boolean', default: "false"},
{name: 'LCH_Reset', type: 'Boolean', default: "false"}]
configuration_values: []

---
## Usage

First edit you `alire.toml` file and add the following elements:
 - Add `bare_runtime` in the dependency list:
   ```toml
   [[depends-on]]
   bare_runtime = "*"
   ```
 - Add cross GNAT in the dependency list (e.g. gnat_arm_elf):
   ```toml
   [[depends-on]]
   gnat_arm_elf = "*"
   ```
 - Set the architecture build switches, we use ARM Cortex-M4F as an example here:
   ```toml
   [gpr-set-externals]
   BARE_RUNTIME_SWITCHES = "-mlittle-endian -mthumb -mfloat-abi=hard -mcpu=cortex-m4 -mfpu=fpv4-sp-d16"
   ```

Then edit your project file to add the following elements:
 - "with" the run-time project file. With this, gprbuild will compile the run-time before your application
   ```ada
   with "bare_runtime.gpr";
   ```
 - Specify the `Target` and `Runtime` attributes:
   ```ada
      for Target use "arm-eabi";
      for Runtime ("Ada") use Bare_Runtime'Runtime ("Ada");


