# SUMMARY
<pre>
   Updates alire catalog and working release dependencies

</pre>
# USAGE
<pre>
   alr update [options] [crate]...

</pre>
# OPTIONS
<pre>
   --online  Fetch index updates before attempting crate updates

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
   Resolves unpinned dependencies using available indexes.

   Invoked without arguments will consider all unpinned crates for updating.

   One or more crates can be given as argument, in which case only these crates 
   will be candidates for updating. Requesting the update of a pinned crate is 
   not allowed.
</pre>
