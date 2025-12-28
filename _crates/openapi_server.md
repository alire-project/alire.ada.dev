---
layout: crate
crate: "openapi_server"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://gitlab.com/stcarrez/openapi-ada"]
tags: ["rest",
"web",
"api",
"openapi"]
version: "0.9.0"
short_description: "OpenAPI library to build REST server applications"
dependencies: [{crate: "openapi", version: "^0.9.0"},
{crate: "security", version: "^1.5.0"},
{crate: "servletada", version: "^1.8.0"},
{crate: "utilada", version: "^2.8.2"},
{crate: "utilada_xml", version: "^2.8.2"}]
configuration_variables: []
configuration_values: []

---
[![Build Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/openapi-ada/badges/build.json)](https://porion.vacs.fr/porion/projects/view/openapi-ada/summary)
[![Test Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/openapi-ada/badges/tests.json)](https://porion.vacs.fr/porion/projects/view/openapi-ada/xunits)
[![Coverage](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/openapi-ada/badges/coverage.json)](https://porion.vacs.fr/porion/projects/view/openapi-ada/summary)

[OpenAPI Generator](https://github.com/OpenAPITools/openapi-generator) is a code generator that supports generation of
API client libraries, server stubs and documentation automatically
given an [OpenAPI Spec](https://github.com/OAI/OpenAPI-Specification).

The Ada server support has been integrated in [OpenAPI Generator](https://github.com/OpenAPITools/openapi-generator).

The OpenAPI Ada library is a small support library for the Ada code generator
provided by OpenAPI Generator.  The library provides support to serialize the data,
make HTTP requests and support the [OpenAPI Spec](https://github.com/OAI/OpenAPI-Specification).
specific operations or types.

## Alire setup

```
alr with openapi_server
```

For the server part, you must choose a servlet web container that will handle the requests.
Two web server implementations are provided:

* [AWS](https://github.com/AdaCore/aws)
* [EWS](https://github.com/simonjwright/ews)

and you should run one of the following `alr` command depending on your choice:

```
alr with servletada_aws
alr with servletada_ews
```

## Generation

Example of server generation with OpenAPI file `my-api.yaml` and use of CURL support:

```
  alr exec -- openapi-generate-server -i my-api.yaml --additional-properties projectName=MyProject --additional-properties openApiName=OpenAPI --additional-properties httpSupport=Curl --model-package MyProject.MyModule -o .
```



