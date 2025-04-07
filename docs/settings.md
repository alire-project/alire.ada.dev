# Settings

`alr` provides a generic mechanism to `list`, `get`, `set` or
`unset` settings options, either in a local or global context.

 Option names (keys) can use lowercase and uppercase alphanumeric characters
 from the Latin alphabet. Underscores and dashes can also be used except as
 the first or last character. Dot '.' is used to specify sub-categories, e.g.
 'user.name' or 'user.email'.

 Option values can be integers, floats, Booleans (true or false), or strings. The
 type detection is automatic, e.g. 10 is integer, 10.1 is float, true is
 Boolean. You can force a value to be a string by using double-quotes, e.g.
 "10.1" or "true". Extra type checking is used for built-in options (see below).

 Specific settings options:

  - `--list` List settings options
  - `--show-origin` Show origin of settings values in `--list`
  - `--get` Print value of a setting option
  - `--set` Set a setting option
  - `--unset` Unset a setting option
  - `--global `Set and Unset global settings instead of the local one
  - `--builtins-doc` Print Markdown list of built-in settings

 Examples:

 - `alr settings --global --set my_option option_value`

    Will set a setting option with the key `my_option` and the string
    value `option_value` in the global settings file.

 - `alr settings --get my_option`

    Will print the value setting option `my_option` if it is defined,
    otherwise the command fails.


## Custom settings options

The `alr settings` command allows you to set and get any combination of option
`key` and `value`. You can use this feature to store your own project related
settings, or implement tools that integrate in an `Alire` context. However, be
careful when naming custom settings options because `Alire` may use the same
`key` in the future. We recommend using a distinctive sub-category name, for
instance: `my_project.my_option`.

## Built-in settings options

The options used by `Alire` are pre-defined and documented. We call these
options `built-ins`.

A built-in option has a pre-defined type that is checked when setting or
loading. For instance:

 - `alr settings --global --set user.email "This is not an email address"`

will fail because the value tentatively assigned to `user.email` is not an
email address.

The built-ins also have a short description to document their type and usage.

## Built-ins list

You can get the list of options recognized by `alr` with `alr help settings`,
including their default values and a short explanation of their effects.

## Relocating your settings

By default, `alr` stores its global settings at `<user home>/.config/alire`.
You can use any other location by setting in the environment the variable
`ALIRE_SETTINGS_DIR=</absolute/path/to/settings/folder>`, or by using the global `-s`
switch: `alr -s </path/to/settings> <command>`.

Using pristine default settings can be useful to isolate the source of errors
by ensuring that a misconfiguration is not at play.

## Inspecting your settings

These commands may help you in identifying Alire settings and environment:
- `alr settings --list` will show all settings options in effect.
- `alr version` will print many relevant bits of information about the current
  `alr` environment.
- `alr --version` will just print the version number and exit.
 - **`cache.dir`** [Absolute path][Default:]:
   Directory where Alire will store its cache.

 - **`dependencies.git.keep_repository`** [Boolean][Default:FALSE]:
   When true, git origins are a proper git repository after deployment. Otherwise they are deployed as a plain directory.

 - **`dependencies.shared`** [Boolean][Default:TRUE]:
   When true, dependencies are downloaded and built in a shared location inside the global cache. When false, dependencies are sandboxed in each workspace.

 - **`distribution.disable_detection`** [Boolean][Default:FALSE]:
   If true, Alire will report an unknown distribution and will not attempt to use the system package manager. Takes precedence over  distribution.override.

 - **`distribution.override`** [String][Default:]:
   Distribution name to be used instead of autodetection. No effect if distribution.disable_detection is True.

 - **`editor.cmd`** [String][Default:]:
   Editor command and arguments for editing crate code (alr edit). The executables and arguments are separated by a single space character. The token ${GPR_FILE} is replaced by a path to the project file to open.

 - **`index.auto_community`** [Boolean][Default:TRUE]:
   When unset or true, the community index will be added automatically when required if no other index is configured.

 - **`index.auto_update`** [Integer][Default:24]:
   Hours between automatic index refresh. Set to 0 to disable.

 - **`index.host`** [String][Default:https://github.com]:
   URL of the community index host

 - **`index.owner`** [String][Default:alire-project]:
   Owner of the index repository (GitHub user/org).

 - **`index.repository_name`** [String][Default:alire-index]:
   Name of the index repository.

 - **`origins.archive.download_cmd`** [String][Default:curl ${URL} -L -s -o ${DEST}]:
   The command used to download crates which are published as archives. The executables and arguments are separated by a single space character. The token ${DEST} is replaced by the destination path, and ${URL} by the URL to download.

 - **`origins.git.trusted_sites`** [String][Default:bitbucket.org github.com gitlab.com savannah.gnu.org savannah.nongnu.org sf.net]:
   Space-separated list of trusted sites for Git origins, used by 'alr index --check' and 'alr publish --for-private-index'. If set to '...', all origins are trusted. Note that this does not have any effect when using 'alr publish' for submissions to the community index (which only permits the default list).

 - **`solver.autonarrow`** [Boolean][Default:TRUE]:
   If true, `alr with` will replace 'any' dependencies with the appropriate caret/tilde dependency.

 - **`solver.grace_period`** [Integer][Default:10]:
   Extra seconds to look for solutions after timeout

 - **`solver.timeout`** [Integer][Default:5]:
   Seconds until solver first timeout (-1 to disable)

 - **`toolchain.assistant`** [Boolean][Default:TRUE]:
   If true, and assistant to select the default toolchain will run when first needed.

 - **`toolchain.dir`** [Absolute path][Default:]:
   Directory where Alire will store its toolchains.

 - **`update.manually_only`** [Boolean][Default:FALSE]:
   If true, Alire will not attempt to update dependencies even after the manifest is manually edited, or when no valid solution has been ever computed. All updates have to be manually requested through `alr update`

 - **`user.email`** [Email address][Default:]:
   User email address. Used for the authors and maintainers field of a new crate.

 - **`user.github_login`** [GitHub login][Default:]:
   User GitHub login/username. Used to for the maintainers-logins field of a new crate.

 - **`user.name`** [String][Default:]:
   User full name. Used for the authors and maintainers field of a new crate.

 - **`warning.caret`** [Boolean][Default:TRUE]:
   If true, Alire will warn about the use of caret (^) for pre-1 dependencies, for which tilde (~) is recommended instead.

 - **`warning.old_index`** [Boolean][Default:TRUE]:
   If unset or true, a warning will be emitted when using a compatible index with a lower version than the newest known.

