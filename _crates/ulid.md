---
layout: crate
crate: "ulid"
authors: ["Gautier de Montmollin"]
maintainers: ["gdemont@hotmail.com"]
licenses: ["MIT"]
websites: ["https://github.com/zertovitch/ulid"]
tags: ["ulid",
"uuid",
"guid",
"identifier",
"timestamp"]
version: "20240921.0.0"
short_description: "Universally Unique Lexicographically Sortable Identifier"
dependencies: [{crate: "gnat", version: "(>=11 & <2000) | >=2021"}]
configuration_variables: []
configuration_values: []

---
<img src="https://github.com/ulid/spec/raw/master/logo.png" alt="image" width="100" height="auto">

In a nutshell, a ULID code (Universally Unique Lexicographically Sortable Identifier) is
a combination of a 48-bit time stamp (most significant part, with a millisecond accuracy),
and a 80-bit random number (least significant part), totalling 128 bits, that is 16 bytes (octets).

The ULID code generation is sort of UUID (Universally Unique Identifier) system, also know as GUID (Globally Unique Identifier).
The characteristic of ULID numbers is that they can be compared and sorted by their timestamps.

The package ULID provides a `Generate` function using the method described above, plus a `Generate_Monotonic` function that enables the production of a monotonically increasing sequence of ULID numbers within the same millisecond.

The preferred (canonical) representation of a ULID is a certain version of the Base32 encoding (example of output: 01J80P3NJDN0Y5YX7D05421X0G).
The ULID package also provides a function `Encode_as_8_4_4_4_12` that outputs a text representation in the usual UUID 8-4-4-4-12 format (like: 01920161-d64d-5a3e-589e-c45df155547b).
Both formats are also recognized by the `Decode` function.


