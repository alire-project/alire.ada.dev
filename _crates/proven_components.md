---
layout: crate
crate: "proven_components"
authors: ["Pat Rogers"]
maintainers: ["Pat Rogers <progers@classwide.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/pat-rogers/proven_components"]
tags: ["reuse",
"components",
"spark",
"proof"]
version: "1.2.0"
short_description: "Reusable components in SPARK/Ada developed since 1980."
dependencies: []
configuration_variables: [{name: 'Profile', type: 'Enum (Full, Embedded)', default: "Full"}]
configuration_values: []

---
These are components developed over the past 45+ years of Ada work, updated as Ada evolved, and formally proven when within the SPARK subset.
Most are proven to the Gold or Platinum level, but when necessary they are proven to the Silver level, i.e., absence of run-time errors.
They have been used in both host and embedded projects, many professional and a few for fun.

Sample contents:
  Sequential Bounded Buffers
  Sequential Bounded Stacks (i.e., not thread-safe)
  ...
  Protected types providing synchronization protocols
  PI and PID Controls
  Image functions for floating- and fixed-point types, in standard (i.e., not scientific) notation
  Gaussian, Categorical, and Scaled Uniform Random Number Generators
  Recursive Moving Average (RMA) filters for signal processing
  Sorting and Searching routines
  ...


