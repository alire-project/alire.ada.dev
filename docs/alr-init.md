# SUMMARY
<pre>
   Creates a new working release with alire metadata, or generate metadata

</pre>
# USAGE
<pre>
   alr init [options] {--bin|--lib} &lt;crate name&gt;

</pre>
# OPTIONS
<pre>
   --bin       New project is an executable            
   --lib       New project is a library                
   --in-place  Create alr files in current folder      
   --no-skel   Do not generate non-alire skeleton files

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
   Initializes a new crate containing a ready-to-build GNAT project. The crate 
   is created as a child of the current directory, containing minimal sources 
   for an executable or library, as specified.

   --in-place is intended to be used inside the crate directory.
</pre>
