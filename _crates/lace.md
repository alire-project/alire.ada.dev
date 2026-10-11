---
layout: crate
crate: "lace"
authors: ["Rod Kay"]
maintainers: ["Rod Kay <rodakay5@gmail.com>"]
licenses: ["ISC"]
websites: ["https://github.com/charlie5/lace"]
tags: ["event",
"response",
"subject",
"observer",
"pool",
"text"]
version: "1.0.0"
short_description: "Contains a set of low level re-usable Ada components."
dependencies: [{crate: "lace_shared", version: "^1.0.0"}]
configuration_variables: []
configuration_values: []

---

Contains:

   - lace.Events    : Provides a 'subject/oberver' 'event/response' facility.
   - lace.Any       : Provides an interface type to allow heterogenous containers.
   - lace.fast_Pool : Provides a generic which allows fast allocation/deallocation.
   - lace.Text      : Provides a DSA friendly set of text operations.



