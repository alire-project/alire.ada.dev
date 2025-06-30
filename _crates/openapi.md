---
layout: crate
crate: "openapi"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://gitlab.com/stcarrez/openapi-ada"]
tags: ["rest",
"web",
"api",
"openapi"]
version: "0.8.0"
short_description: "OpenAPI library to build REST client applications"
dependencies: [{crate: "security", version: "^1.5.0"},
{crate: "utilada", version: "^2.6.0"},
{crate: "utilada_xml", version: "^2.6.0"}]
configuration_variables: []
configuration_values: []

---
[![Build Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/openapi-ada/badges/build.json)](https://porion.vacs.fr/porion/projects/view/openapi-ada/summary)
[![Test Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/openapi-ada/badges/tests.json)](https://porion.vacs.fr/porion/projects/view/openapi-ada/xunits)
[![Coverage](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/openapi-ada/badges/coverage.json)](https://porion.vacs.fr/porion/projects/view/openapi-ada/summary)

[OpenAPI Generator](https://github.com/OpenAPITools/openapi-generator) is a code generator that supports generation of
API client libraries, server stubs and documentation automatically
given an [OpenAPI Spec](https://github.com/OAI/OpenAPI-Specification).

The Ada client support has been integrated in [OpenAPI Generator](https://github.com/OpenAPITools/openapi-generator).

The OpenAPI Ada library is a small support library for the Ada code generator
provided by OpenAPI Generator.  The library provides support to serialize the data,
make HTTP requests and support the [OpenAPI Spec](https://github.com/OAI/OpenAPI-Specification)
specific operations or types.

## Alire setup

```
alr with openapi
```

For the HTTP connection, you can either use AWS or CURL and run one of the following commands:

```
alr with utilada_curl
alr with utilada_aws
```

## Generation

Example of client generation with OpenAPI file `my-api.yaml` and use of CURL support:

```
  alr exec -- openapi-generate-client -i my-api.yaml --additional-properties projectName=MyProject --additional-properties openApiName=OpenAPI --additional-properties httpSupport=Curl --model-package MyProject.MyModule -o .
```



