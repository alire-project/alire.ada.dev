---
layout: crate
crate: "z_compression"
authors: ["Jeffrey R. Carter"]
maintainers: ["Bent Bracke <bent@bracke.dk>"]
licenses: ["BSD-3-Clause"]
websites: ["https://github.com/bracke/Z_Compression"]
tags: ["zlib",
"deflate",
"compression"]
version: "20240724.0.0"
short_description: "Standalone version of the Zlib Deflate compression algorithm"
dependencies: [{crate: "gnat", version: "<13.0 | >=13.3"}]
configuration_variables: []
configuration_values: []

---
# Z_Compression
Standalone version of the Zlib Deflate compression algorithm, derived from de Montmollin's Zip-Ada

Z_Compression.Compress applies Deflate to an input stream of bytes, defined by its generic formal subprograms Out_Of_Data and Next, producing an output stream of bytes that are passed to the generic formal procedure Put. The output may be in Zlib or raw Deflate formats.

ZC_Test is a test/demo program for Z_Compression. Building it should also compile Z_Compression. It is invoked as

```
zc_test <file name>
```

No error checking or handling is done. It compresses the given file into a Zlib format file. The output file name is the input file name with ".zc" appended.


