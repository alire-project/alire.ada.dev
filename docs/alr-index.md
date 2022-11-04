# SUMMARY
<pre>
   Manage indexes used by current configuration

</pre>
# USAGE
<pre>
   alr index [options] --add &lt;url&gt; --name <name> [--before <name>] | --del <name> | [--list] | --update-all | --check

</pre>
# OPTIONS
<pre>
   --add=URL          Add an index                                         
   --before=NAME      Priority order (defaults to last)                    
   --check            Check index contents for unknown configuration values
   --del=NAME         Remove an index                                      
   --list             List configured indexes (default)                    
   --name=NAME        User given name for the index                        
   --update-all       Update configured indexes                            
   --reset-community  Add the community index, or reset any local changes  

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
   Add, remove, list and update indexes used by the current alr configuration.

   Updating applies only to repository-stored indexes, in which case a pull 
   operation will be performed on them. An index initially set up with a 
   specific commit will not be updated.
</pre>
