---
layout: crate
crate: "spark_unbound"
authors: ["Manuel Hatzl"]
maintainers: ["Manuel Hatzl <hatzlmanuel@outlook.com>"]
licenses: ["MIT"]
websites: ["https://github.com/mhatzl/spark_unbound"]
tags: ["spark",
"unbound"]
version: "0.2.1"
short_description: "Unbound data structures in Ada-Spark"
dependencies: [{crate: "gnat", version: "(>=9.3.1 & <2000) | >=2021"}]
configuration_variables: []
configuration_values: []

---
Spark_Unbound is a take on providing generic unbound data structures in Spark.

In addition to proving general absence of runtime errors, the heap allocation is done in a non-Spark function to catch a possible `Storage_Error`.
This further increases the security and confident use of this library.

**The following packages are currently available:**

- `Spark_Unbound.Safe_Alloc`: Providing formally proven safe heap allocation functionality
- `Spark_Unbound.Arrays`: Providing a formally proven alternative to `Ada.Containers.Vector`

**Note:** If you use this library, starring the repository on GitHub helps me a lot to see if it is even useful for someone else.


