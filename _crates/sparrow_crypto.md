---
layout: crate
crate: "sparrow_crypto"
authors: ["Michael Hardeman"]
maintainers: ["Michael Hardeman <michael.hardeman@protonmail.com>"]
licenses: ["MIT"]
websites: ["https://github.com/michael-hardeman/sparrow"]
tags: ["openssl",
"tls",
"argon2",
"hmac",
"cryptography"]
version: "1.0.0"
short_description: "Sparrow web stack: hashes, AEAD, Argon2id, Ed25519 and TLS over OpenSSL"
dependencies: [{crate: "openssl", version: "*"},
{crate: "sparrow_core", version: "~1.0.0"},
{crate: "gnat", version: ">=13"}]
configuration_variables: []
configuration_values: []

---


