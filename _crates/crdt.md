---
layout: crate
crate: "crdt"
authors: ["bladeacer"]
maintainers: ["bladeacer <wg.nick.exe@gmail.com>"]
licenses: ["MIT"]
websites: ["https://github.com/bladeacer/ada_crdt"]
tags: ["crdt",
"spark",
"ada"]
version: "1.12.0"
short_description: "CRDT library for Ada/SPARK"
dependencies: []
configuration_variables: []
configuration_values: []

---
CRDT (Conflict-Free Replicated Data Types) library for Ada/SPARK with SPARK
Gold formal verification and DO-178C DAL-C targeting.

PN-Counters, LWW-Element-Sets, LWW-Clocked-Sets (generic over Lamport, Vector,
or Matrix clock strategies), and RGA sequences with three backend engines
(Yjs chunk-based, Naive flat list, Fugue anti-interleaving BST). State-based
(CvRDT delta sync) and operation-based (CmRDT bounded op log) sync layers.
Hybrid Logical Clock (HLC), versioned wire protocol (V1/V2/V3) with LEB128
encoding, and thread-safe protected wrappers.

Zero heap allocation -- all containers use pre-allocated bounded storage.
Core packages SPARK-proven at Gold level (absence of runtime errors).


