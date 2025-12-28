---
layout: crate
crate: "coap_spark"
authors: ["Manuel Gomez"]
maintainers: ["Manuel Gomez <mgrojo@gmail.com>"]
licenses: ["Apache-2.0 OR GPL-2.0-or-later"]
websites: ["https://github.com/mgrojo/coap_spark"]
tags: ["spark",
"coap",
"iot",
"protocol"]
version: "0.10.0"
short_description: "CoAP implementation formally verified with SPARK/Ada"
dependencies: [{crate: "gnatprove", version: "^14.1.1"},
{crate: "wolfssl", version: "^5.8.0"},
{crate: "gnat_native", version: "^14.2"}]
configuration_variables: []
configuration_values: [{crate: 'wolfssl', settings: [{name: 'STATIC_PSK', value: "true"}]}]

---
CoAP-SPARK is a library implementing the Constrained Application Protocol (CoAP)
as defined in
[RFC 7252](https://www.rfc-editor.org/rfc/rfc7252), developed in the SPARK 
language, the formally verified subset of the Ada programming language.

This version implements client and server sides of the protocol with some limitations:
- It does not support block-wise transfers.
- It does not support retransmission of messages.
- It only supports NoSec and PreSharedKey security modes.

See LICENSING for licensing information.


