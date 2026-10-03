---
layout: crate
crate: "espidf_http_server"
authors: ["Vadim Godunko"]
maintainers: ["Vadim Godunko <vgodunko@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/godunko/espidf_http_server"]
tags: ["a0b",
"embedded",
"esp",
"esp32",
"espidf",
"http-server"]
version: "0.1.0"
short_description: "Ada/ESP-IDF: HTTP Server bindings"
dependencies: [{crate: "a0b_buffers", version: "^0.1.0"},
{crate: "espidf", version: "^0.2.0"}]
configuration_variables: []
configuration_values: []

---
Ada bindings for the ESP-IDF HTTP Server component (`esp_http_server`).

Covers:
- starting and stopping the server;
- registration of URI and error handlers;
- reading request body and URL query parameters;
- sending responses: status, headers, content type, complete and chunked bodies, errors.


