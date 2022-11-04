# SUMMARY
<pre>
   Pin dependencies to exact versions

</pre>
# USAGE
<pre>
   alr pin [options] [[crate[=&lt;version&gt;]] | crate --use=<path> [--commit=REF] [--branch=NAME] | --all]

</pre>
# OPTIONS
<pre>
   --all           Pin the complete solution                            
   --unpin         Unpin a release                                      
   --branch=NAME   Branch to be tracked in repository                   
   --commit=REF    Reference to be retrieved from repository            
   --use=PATH|URL  Use a directory or repository to fulfill a dependency

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
   Pin releases to a particular version. By default, the current solution 
   version is used. A pinned release is not affected by automatic updates.

   Without arguments, show existing pins.

   Use --all to pin the whole current solution.

   Specify a single crate to modify its pin.

   Use the --use &lt;PATH|URL&gt; switch to use the target to fulfill a dependency 
   locally instead of looking for indexed releases. An optional reference can be
   specified with --commit; the pin will be frozen at the commit currently 
   matching the reference.  Alternatively, a branch to track can be specified 
   with --branch. Use `alr update` to refresh the tracking pin contents.
</pre>
