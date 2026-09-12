---
layout: crate
crate: "ml_dsa"
authors: ["Baris Erdem"]
maintainers: ["Baris Erdem <baris@erdem.dev>"]
licenses: ["GPL-3.0-only"]
websites: ["https://github.com/b-erdem/ml_dsa_ada"]
tags: ["ml-dsa",
"dilithium",
"post-quantum",
"cryptography",
"spark",
"embedded",
"security",
"verified"]
version: "1.0.0"
short_description: "SPARK-proved ML-DSA (FIPS 204) lattice-based digital signatures"
dependencies: [{crate: "gnat", version: ">=14.2.1"},
{crate: "sha3", version: "~1.0"}]
configuration_variables: [{name: 'parameter_set', type: 'Enum (ML_DSA_44, ML_DSA_65, ML_DSA_87)', default: "ML_DSA_65"}]
configuration_values: []

---
SPARK-proved ML-DSA (Module-Lattice-Based Digital Signature Algorithm)
implementing NIST FIPS 204. Verifies signing and verification under
the Module Learning With Errors (M-LWE) assumption.

All three FIPS 204 parameter sets -- ML-DSA-44, ML-DSA-65, ML-DSA-87
-- are supported and selected at build time via the `parameter_set`
crate configuration variable; default is ML-DSA-65 (NIST Category III).

The 8-layer Cooley-Tukey NTT, Montgomery reduction, Power2Round /
Decompose / MakeHint / UseHint rounding primitives, and bounded
rejection-sampling loops for signing are all SPARK-checked. The
signing rejection loop is bounded (Max_Retries = 1000) for proof
termination; rejection probability per attempt is empirically ~2-4%,
so the bound is reached only with negligible probability.

Built on sha3_ada for SHA-3/SHAKE. No heap allocation, pragma Pure,
suitable for embedded and safety-critical systems. FIPS 140-3
validation is out of scope.


