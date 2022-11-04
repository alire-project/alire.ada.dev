# SUMMARY
<pre>
   List, Get, Set or Unset configuration options

</pre>
# USAGE
<pre>
   alr config [options] [--list] [--show-origin] [key_regex] | --get &lt;key&gt; | --set <key> <value> | --unset <key>

</pre>
# OPTIONS
<pre>
   --list          List configuration options                                 
   --show-origin   Show origin of configuration values in --list              
   --get           Print value of a configuration option                      
   --set           Set a configuration option                                 
   --unset         Unset a configuration option                               
   --global        Set and Unset global configuration instead of the local one
   --builtins-doc  Print Markdown list of built-in configuration options      

</pre>
# GLOBAL OPTIONS
<pre>
   -c (--config=ARG)       Override configuration folder location                              
   -f (--force)            Keep going after a recoverable troublesome situation                
   -h (--help)             Display general or command-specific help                            
   -n (--non-interactive)  Assume default answers for all user prompts                         
   --no-color              Disables colors in output                                           
   --no-tty                Disables control characters in output                               
   --prefer-oldest         Prefer oldest versions instead of newest when resolving dependencies
   --version               Displays version and exits                                          
   -q                      Limit output to errors                                              
   -v                      Be more verbose (use twice for extra detail)                        
   -d (--debug[])          Enable debug-specific log messages                                  

</pre>
# DESCRIPTION
<pre>
   Provides a command line interface to the Alire configuration option files.

   Option names (keys) can use lowercase and uppercase alphanumeric characters
   from the Latin alphabet. Underscores and dashes can also be used except as
   first or last character. Dot '.' is used to specify sub-categories, e.g.
   'user.name' or 'user.email'.

   Option values can be integers, float, Boolean (true or false) or strings. The
   type detection is automatic, e.g. 10 is integer, 10.1 is float, true is
   Boolean. You can force a value to be set a string by using double-quotes, 
   e.g.
   "10.1" or "true". Extra type checking is used for built-in options (see 
   below).

   Built-in configuration options:

   - index.auto_community [Boolean]
   When unset (default) or true, the community index will be added automatically
   when required if no other index is configured.

   - user.name [String]
   User full name. Used for the authors and maintainers field of a new crate.

   - user.email [Email address]
   User email address. Used for the authors and maintainers field of a new 
   crate.

   - user.github_login [GitHub login]
   User GitHub login/username. Used to for the maintainers-logins field of a new
   crate.

   - editor.cmd [String]
   Editor command and arguments for editing crate code (alr edit). The 
   executables and arguments are separated by a single space character. The 
   token ${GPR_FILE} is replaced by a path to the project file to open.

   - msys2.do_not_install [Boolean]
   If true, Alire will not try to automatically install msys2 system package 
   manager. (Windows only)

   - msys2.install_dir [Absolute path]
   Directory where Alire will detect and/or install msys2 system package 
   manager. (Windows only)

   - msys2.installer [String]
   Filename of the executable msys2 installer, e.g. 'msys2-x86_64-20220319.exe'.
   (Windows only)

   - msys2.installer_url [String]
   URL of the executable msys2 installer, e.g. 'https://github.com/msys2/msys2-
   installer/releases/download/2022-03-19/msys2-x86_64-20220319.exe'. (Windows 
   only)

   - update-manually-only [Boolean]
   If true, Alire will not attempt to update dependencies even after the 
   manifest is manually edited, or when no valid solution has been ever 
   computed. All updates have to be manually requested through `alr update`

   - distribution.disable_detection [Boolean]
   If true, Alire will report an unknown distribution and will not attempt to 
   use the system package manager.

   - solver.autonarrow [Boolean]
   If true, `alr with` will replace 'any' dependencies with the appropriate 
   caret/tilde dependency.

   - warning.caret [Boolean]
   If true, Alire will warn about the use of caret (^) for pre-1 dependencies.

   - warning.old_index [Boolean]
   When unset (default) or true, a warning will be emitted when using a 
   compatible index with a lower version than the newest known.

   - toolchain.assistant [Boolean]
   If true, and assistant to select the default toolchain will run when first 
   needed.

</pre>
