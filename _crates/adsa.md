---
layout: crate
crate: "adsa"
authors: []
maintainers: ["Rod Kay <rodakay5@gmail.com>"]
licenses: ["GPL-3.0-or-later WITH GCC-exception-3.1"]
websites: ["https://github.com/charlie5/aDSA"]
tags: ["distributed",
"dsa",
"annex-e",
"rpc",
"racw",
"gnatdist",
"zeromq"]
version: "1.5.3"
short_description: "Ada Annex E (DSA) runtime + gnatdist replacement, backed by ZeroMQ"
dependencies: [{crate: "gnat", version: ">=12"}]
configuration_variables: []
configuration_values: []

---
aDSA is a Partition Communication Subsystem (PCS) for Ada's Distributed
Systems Annex (Annex E), replacing the discontinued PolyORB/GLADE runtime.
`alr build` produces two ordinary tools:

  * `pcs_gnatdist` -- the gnatdist replacement: builds a distributed
    application from its `.cfg`, auto-assembling the GARLIC runtime (a
    `--RTS` overlay of the toolchain's own runtime) on first use and
    re-assembling it when the toolchain changes;
  * `pcs_supervisor` -- launches and restarts a built deployment per its
    `.manifest`.

System prerequisites beyond the toolchain: libzmq >= 4.x and zlib
(`pacman -S zeromq`, `apt install libzmq3-dev`, `pkg install libzmq4`;
Windows setup is in the README's Platforms section).

Start with docs/users-guide.md; `examples/` holds runnable demos.


