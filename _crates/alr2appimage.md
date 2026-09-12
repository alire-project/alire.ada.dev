---
layout: crate
crate: "alr2appimage"
authors: ["Manuel Gomez"]
maintainers: ["Manuel Gomez <mgrojo@gmail.com>"]
licenses: ["GPL-3.0-only"]
websites: ["https://github.com/mgrojo/alr2appimage"]
tags: ["utility",
"appimage",
"alire",
"linux",
"packaging"]
version: "1.0.0"
short_description: "Tool to create an AppImage executable from an Alire crate"
dependencies: [{crate: "ada_toml", version: "^0.3.0"},
{crate: "spoon", version: "^1.0.1"},
{crate: "parse_args", version: "~0.9.0"},
{crate: "resources", version: "~0.1.0"}]
configuration_variables: []
configuration_values: []

---
There are two prerequisites for your project to work with this tool:
- It has to be an Alire crate with an `executables` field. Its first value
  has to be the main application program. Otherwise, the executable program
  can be specified on the command line.
- It must be installable using Alire, including all the needed resources.

`alr2appimage` will use the following command for installing it (this requires Alire 2.0):
```shell
alr install
```
Or it will run `gprinstall` inside `alr exec`, if the former fails (Alire 1.x).

If you simply run the tool inside an Alire crate, it will read the
metadata from your `alire.toml` file and create a default AppImage
from it.

NOTE: `alr2appimage` is an independent project; it is not
affiliated to, nor supported by, the Alire or AppImage projects.



