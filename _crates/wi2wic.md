---
layout: crate
crate: "wi2wic"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://github.com/stcarrez/wi2wic"]
tags: ["web",
"demo",
"wiki",
"markdown",
"html"]
version: "1.1.0"
short_description: "Wiki to Wiki translator"
dependencies: [{crate: "aws", version: "^24.0"},
{crate: "security", version: "^1.5.1"},
{crate: "servletada", version: "^1.8.1"},
{crate: "servletada_aws", version: "*"},
{crate: "utilada", version: "^2.8.2"},
{crate: "utilada_aws", version: "^2.8.2"},
{crate: "utilada_xml", version: "^2.8.2"},
{crate: "wikiada", version: "^1.5.0"}]
configuration_variables: []
configuration_values: []

---
Wi2wic is a small server that allows to convert HTML in Wiki text such as Markdown, MediaWiki, Dotclear or Creole.
It can also convert one Wiki syntax to another.  It can be used to:

* Migrate HTML page in Markdown or another Wiki,
* Convert Wiki page in HTML,
* Convert HTML documentation in Markdown or another Wiki,
* Cleanup a complex and noisy HTML page

The server is written in Ada and provides the following REST operations:

* import some HTML content and convert it in a Wiki syntax,
* convert a Wiki text from one syntax to another,
* render a Wiki text in HTML.



