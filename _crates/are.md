---
layout: crate
crate: "are"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://gitlab.com/stcarrez/resource-embedder"]
tags: ["resource",
"embedder",
"generator"]
version: "1.5.1"
short_description: "Advanced Resource Embedder"
dependencies: [{crate: "elada", version: "^1.8.6"},
{crate: "utilada", version: "^2.6.0"},
{crate: "xmlada", version: "^23.0.0"}]
configuration_variables: []
configuration_values: []

---
[![Build Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/resource-embedder/badges/build.json)](https://porion.vacs.fr/porion/projects/view/resource-embedder)
[![Test Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/resource-embedder/badges/tests.json)](https://porion.vacs.fr/porion/projects/view/resource-embedder)
[![Coverage](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/resource-embedder/badges/coverage.json)](https://porion.vacs.fr/porion/projects/view/resource-embedder)
[![Documentation Status](https://readthedocs.org/projects/resource-embedder/badge/?version=latest)](https://resource-embedder.readthedocs.io/en/latest/?badge=latest)

The resource embedder allows to embed files in binaries by producing C, Ada or Go source
files that contain the original files.

To generate a `config.ads` and `config.adb` Ada package with the resources, you may use:

```
are --lang=Ada -o src --resource=config --name-access --fileset='**/*.conf' config
```

Complex resource integrations are best described with and XML and are generated with:

```
are --lang=Ada -o src --rule=package.xml --name-access .
```

For Ada, it generates the following package declaration with the `Get_Content` function
that gives access to the files.  The Ada body contains the content of each embedded file.

```Ada
package Config is
  function Get_Content (Name : in String)
    return access constant String;
end Config;
```



