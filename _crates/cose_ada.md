---
layout: crate
crate: "cose_ada"
authors: ["Baris Erdem"]
maintainers: ["Baris Erdem <baris@erdem.dev>"]
licenses: ["Apache-2.0"]
websites: ["https://github.com/b-erdem/cose_ada"]
tags: ["cose",
"rfc9052",
"cbor",
"security",
"spark",
"embedded",
"iot",
"webauthn"]
version: "0.1.0"
short_description: "COSE (RFC 9052 / 9053) library for Ada 2022"
dependencies: [{crate: "cbor_ada", version: "~0.2.0"},
{crate: "hmac_ada", version: "~0.2.0"},
{crate: "sparknacl", version: "^4.0.1"}]
configuration_variables: []
configuration_values: []

---
COSE (CBOR Object Signing and Encryption, RFC 9052 / 9053)
implementation for Ada 2022 with partial SPARK coverage. Supports the
six COSE message types: COSE_Mac0, COSE_Mac, COSE_Sign1, COSE_Sign,
COSE_Encrypt0, and COSE_Encrypt. Algorithms: HMAC-SHA-256,
HMAC-SHA-512, EdDSA (Ed25519), and ChaCha20-Poly1305 AEAD. Uses
cbor_ada for CBOR operations, hmac_ada for HMAC, and SPARKNaCl for
Ed25519 and ChaCha20-Poly1305. No heap allocation, suitable for
embedded and safety-critical systems.


