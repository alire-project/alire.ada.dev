---
layout: crate
crate: "universal_text_file"
authors: ["Jeff Carter"]
maintainers: ["Bent Bracke <bent@bracke.dk>"]
licenses: ["BSD-3-Clause"]
websites: ["https://github.com/bracke/Universal-Text-File"]
tags: ["format",
"unicode",
"text"]
version: "20220720.0.0"
short_description: "Proposed universal format for Unicode text files"
dependencies: [{crate: "gnat", version: "<13.0 | >=13.3"}]
configuration_variables: []
configuration_values: []

---
# Universal Text File Format
Proposed universal format for Unicode text files

Here I propose a universal format for Unicode text files, specified by its Ada implementation. Some features of the format are

* ASCII code points are encoded as themselves
* At most three bytes are used to encode a code point
* All code points may occur in a line
* Lines may be any length (though the implementation is limited to Integer'Last)

I have called this format Universal Text File format, with the acronym UTF. Like GNAT Programming Studio (GPS), this result is an acronym collision. Suggestions for alternative names are welcome.

## Combined Specification and Ada Implementation
The format is specified here by its Ada implementation in package UTF, which is short and straightforward.

## Tools
Three simple tools are provided:
* To_UTF, to convert an Ada.Text_IO file to UTF
* From_UTF, to convert a UTF file into an Ada.Text_IO file
* Umore, a simple `more` program for UTF files

## Suitability
Most tools for processing text files on the major platforms work with native text files from other platforms, and UTF-8 has been widely adopted for encoding Unicode text files, so it seems unlikely that an alternative will gain much traction. However, having done this, I thought I would share it should anyone be interested.

## Standard Software-Engineering Practice
Encodings should normally only be used externally to a program. Encoded input data should be decoded immediately upon input, and output data encoded immediatly before output.


