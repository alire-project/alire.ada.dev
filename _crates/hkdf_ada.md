---
layout: crate
crate: "hkdf_ada"
authors: ["Baris Erdem"]
maintainers: ["Baris Erdem <baris@erdem.dev>"]
licenses: ["Apache-2.0"]
websites: ["https://github.com/b-erdem/hkdf_ada"]
tags: ["hkdf",
"rfc5869",
"kdf",
"cryptography",
"spark",
"embedded",
"security"]
version: "0.1.0"
short_description: "SPARK-proved HKDF (RFC 5869) - HKDF_SHA256 proved at Level 2"
dependencies: [{crate: "hmac_ada", version: "~0.2.0"}]
configuration_variables: []
configuration_values: []

---
SPARK-proved HKDF (RFC 5869) for Ada 2022, built on `hmac_ada`. The
HKDF-SHA-256 instantiation is fully proved at SPARK Level 2 (266 checks,
zero `pragma Assume`). Uses `System.Storage_Elements.Storage_Array` for
embedded and constrained-runtime (Light, ZFP) compatibility, no heap
allocation, `pragma Pure`. A separate generic `HKDF` package provides an
unproved convenience layer for other HMAC functions.


