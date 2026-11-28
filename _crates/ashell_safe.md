---
layout: crate
crate: "ashell_safe"
authors: ["Rod Kay"]
maintainers: ["Rod Kay <rodakay5@gmail.com>"]
licenses: ["ISC"]
websites: ["https://github.com/charlie5/aShell"]
tags: ["spawn",
"os",
"command",
"process",
"tasking"]
version: "3.0.0"
short_description: "Task safe commands for aShell, run by a spawn server."
dependencies: [{crate: "ashell", version: "~3.0.0"},
{crate: "florist_blady", version: ">=6.1.0"},
{crate: "gnat", version: ">=12.1.0"}]
configuration_variables: []
configuration_values: []

---
Adds 'Shell.Commands.Safe' to aShell, which lets any task run and interact with OS programs. The programs are started by a separate spawn server, 'ashell_spawn_server', which must be on the PATH.

