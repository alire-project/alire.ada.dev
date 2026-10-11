---
layout: crate
crate: "cbor_ada"
authors: ["Baris Erdem"]
maintainers: ["Baris Erdem <baris@erdem.dev>"]
licenses: ["Apache-2.0"]
websites: ["https://github.com/b-erdem/cbor_ada"]
tags: ["cbor",
"rfc8949",
"serialization",
"spark",
"embedded",
"iot",
"verified"]
version: "0.3.0"
short_description: "CBOR (RFC 8949) encoding/decoding library with SPARK formal verification"
dependencies: []
configuration_variables: []
configuration_values: []

---
SPARK-proved CBOR encoder/decoder for Ada 2022. The entire library is
formally verified at SPARK Level 2: 1082/1082 proof obligations discharged,
0 unproved, 0 pragma Assume. Beyond absence of run-time errors, the
encode/decode round trip is machine-proved -- Decode (Encode (x)) = x for
every major-type head (integers, tags, array/map headers, simple values,
booleans, null/undefined) and byte-exact float payload pass-through -- via a
shared ghost denotation of the wire format.

No heap allocation, pragma Pure, suitable for embedded and safety-critical
systems. Full RFC 8949 well-formedness validation including shortest-form
checking, configurable nesting depth, string length limits, and optional
UTF-8 validation.


