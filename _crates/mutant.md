---
layout: crate
crate: "mutant"
authors: ["Go Komura"]
maintainers: ["Go Komura <contact@comcomponent.com>"]
licenses: ["Apache-2.0"]
websites: ["https://github.com/gomurin0428/AdaMutant"]
tags: ["mutation",
"testing",
"spark",
"verification",
"tool"]
version: "0.1.0"
short_description: "AdaMutant: mutation testing for Ada and SPARK (Stryker.NET-style)"
dependencies: [{crate: "gnat", version: ">=14"}]
configuration_variables: []
configuration_values: []

---
AdaMutant is a mutation testing tool for Ada and SPARK, in the spirit of
Stryker.NET. It makes small changes (mutants) to the sources, checks whether
the tests or the GNATprove proofs detect each change, and reports the
mutation score.

It has its own lexer for Ada up to Ada 2022 and does not depend on
libadalang. A mutant is killed by a failing test or, for SPARK, by a failing
proof. Where it can, AdaMutant builds all the mutants once (mutant schemata)
and switches the active mutant with an environment variable while the tests
run; the other mutants are built one at a time. Mutants run in parallel in
copies of the project, with a time limit and an optional memory limit for
the tests.

The mutators cover arithmetic, relational, logical, unary and membership
operators, Boolean, numeric and string literals, conditions, and statement
deletion. Comments in the source can disable them, and `--since` limits a
run to the lines changed since a git revision.

The reports are a console table, a self-contained HTML file and JSON in
mutation-testing-report-schema v2. AdaMutant runs on Linux, macOS and
Windows.


