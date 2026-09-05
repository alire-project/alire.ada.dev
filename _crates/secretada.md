---
layout: crate
crate: "secretada"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://gitlab.com/stcarrez/ada-libsecret"]
tags: ["secret",
"bindings"]
version: "1.0.0"
short_description: "Secret service Ada binding"
dependencies: [{crate: "libglib", version: "*"},
{crate: "libsecret", version: "*"}]
configuration_variables: []
configuration_values: []

---
The [libsecret](https://wiki.gnome.org/Projects/Libsecret) is a library for storing
and retrieving passwords and others secrets.  The library uses the
[Secret Service API](https://standards.freedesktop.org/secret-service/) provided
by Gnome Keyring or KDE Wallet.  This library provides an Ada binding
to the [Secret Service API](https://standards.freedesktop.org/secret-service/).

You can store a secret by using the following code extract:

```
with Secret.Services;
with Secret.Attributes;
with Secret.Values;
...
   Service : Secret.Services.Service_Type;
   List    : Secret.Attributes.Map;
   Value   : Secret.Values.Secret_Type;
...
      Service.Initialize;
      List.Insert ("secret identification key", "secret identification value");
      Value := Secret.Values.Create ("the-secret-to-store");
      Service.Store (List, "The secret label (for the keyring manager)", Value);
```

And you will retrieve it with:

```
   Value := Service.Lookup (List);
   if not Value.Is_Null then
      Ada.Text_IO.Put_Line (Value.Get_Value);
   end if;
```



