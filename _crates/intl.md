---
layout: crate
crate: "intl"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://gitlab.com/stcarrez/ada-intl"]
tags: ["i18n",
"nls",
"bindings"]
version: "1.0.1"
short_description: "NLS thin Ada binding"
dependencies: []
configuration_variables: []
configuration_values: []

---
This is a small Ada library that provides NLS support by using
[gettext (3)](https://linux.die.net/man/3/gettext),
[textdomain (3)](https://linux.die.net/man/3/textdomain) and
[bindtextdomain (3)](https://linux.die.net/man/3/bindtextdomain).

When NLS is not supported or disabled, the Ada library implements the
NLS operations by using empty suitable stubs that skip the NLS transformation
and emit the English default message.

## Using the library

The first step in using the NLS library is to call the `Initialize` procedure
that handles the setup of `textdomain` and `bindtextdomain` to configure the
language according to the user's locale.  The program localized messages are
stored in a catalog file that is created by `msginit (1)` and `msgfmt (1)` tools.
In most cases catalog file are identified by a unique name that must be given
to the `Initialize` procedure (below, it will be `mytool`).

```
with Intl;
...
   PROG_NAME : constant String := "mytool";
 ...
   Intl.Initialize (PROG_NAME, "/usr/share/locale");
```

To localize a message, the `"-"` function is provided to encapsulate the call
to the [gettext (3)](https://linux.die.net/man/3/gettext) method.  If the message
is translated and the catalog contains it in the user's language, it will be
converted by `gettext` and the `"-"` function returns the localized message.

```
with GNAT.IO;
   ...
   function "-" (Message : in String) return String is (Intl."-" (Message));
   ...
   GNAT.IO.Put_Line (-("Hello world!"));
```

To build the message translation file (`PO files`), a tool can be used to extract
from the source code the default messages.  This process is
explained in the [GNU gettext](https://www.gnu.org/software/gettext/manual/) documentation.


