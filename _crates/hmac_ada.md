---
layout: crate
crate: "hmac_ada"
authors: ["Baris Erdem"]
maintainers: ["Baris Erdem <baris@erdem.dev>"]
licenses: ["Apache-2.0"]
websites: ["https://github.com/b-erdem/hmac_ada"]
tags: ["hmac",
"rfc2104",
"cryptography",
"spark",
"embedded",
"security"]
version: "0.2.0"
short_description: "SPARK-proved HMAC (RFC 2104) implementation for Ada/SPARK"
dependencies: []
configuration_variables: []
configuration_values: []

---
SPARK-proved HMAC (RFC 2104) with standalone SHA-256 (FIPS 180-4) for Ada 2022.
175 proof obligations fully discharged at Level 2 with zero pragma Assume.
Constant-time digest comparison (the default `=` operator), secure wipe of
key material, no heap allocation, pragma Pure. Suitable for embedded and
safety-critical systems. Includes streaming and one-shot APIs, plus a generic
HMAC package for other hash functions.


