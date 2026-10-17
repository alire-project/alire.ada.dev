---
layout: crate
crate: "blake3"
authors: ["Baris Erdem"]
maintainers: ["Baris Erdem <baris@erdem.dev>"]
licenses: ["GPL-3.0-only"]
websites: ["https://github.com/b-erdem/blake3_ada"]
tags: ["blake3",
"hash",
"cryptography",
"spark",
"embedded",
"security",
"verified"]
version: "1.0.0"
short_description: "SPARK-proved BLAKE3 hash function (C2SP specification)"
dependencies: [{crate: "gnat", version: ">=14.2.1"}]
configuration_variables: []
configuration_values: []

---
SPARK-proved BLAKE3 hash function for Ada 2022. Implements the C2SP BLAKE3
specification with hash, keyed_hash, and derive_key modes. Compression
function, G function, byte conversions, chunk processing, and CV-stack
Merkle assembly are formally verified at SPARK level 2: 482/482 proof
obligations discharged, zero unproved VCs, zero pragma Assume. The
BLAKE3 algorithm-level invariant relating CV-stack depth to the chunk
counter (popcount bound) is a machine-checked theorem, and the
2**64-byte input cap is an enforced precondition (see SECURITY.md).

No heap allocation, pragma Pure, suitable for embedded and safety-critical
systems. Extensible output, incremental API (Init/Update/Final), comprehensive
official C2SP test vectors.

Constant-time execution is out of scope for this release. See SECURITY.md
for the full threat model.


