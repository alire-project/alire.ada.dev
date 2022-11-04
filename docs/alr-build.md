# SUMMARY
<pre>
   GPRbuild current working release

</pre>
# USAGE
<pre>
   alr build [options] [--] [gprbuild switches and arguments]

</pre>
# OPTIONS
<pre>
   --release      Set root crate build mode to Release              
   --validation   Set root crate build mode to Validation           
   --development  Set root crate build mode to Development (default)

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
   Invokes gprbuild to compile all targets in the current crate.
</pre>
