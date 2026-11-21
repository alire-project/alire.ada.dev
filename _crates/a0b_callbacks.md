---
layout: crate
crate: "a0b_callbacks"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/a0b-callbacks"]
tags: ["a0b",
"callbacks"]
version: "0.3.0"
short_description: "A0B Callbacks"
dependencies: [{crate: "a0b_base", version: "^0.6.0"}]
configuration_variables: []
configuration_values: []

---
Provides type-safe mechanisms to invoke user-defined callback subprograms with optional user data, designed specifically for embedded systems and light runtimes without tasking constructs.

The library offers a core `Callback` type alongside several generic child packages tailored for different parameter types:
- `Generic_Parameterless`: For parameterless procedures.
- `Generic_Subprogram`: For procedures accepting parameters of unconstrained limited types.
- `Generic_Non_Dispatching`: For procedures with class-wide type parameters.
- `Generic_Dispatching`: For procedures with unconstrained abstract tagged type parameters.
- `Generic_Discrete`: For procedures with discrete type parameters.

Ideal for interrupt handlers, event-driven device drivers, and lightweight task synchronization in bare-metal environments.


