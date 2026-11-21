---
layout: crate
crate: "webif_example"
authors: ["Brent Seidel"]
maintainers: ["Brent Seidel <brentseidel@mac.com>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://github.com/BrentSeidel/Ada-Web-Server"]
tags: ["web",
"http",
"embedded"]
version: "0.1.0"
short_description: "Example usage of simple web interface library."
dependencies: [{crate: "bbs", version: "~0.1.0"},
{crate: "bbs_webif", version: "~0.1.0"}]
configuration_variables: []
configuration_values: []

---
An example simple web server built using the bbs_webif library.  Once
you build it, you can run it and connect to it using port 31415.


