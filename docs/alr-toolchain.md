# SUMMARY
<pre>
   Manage Alire-provided toolchains

</pre>
# USAGE
<pre>
   alr toolchain [options] [-u|--uninstall] [-i|--install crate[version set]] | --select [--local] [releases] [--disable-assistant]

</pre>
# OPTIONS
<pre>
   --disable-assistant  Disable autorun of selection assistant          
   -i (--install)       Install one or more toolchain component         
   --install-dir=ARG    Toolchain component(s) installation directory   
   --local              Store toolchain configuration in local workspace
   --select             Run the toolchain selection assistant           
   -u (--uninstall)     Uninstall one or more toolchain component       

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
   Download toolchain elements, like GNAT and gprbuild, in the shared cache of 
   the active configuration.

   Run it without arguments to get a list of downloaded tools.

   Use --select without arguments to run the assistant to select the default 
   toolchain for this configuration. Adding --local will instead make the 
   selection apply only to the workspace (overriding a possible configuration-
   wide selection). Giving one or more releases argument will skip the assistant
   and set the release as the default.

   Specify --install/--uninstall and one or more crates name with optional 
   version set to make available or remove a tool.

   Run `alr help toolchains` for further information about toolchain management 
   and use.
</pre>
