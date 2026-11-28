---
layout: crate
crate: "ieee_ethernet"
authors: ["Pat Rogers"]
maintainers: ["Pat Rogers <progers@classwide.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/pat-rogers/ieee_ethernet"]
tags: ["ethernet",
"networking",
"embedded",
"ieee802-3",
"phy"]
version: "1.0.0"
short_description: "IEEE 802.3 Ethernet declarations, with the SMI and PHY interfaces"
dependencies: []
configuration_variables: []
configuration_values: []

---
Declarations from the IEEE 802.3 standard: frame and MTU lengths, Ethernet and IPv4 addresses, subnet masks, and the MII and RMII signal names.

Also provided are two abstractions defined by clause 22 of the standard, and therefore not vendor-specific:

  The Serial Management Interface (SMI, also known as MDIO), including the Basic Register Set indexes and record representations of the Basic Control and Basic Status registers

  An abstract PHY transceiver, whose auto-negotiation, loopback, power, reset, and link-state operations are concrete because the standard specifies them

A target supplies the concrete SMI I/O driver, and a vendor supplies the concrete PHY. Nothing here is architecture-specific: the project file sets neither Target nor Runtime, taking both from the client project.


