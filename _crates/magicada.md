---
layout: crate
crate: "magicada"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://gitlab.com/stcarrez/ada-libmagic"]
tags: ["magic",
"file",
"bindings"]
version: "1.0.1"
short_description: "Magic Number Recognition Library Ada binding"
dependencies: [{crate: "libmagic", version: "*"}]
configuration_variables: []
configuration_values: []

---
Small Ada binding library to the [libmagic (3)](https://linux.die.net/man/3/libmagic)
library which is used by the implementation of the
[file (1)](https://linux.die.net/man/1/file) command.

To simplify and help in the use of the magic Ada library, the
`Magic.Manager` package encapsulates the management of the libmagic library
and provides high level simple operations to hide the details of interacting
with the C library.  The package defines the `Magic_Manager` tagged record
that takes care of the C library interaction and cleaning of the libmagic
library once the manager is no longer required.  To use it, declare the
instance and initialize it with the `Initialize` procedure:

```Ada
 with Magic.Manager;
 ...
    Mgr : Magic.Manager.Magic_Manager;
    ...
       Mgr.Initialize (Magic.MAGIC_MIME, Magic.DEFAULT_PATH);
```

The first parameter defines a set of flags represented by the `Magic.Flags`
type to control various options of the libmagic library.   The second
parameter indicates the default path to the magic file
(see [magic (5)](https://linux.die.net/man/5/magic)).
Once configured, the `Identify` functions can be used to identify a content.
For the first form, a path of the file is given:

```Ada
 Mime : constant String := Mgr.Identify ("file.ads");
```

With the second form, a `Stream_Element_Array` with the content to identify
is given to the function.

## Example

- [examples.adb](https://gitlab.com/stcarrez/ada-libmagic/-/blob/main/examples/src/examples.adb?ref_type=heads)


