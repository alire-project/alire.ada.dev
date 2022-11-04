# USAGE
<pre>
   alr help [&lt;command&gt;|<topic>]

</pre>
# ARGUMENTS
<pre>
   &lt;command&gt;  Command for which to show a description
   &lt;topic&gt;    Topic for which to show a description  

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
# COMMANDS
<pre>
   General  
   <a href="alr-help.md">help</a>          Shows help on the given command/topic                                  
   <a href="alr-config.md">config</a>        List, Get, Set or Unset configuration options                          
   <a href="alr-printenv.md">printenv</a>      Print the build environment variables                                  
   <a href="alr-toolchain.md">toolchain</a>     Manage Alire-provided toolchains                                       
   <a href="alr-version.md">version</a>       Shows detailed version, configuration, and environment information     
 
   Index    
   <a href="alr-get.md">get</a>           Fetches a crate release                                                
   <a href="alr-index.md">index</a>         Manage indexes used by current configuration                           
   <a href="alr-init.md">init</a>          Creates a new working release with alire metadata, or generate metadata
   <a href="alr-pin.md">pin</a>           Pin dependencies to exact versions                                     
   <a href="alr-search.md">search</a>        Search a string in release names and properties                        
   <a href="alr-show.md">show</a>          See information about a release                                        
   <a href="alr-update.md">update</a>        Updates alire catalog and working release dependencies                 
   <a href="alr-with.md">with</a>          Manage release dependencies                                            
 
   Build    
   <a href="alr-action.md">action</a>        List or manually trigger action hooks                                  
   <a href="alr-build.md">build</a>         GPRbuild current working release                                       
   <a href="alr-clean.md">clean</a>         GPRclean working release and manage cached releases                    
   <a href="alr-dev.md">dev</a>           Developer helpers                                                      
   <a href="alr-edit.md">edit</a>          Start GNATstudio with Alire build environment setup                    
   <a href="alr-run.md">run</a>           Launch an executable built by the release                              
   <a href="alr-test.md">test</a>          Tests the compilation of all or some releases                          
   <a href="alr-exec.md">exec</a>          Run the given command in the alire project context                     
 
   Publish  
   <a href="alr-publish.md">publish</a>       Help with the publication of a new release                             

</pre>
# TOPICS
<pre>
   <a href="alr-aliases.md">aliases</a>         User defined command aliases          
   <a href="alr-identifiers.md">identifiers</a>     Naming rules for crate and index names
   <a href="alr-toolchains.md">toolchains</a>      Configuration and use of toolchains   
</pre>
# ALIASES
<pre>
   <a href="alr-gnatcov.md">gnatcov</a>       exec -P2 -- gnatcov  
   <a href="alr-gnatprove.md">gnatprove</a>     exec -P1 -- gnatprove
</pre>
