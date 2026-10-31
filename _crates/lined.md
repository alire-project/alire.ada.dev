---
layout: crate
crate: "lined"
authors: ["Jeff Carter"]
maintainers: ["Bent Bracke <bent@bracke.dk>"]
licenses: ["BSD-3-Clause"]
websites: ["https://github.com/bracke/Lined"]
tags: ["line",
"editor"]
version: "20240419.0.0"
short_description: "Ada Implementation of the Line Editor from Software Tools"
dependencies: [{crate: "gnat", version: "<13.0 | >=13.3"},
{crate: "pragmarc", version: "^20240323.0.0"}]
configuration_variables: []
configuration_values: []

---
# Lined
Ada Implementation of the Line Editor from Software Tools

I did this to see how it would compare with the Ratfor original, and provide it here for anyone with a similar interest. I can't imagine anyone actually using this, unless they wanted a scriptable tool with the alternative regular-expression syntax it uses, since it's a simplified version of ed.


