---
layout: crate
crate: "libsap"
authors: ["Daniel King"]
maintainers: ["Daniel King <damaki.gh@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/damaki/libsap"]
tags: ["protocol",
"protocols",
"nostd",
"spark"]
version: "0.3.0"
short_description: "Asynchronous message passing for protocol stacks"
dependencies: [{crate: "atomic", version: "^1.1.0"},
{crate: "gnat", version: ">=14"}]
configuration_variables: [{name: 'Tasking_Supported', type: 'Boolean', default: "true"}]
configuration_values: []

---
Provides utilities to create _Service Access Points_ (SAP) for asynchronous,
zero-copy message passing between tasks based on _Service Primitive_ messages
(request, confirm, indication, and response primitives).


