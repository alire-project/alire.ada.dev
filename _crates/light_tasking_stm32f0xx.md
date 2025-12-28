---
layout: crate
crate: "light_tasking_stm32f0xx"
authors: ["AdaCore",
"Daniel King"]
maintainers: ["Daniel King <damaki.gh@gmail.com>"]
licenses: ["GPL-3.0-or-later WITH GCC-exception-3.1"]
websites: ["https://github.com/damaki/stm32f0xx-runtimes"]
tags: ["embedded",
"runtime",
"stm32f0"]
version: "15.0.0"
short_description: "light-tasking runtime for the STM32F0xx SoC"
dependencies: [{crate: "gnat_arm_elf", version: "^15"}]
configuration_variables: [{name: 'AHB_Pre', type: 'Enum (DIV1, DIV2, DIV4, DIV8, DIV16, DIV64, DIV128, DIV256, DIV512)', default: "DIV1"},
{name: 'APB_Pre', type: 'Enum (DIV1, DIV2, DIV4, DIV8, DIV16)', default: "DIV2"},
{name: 'HSE_Bypass', type: 'Boolean', default: "false"},
{name: 'HSE_Clock_Frequency', type: 'Integer range 1 .. 32000000', default: "8000000"},
{name: 'LSI_Enabled', type: 'Boolean', default: "true"},
{name: 'MCU_Pin_Count', type: 'Enum (C, E, F, G, K, R, V)', default: "R"},
{name: 'MCU_Sub_Family', type: 'Enum (F030, F031, F038, F042, F048, F051, F058, F070, F071, F072, F078, F091, F098)', default: "F072"},
{name: 'MCU_User_Code_Memory_Size', type: 'String', default: "B"},
{name: 'PLLMUL', type: 'Integer range 2 .. 16', default: "12"},
{name: 'PLL_Src', type: 'Enum (HSI_2, HSI_PREDIV, HSE_PREDIV, HSI48_PREDIV)', default: "HSI_2"},
{name: 'PREDIV', type: 'Integer range 1 .. 16', default: "2"},
{name: 'SYSCLK_Src', type: 'Enum (HSI, HSE, PLL, HSI48)', default: "PLL"}]
configuration_values: []

---
## Usage

First edit your `alire.toml` file and add the following elements:
 - Add `light_tasking_stm32f0xx` in the dependency list:
   ```toml
   [[depends-on]]
   light_tasking_stm32f0xx = "*"
   ```
 - if applicable, apply any runtime configuration variables (see below).

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
     for Switches ("Ada") use Runtime_Build.Linker_Switches;
   end Linker;
   ```

The runtime is configurable via Alire crate configuration variables.
See the project website for full details of the available options.

By default, the runtime is configured for the STM32F072RB. If your board has
a different MCU, then you will need to specify which MCU you are using via
the crate configuration. For example, to configure the runtime for the
STM32F030F4, add the following to your `alire.toml`:
```toml
[configuration.values]
light_tasking_stm32f0xx.MCU_Sub_Family            = "F030"
light_tasking_stm32f0xx.MCU_Pin_Count             = "F"
light_tasking_stm32f0xx.MCU_User_Code_Memory_Size = "4"
```

By default, the runtime configures the clock tree for a 48 MHz system clock
from the high-speed internal (HSI) oscillator. If you want a different clock
configuration, then use the crate configuration variables to specify the
configuration you wish to use. For example, to configure the runtime to
generate a 32 MHz system clock from a 16 MHz HSE crystal oscillator:
```toml
[configuration.values]
# Configure a 16 MHz HSE crystal oscillator
light_tasking_stm32f0xx.HSE_Clock_Frequency = 16000000
light_tasking_stm32f0xx.HSE_Bypass = false

# Use the PLL as the SYSCLK source
light_tasking_stm32f0xx.SYSCLK_Src = "PLL"

# Configure the PLL input for a 16 MHz input from the HSE
light_tasking_stm32f0xx.PLL_Src = "HSE_PREDIV"
light_tasking_stm32f0xx.PREDIV = 1

# Configure the PLL to output 32 MHz (16 MHz * 2)
light_tasking_stm32f0xx.PLLMUL = 2

# Configure the AHB an APB to also run at 32 MHz
light_tasking_stm32f0xx.AHB_Pre = "DIV1"
light_tasking_stm32f0xx.APB_Pre = "DIV1"
```


