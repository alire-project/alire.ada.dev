---
layout: crate
crate: "ssh_protocol"
authors: ["Iru Cai"]
maintainers: ["Iru Cai <vimacs.hacks@gmail.com>"]
licenses: ["Apache-2.0"]
websites: ["https://codeberg.org/vimacs/ssh_protocol-ada"]
tags: ["ssh"]
version: "0.0.2"
short_description: "SSH protocol (RFC4251) core library"
dependencies: []
configuration_variables: []
configuration_values: []

---
The ssh_protocol library is an implementation of the SSH protocol version 2. It is designed as a protocol engine, without I/O, cryptography, or RNG in the core library.

The library implements the SSH transport layer (RFC 4253), user authentication (RFC 4252), and connection layer (RFC 4254), following the overall architecture defined in RFC 4251. It supports a modern, security-hardened algorithm set, which is supported by the cryptography backends such as libsodium and OpenSSL libcrypto.

The core library only uses static allocation, and does not use exceptions.


