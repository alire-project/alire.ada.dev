---
layout: crate
crate: "gettext"
authors: ["H. ROMANO"]
maintainers: ["H. ROMANO <shuihuzhuan@free.fr>"]
licenses: ["MIT OR Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/HROMANO/gettext"]
tags: ["i18n",
"gettext"]
version: "25.9.3"
short_description: "A wrapper library for gettext"
dependencies: []
configuration_variables: []
configuration_values: []

---
A simple but hopefully complete Ada wrapper around
[gettext](https://www.gnu.org/software/gettext/). It should run on linux and
windows. Don't know for other OSes.

# How to use

Before calling the `gettext` family translation functions:

- You **must** set the locale using `Gettexts.Locale.Set_Locale` (even a call
  with no arguments is enough but required).
- You should set the directory and the domain name with
  `Gettexts.Set_Domain_Directory` and `Gettexts.Set_Domain_Name`.
- You should set the codeset with `Gettexts.Set_Domain_Codeset`.

# Function names

You can choose between:

- Standard names used in C language: `gettext`, `ngettext`, `pgettext`, `dgettext`, etc.
- More readable Ada names: `Get_Text`, `Get_Plural_Text`, `Get_Text_With_Context`, etc.

# Limits

There's no support for Ada in
[xgettext](https://www.gnu.org/software/gettext/manual/html_node/xgettext-Invocation.html).
But if your code doesn't have unbalanced tick marks (like in `'Class`), you
can still use it to produce and update `.po` files (see `update.sh` in example
directory). As a workaround, you can balance tick marks with comments `--  '`.


