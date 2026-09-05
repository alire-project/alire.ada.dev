---
layout: crate
crate: "mdshow"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://gitlab.com/stcarrez/mdshow"]
tags: ["markdown",
"mediawiki",
"dotclear",
"viewer"]
version: "1.0.0"
short_description: "Markdown show on terminal"
dependencies: [{crate: "ansiada", version: "^1.0.0"},
{crate: "gid", version: "^13.0.1"},
{crate: "intl", version: "^1.0.1"},
{crate: "printer_toolkit", version: "~0.3.0"},
{crate: "uri_ada", version: "^2.0"},
{crate: "utilada", version: "^2.8.0"},
{crate: "utilada_aws", version: "^2.8.0"},
{crate: "wikiada", version: "^1.5.0"}]
configuration_variables: []
configuration_values: []

---
`mdshow` is a small command line utility to format and display a markdown file on the terminal.
The viewer supports several format including Markdown, MediaWiki, Creole, Dotclear and Textile.
It can display images in terminals that implement the Kitty Graphics Protocol (`kitty`, `konsole`)
or fallbacks to using unicode character blocks for images when Kitty Graphics Protocol is not supported.



