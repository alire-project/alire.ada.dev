---
layout: crate
crate: "uuids"
authors: ["AJ Ianozi"]
maintainers: ["AJ Ianozi <aj@ianozi.com>"]
licenses: ["MIT"]
websites: ["https://github.com/AJ-Ianozi/uuids"]
tags: ["uuid",
"guid"]
version: "1.0.0"
short_description: "Implementation of RFC 9562 Universally Unique IDentifiers (UUIDs)"
dependencies: [{crate: "system_random", version: "^1.0.0"}]
configuration_variables: []
configuration_values: []

---
This library is an attempt to implement UUIDs to the RFC 9562 standard located here: https://www.ietf.org/rfc/rfc9562.html

As of this writing it can identify any UUID's version or variant and create any kind of UUID in the spec:
* UUIDv1: Gregorian Timestamp with constant data
* UUIDv3: MD5-hashed
* UUIDv4: Randomly-generated
* UUIDv5: SHA1-hashed
* UUIDv6: Gregorian Timestamp with constant data with better database locality 
* UUIDv7: UNIX Timestamp with random data, optimized for database locality
* UUIDv8: Custom UUIDs

All of my unit tests are passing, but am open to more tests plus additional validation on other platforms, especially big endian.

Refer to the [UUIDs Readme](https://github.com/AJ-Ianozi/uuids) for full description.

You can also read the [full API documentation](https://aj-ianozi.github.io/uuids/toc_index.html) which has been generated with [ROBODoc](https://github.com/gumpu/ROBODoc).



