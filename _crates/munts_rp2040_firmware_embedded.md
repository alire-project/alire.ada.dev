---
layout: crate
crate: "munts_rp2040_firmware_embedded"
authors: ["Philip Munts"]
maintainers: ["Philip Munts <phil@munts.net>"]
licenses: ["BSD-1-Clause"]
websites: ["https://github.com/pmunts/arm-mcu"]
tags: []
version: "2.24840.1"
short_description: "Phil's RP2040 Microcontroller Embedded Profile Firmware Template"
dependencies: [{crate: "embedded_rp2040", version: "^15"},
{crate: "rp2040_hal", version: "^2"}]
configuration_variables: []
configuration_values: [{crate: 'embedded_rp2040', settings: [{name: 'Board', value: "generic_board"}, 
{name: 'Max_CPUs', value: "2"}]},
{crate: 'rp2040_hal', settings: [{name: 'Interrupts', value: "bb_runtimes"}, 
{name: 'Use_Startup', value: "false"}]}]

---
# Introduction

This crate provides a comprehensive template for developing Ada firmware
for the [RP2040 ARM 32-bit
microcontroller](https://www.raspberrypi.com/products/rp2040), using the
[GNAT Predefined Embedded
Runtime](https://docs.adacore.com/gnat_ugx-docs/html/gnat_ugx/gnat_ugx/gnat_runtimes.html#embedded-run-time)
implemented by the
[`embedded_rp2040`](https://alire.ada.dev/crates/embedded_rp2040.html)
and [`rp2040_hal`](https://alire.ada.dev/crates/rp2040_hal.html) crates
and their dependencies.

Ada firmware for a microcontroller is realized as a main program
procedure that is called by otherwise invisible runtime startup code,
exactly as C firmware is realized by a function `main()` that is called
by otherwise invisible runtime startup code.

# Post-Build Script

An Alire project directory created by
`alr get munts_rp2040_firmware_embedded` will include a post-build
script named `postbuild.sh`. This script will install the newly built
firmware to a mounted RP2040 ROM boot USB file system. The RP2040 ROM
boot code implements USB mass storage emulation, in a fashion first
popularized by the late and lamented [Mbed
OS](https://os.mbed.com/mbed-os). To flash RP2040 firmware, you just
assert `BOOTSEL` and `RESET` hardware signals to force the RP2040 into
ROM boot mode, mount the USB mass storage device (usually done
automatically by the development machine operating system), and then
copy a [UF2](https://github.com/microsoft/uf2) firmware image file it.
`postbuild.sh` uses the [`elf2uf2`](https://github.com/rej696/elf2uf2)
utility program to copy the firmware image to the RP2040.

You can explicitly specify the RP2040 mount point *aka* destination
directory with the `RP2040_DESTDIR` environment variable before running
`alr build`. Otherwise `postbuild.sh` will search for the RP2040 mount
point at expected locations for ChromeOS, Linux, macOS, and Microsoft
Windows.

If an RP2040 mount point cannot be found, `postbuild.sh` does nothing.

# Makefile

An Alire project directory created by
`alr get munts_rp2040_firmware_embedded` will include an optional but
useful GNU `Makefile` (also available at
<https://github.com/pmunts/alire-goodies>) containing the following
*goals* or *targets*:

- `build` -- Accomplished by the command `gmake build`. Runs `alr build`
  to build the firmware image. Result (upon success) is a 32-bit ARM ELF
  executable file in the `bin/` subdirectory.
- `clean` -- Accomplished by the command `gmake clean`. Removes all
  generated working files. What is left will be suitable for checking
  into a source control system.
- `distclean` -- Accomplished by the command `gmake distclean`. Removes
  all generated working files *and* removes Alire's crate download and
  build caches.

*Note: `make` is often a synonym (symbolic link, shell alias, etc.) for
`gmake` on Linux machines, meaning that `make build` behaves exactly the
same as `gmake build`.*

# Visual Studio Code

An Alire project directory created by
`alr get munts_rp2040_firmware_embedded` will include an optional but
useful `.vscode/tasks.json` (also available at
<https://github.com/pmunts/alire-goodies>) which provides some build
tasks for [Visual Studio Code](https://code.visualstudio.com).

You can invoke a Visual Studio build task from the application menu
`Terminal => Run Task...` or `Terminal => Run Build Task...`

The most straightforward way to build *and* install RP2040 firmware from
within Visual Studio Code is to simply press **CONTROL + SHIFT + B**.
This key code invokes the default build task which executes the command
`make clean build` which executes the command `alr build` which executes
script `postbuild.sh`.

# Examples

## Command line

    alr -n get munts_rp2040_firmware_embedded
    alire-rename munts_rp2040_firmware_embedded_2.24820.1_45796fc8 myfirmware  # optional
    cd myfirmware
    alr -n with munts_rp2040_lib_embedded  # optional
    alr build

## Visual Studio Code

    alr -n get munts_rp2040_firmware_embedded
    alire-rename munts_rp2040_firmware_embedded_2.24820.1_45796fc8 myfirmware  # optional
    cd myfirmware
    alr -n with munts_rp2040_lib_embedded  # optional
    code .

*Note: The Alire project rename script `alire-rename` is available at
<https://github.com/pmunts/alire-goodies>.*


