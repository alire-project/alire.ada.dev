---
layout: crate
crate: "espidf_gnat_runtime"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["GPL-3.0-or-later WITH GCC-exception-3.1"]
websites: ["https://github.com/godunko/espidf_gnat_runtime"]
tags: ["a0b",
"embedded",
"esp",
"esp32",
"esp32c3",
"esp32s3",
"espidf",
"runtime",
"xtensa",
"riscv",
"freertos",
"jorvik"]
version: "0.2.0"
short_description: "Ada/ESP-IDF: GNAT runtime"
dependencies: [{crate: "gnat", version: "^16"}]
configuration_variables: []
configuration_values: []

---
The `espidf_gnat_runtime` provides the runtime support libraries required to develop Ada and SPARK applications for Espressif SoCs.
It serves as the foundational layer that enables the GNAT compiler to target Espressif's hardware, providing the essential infrastructure to bridge Ada language features with the underlying system.

By using this runtime, developers can leverage the safety, strong typing, and formal verification capabilities of Ada and SPARK on popular, low-cost microcontrollers.

### Supported Architectures
* **Xtensa:** Full support for the **ESP32**, **ESP32-S3** series.
* **RISC-V:** Full support for the **ESP32-C3** series.

### Key Features
* **Ada Language Support:** Implements essential Ada features, including exception handling, controlled types, and secondary stacks.
* **Standard Library:** Supports a rich set of standard packages, including `Ada.Numerics`, `Ada.Strings`, `Ada.Containers`, and more.
* **Real-Time Concurrency:** Provides support for the **Jorvik profile**, enabling the use of Ada tasks and protected objects for safe, concurrent programming.
* **Hardware Interoperability:** Designed to support applications running alongside the ESP-IDF environment, allowing Ada code to coexist with Espressif's system services.
* **Verified Quality:** Validated using the **ACATS** (Ada Conformity Assessment Test Suite) to ensure language compliance and runtime stability on both Xtensa and RISC-V targets.

### Usage
The runtime is generated at build time by the `a0b-runtime` tool (crate `a0b_tools`) from the SoC-specific `runtime-<soc>.json` description and `svd/<soc>.svd` file provided by this crate.
Start a new project from one of the SoC-specific templates
([ESP32](https://github.com/RREE/esp32_template),
[ESP32-C3](https://github.com/godunko/esp32c3_template),
[ESP32-S3](https://github.com/godunko/esp32s3_template)),
which set up the toolchain, linker, and build system configuration.


