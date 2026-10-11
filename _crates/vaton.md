---
layout: crate
crate: "vaton"
authors: ["Manuel Hatzl"]
maintainers: ["Manuel Hatzl <hatzlmanuel@outlook.com>"]
licenses: ["MIT"]
websites: ["https://github.com/mhatzl/vaton"]
tags: ["spark"]
version: "0.1.0"
short_description: "Verified Ascii To Number conversion written in Ada/SPARK"
dependencies: [{crate: "spark_unbound", version: "~0.2.1"},
{crate: "gnat", version: "(>=12.0.0 & <2000) | >=2021"}]
configuration_variables: []
configuration_values: []

---
This library offers formally verified functions to convert character streams into the smallest standard type representation the resulting number may fit in.
The allowed formats are based on the [JSON-Number format](https://www.json.org/json-en.html), with the addition to allow single underscores between digits.

**Note:** Only decimal based numbers are supported!

**Examples:**

```
-10_000 -> Standard.Integer
1.0 -> Standard.Float
1e4 -> Standard.Float
```


