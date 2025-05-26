---
layout: crate
crate: "adacl_regexp"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://sourceforge.net/projects/adacl/"]
tags: ["library",
"strings",
"wide-strings",
"search",
"regexp",
"unicode",
"ada2022"]
version: "6.2.0"
short_description: "Ada Class Library - Regular Expressions"
dependencies: [{crate: "adacl", version: "6.2.0"},
{crate: "gnat_native", version: "^14.2"}]
configuration_variables: []
configuration_values: []

---
A class library for Ada for those who like OO programming.

Regular expression for String, Wide_String and Wide_Wide_Strings using a
generic implementation that could be used for any array of descreete elements.

Development versions available with:

```sh
alr index --add "git+https://github.com/krischik/alire-index.git#develop" --name krischik
```

Source code including AUnit tests available on [SourceForge](https://git.code.sf.net/p/adacl/git)


