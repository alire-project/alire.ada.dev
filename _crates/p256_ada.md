---
layout: crate
crate: "p256_ada"
authors: ["Baris Erdem"]
maintainers: ["Baris Erdem <baris@erdem.dev>"]
licenses: ["Apache-2.0"]
websites: ["https://github.com/b-erdem/p256_ada"]
tags: ["p256",
"ecdsa",
"es256",
"cryptography",
"spark",
"nist",
"secp256r1"]
version: "0.1.0"
short_description: "NIST P-256 / ECDSA (ES256) library for Ada with SPARK flow analysis"
dependencies: [{crate: "hmac_ada", version: "~0.2.0"}]
configuration_variables: []
configuration_values: []

---
NIST P-256 (secp256r1) / ECDSA (ES256) for Ada 2022 with SPARK flow
analysis. Constant-time field, scalar, and point arithmetic; Jacobian
coordinates with a 4-bit fixed-window scalar multiply; deterministic
nonces per RFC 6979; low-S signature normalisation. Stack-resident
secrets are wiped at function exit. Suitable for embedded and
safety-critical systems. Tests and SPARK proofs live in the nested
`prove/` crate; from the repo root:
  cd prove && alr exec -- gnatprove -P ../p256_ada.gpr -j0 --mode=flow


