---
layout: crate
crate: "ml_kem"
authors: ["Baris Erdem"]
maintainers: ["Baris Erdem <baris@erdem.dev>"]
licenses: ["GPL-3.0-only"]
websites: ["https://github.com/b-erdem/ml_kem_ada"]
tags: ["ml-kem",
"post-quantum",
"cryptography",
"spark",
"embedded",
"security",
"verified"]
version: "1.0.0"
short_description: "SPARK-proved ML-KEM (FIPS 203) lattice-based key encapsulation"
dependencies: [{crate: "gnat", version: ">=14.2.1"},
{crate: "sha3", version: "~1.0"}]
configuration_variables: [{name: 'parameter_set', type: 'Enum (ML_KEM_512, ML_KEM_768, ML_KEM_1024)', default: "ML_KEM_768"}]
configuration_values: []

---
SPARK-proved ML-KEM (Module-Lattice-Based Key-Encapsulation Mechanism)
implementing NIST FIPS 203. Formally verified at SPARK level 2 with zero
pragma Assume, zero unproved VCs. The 7-layer Cooley-Tukey NTT, BaseMul,
IndCPA, and FO transform are all proved end-to-end with no escape hatches.

All three FIPS 203 parameter sets -- ML-KEM-512, ML-KEM-768, ML-KEM-1024
-- are supported and selected at build time via the `parameter_set`
crate configuration variable; default is ML-KEM-768 (NIST Category III).

Proof techniques are documented in PROOF_NOTES.md and reusable for similar
lattice / ARX cryptography.

Built on sha3_ada for SHA-3/SHAKE. No heap allocation, pragma Pure, suitable
for embedded and safety-critical systems. Constant-time execution
empirically verified via cachegrind (LLd byte-identical). FIPS 140-3
validation is out of scope. See SECURITY.md for the full threat model.


