---
layout: crate
crate: "gnatcov_bin"
authors: []
maintainers: ["chouteau@adacore.com",
"sagaert@adacore.com"]
licenses: []
websites: ["https://docs.adacore.com/gnatcoverage-docs/html/gnatcov/gnatcov_part.html"]
tags: ["coverage",
"analysis",
"test"]
version: "26.2.1"
short_description: "Coverage Analysis Tool - Binary Release"
dependencies: []
configuration_variables: []
configuration_values: []

---
GNATcoverage is a code coverage analysis tool offering support for a range of coverage metrics and output formats associated with powerful _consolidation_ features letting users assess the combined coverage achievements of multiple program executions.
It supports Ada, C and C++, but this binary only has Ada support.

Simple use example:
- Ensure your test project is well formed by building it a first time:
  `gprbuild -f -p -Ptests.gpr`
- Setup the instrumentation context in a known location:
  `gnatcov setup --prefix=/path/to/gnatcov-rts`
- Let further commands know about the location of the RTS via the `GPR_PROJECT_PATH` variable:
  On UNIX systems, `export GPR_PROJECT_PATH="$GPR_PROJECT_PATH:/path/to/gnatcov-rts/share/gpr"`
- In addition, when using shared libraries, make the runtime's shared libraries discoverable:
  On UNIX systems, `export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/path/to/gnatcov-rts/lib"`;
  On Windows, `set PATH=%PATH%;C:\path\to\gnatcov-rts\bin`
- Instrument the sources:
  `gnatcov instrument -Ptests.gpr --level=stmt`
- Build the instrumented sources:
  `gprbuild -f -p -Ptests.gpr --src-subdirs=gnatcov-instr --implicit-with=gnatcov_rts.gpr`
- Execute the tests normally; for each executable, a `.srctrace` file will be produced in the current directory.
- Analyze the coverage with:
  `gnatcov coverage --level=stmt --annotate=xcov *.srctrace -Ptests.gpr`.
  This produces annotated sources in the projects' object directory, in the format `filename.adb.xcov`.

Further information can be found in the [GNATcoverage User's Guide](https://docs.adacore.com/gnatcoverage-docs/html/gnatcov/gnatcov_part.html).


