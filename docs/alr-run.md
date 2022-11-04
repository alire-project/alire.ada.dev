# SUMMARY
<pre>
   Launch an executable built by the release

</pre>
# USAGE
<pre>
   alr run [options] [executable] [--args=ARGS] [--skip-build] | [--list]

</pre>
# OPTIONS
<pre>
   -a (--args=ARGS)   Arguments to pass through (quote them if more than one)
   --list             List executables produced by current release           
   -s (--skip-build)  Skip building step                                     

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
   Compiles the crate (unless --skip-build is specified) and then executes the 
   default or given resulting executable. 

   With --list, a list of declared executables is produced instead of invoking 
   the compiler, and its location (if already built) is given.
</pre>
