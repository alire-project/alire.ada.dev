---
layout: crate
crate: "ccsds_ada"
authors: ["Baris Erdem"]
maintainers: ["Baris Erdem <baris@erdem.dev>"]
licenses: ["Apache-2.0"]
websites: ["https://github.com/b-erdem/ccsds_ada"]
tags: ["ccsds",
"space",
"telemetry",
"telecommand",
"spark",
"embedded",
"satellite",
"verified",
"cfdp",
"aos"]
version: "0.1.0"
short_description: "CCSDS protocol suite with SPARK formal verification"
dependencies: []
configuration_variables: []
configuration_values: []

---
SPARK-proved CCSDS protocol suite for Ada 2022. Implements Space Packet
Protocol (133.0-B-1), Time Code Formats (301.0-B-4 CUC/CDS), AOS Transfer
Frame (732.0-B-4) with FECF, Encapsulation Packet (133.1-B-3), CFDP PDU
(727.0-B-5) with optional CRC, SLE identifiers (132.0-B-3), and the
CRC-16-CCITT-FALSE primitive used by AOS and CFDP. 100% formally verified
at SPARK Level 2 (440 proof obligations, 0 unproved). No heap allocation,
pragma Pure, suitable for embedded flight software and safety-critical
ground systems.


