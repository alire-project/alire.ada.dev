---
layout: crate
crate: "sha3"
authors: ["Baris Erdem"]
maintainers: ["Baris Erdem <baris@erdem.dev>"]
licenses: ["Apache-2.0"]
websites: ["https://github.com/b-erdem/sha3_ada"]
tags: ["sha3",
"keccak",
"hash",
"cryptography",
"spark",
"embedded",
"security",
"verified"]
version: "1.0.0"
short_description: "SPARK-proved SHA-3/SHAKE (FIPS 202) hash functions"
dependencies: [{crate: "gnat", version: ">=14.2.1"}]
configuration_variables: []
configuration_values: []

---
SPARK-proved SHA-3 and SHAKE implementations for Ada 2022. Implements FIPS 202
with SHA3-256, SHA3-512, SHAKE128, and SHAKE256. Keccak-f[1600] permutation
and sponge construction are formally verified at SPARK level 2: 159/159 proof
obligations discharged, zero pragma Assume, zero unproved VCs, termination
verified via Always_Terminates aspects on every public subprogram.

No heap allocation, pragma Pure, suitable for embedded and safety-critical
systems. Incremental API (Init/Absorb/Squeeze) and one-shot convenience
functions. Tested against NIST Known Answer Test vectors.

Constant-time execution and FIPS 140-3 validation are out of scope for this
release. See SECURITY.md for the full threat model.


