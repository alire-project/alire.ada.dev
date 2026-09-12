---
layout: crate
crate: "espidf_gnat_runtime"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/espidf_gnat_runtime"]
tags: ["embedded",
"esp32",
"espidf",
"runtime"]
version: "0.1.0"
short_description: "A0B: GNAT Runtime for ESP-IDF"
dependencies: []
configuration_variables: []
configuration_values: []

---
The `espidf_gnat_runtime` provides the runtime support libraries required to develop Ada and SPARK applications for Espressif SoCs.
It serves as the foundational layer that enables the GNAT compiler to target Espressif's hardware, providing the essential infrastructure to bridge Ada language features with the underlying system.

By using this runtime, developers can leverage the safety, strong typing, and formal verification capabilities of Ada and SPARK on popular, low-cost microcontrollers.

### **Supported Architectures**
* **Xtensa:** Full support for the **ESP32-S3** series.
* **RISC-V:** Full support for the **ESP32-C3** series.

### **Key Features**
* **Ada Language Support:** Implements essential Ada features, including exception handling, controlled types, and secondary stacks.
* **Real-Time Concurrency:** Provides support for the **Jorvik profile**, enabling the use of Ada tasks and protected objects for safe, concurrent programming.
* **Hardware Interoperability:** Designed to support applications running alongside the ESP-IDF environment, allowing Ada code to coexist with Espressif's system services.
* **Verified Quality:** Validated using the **ACATS** (Ada Conformity Assessment Test Suite) to ensure language compliance and runtime stability on both Xtensa and RISC-V targets.

### **Target Audience**
This crate is intended for embedded developers using GNAT cross-compilers who wish to build high-integrity applications on the ESP32-S3 or ESP32-C3.
It is a vital component for any project aiming to bring Ada's rigorous safety standards to the Espressif ecosystem.


