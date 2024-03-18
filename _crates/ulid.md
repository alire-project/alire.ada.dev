---
layout: crate
crate: "ulid"
authors: ["Gautier de Montmollin"]
maintainers: ["gdemont@hotmail.com"]
licenses: ["MIT"]
websites: ["https://github.com/zertovitch/ulid"]
tags: ["ulid",
"uuid",
"guid",
"identifier",
"timestamp"]
version: "20240205.0.0"
short_description: "Universally Unique Lexicographically Sortable Identifier"
dependencies: [{crate: "gnat", version: "(>=11 & <2000) | >=2021"}]
configuration_variables: []
configuration_values: []

---
<img src="https://github.com/ulid/spec/raw/master/logo.png" alt="image" width="100" height="auto">

In a nutshell, a ULID code is a combination of 48-bit time stamp (most significant part),
with a millisecond accuracy, and a 80-bit random number (least significant part),
totalling 128 bits, that is 16 bytes (octets).

The preferred (canonical) representation of a ULID is in a certain version of the Base32 encoding.


