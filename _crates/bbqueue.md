---
layout: crate
crate: "bbqueue"
authors: ["Fabien Chouteau"]
maintainers: ["Fabien Chouteau <chouteau@adacore.com>"]
licenses: ["MIT"]
websites: ["https://github.com/Fabien-Chouteau/bbqueue-spark"]
tags: ["spark", "nostd", "embedded", "lockfree", "dma", "bipbuffer"]
version: "0.1.0"
short_description: "DMA friendly lock-free BipBuffer"
dependencies: [{crate: "atomic", version: "*"}, {crate: "gnat", version: ">=10"}]
---
An Ada/SPARK proved implementation of James Munns'
BBQueue (https://github.com/jamesmunns/bbqueue)

