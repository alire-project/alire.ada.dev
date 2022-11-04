# SUMMARY
<pre>
   Manage release dependencies

</pre>
# USAGE
<pre>
   alr with [options] [{ [--del] &lt;crate&gt;[versions]... | --from <gpr_file>... | <crate>[versions] --use <path> [--commit REF] [--branch NAME]} ] | --solve | --tree | --versions

</pre>
# OPTIONS
<pre>
   --del           Remove given dependencies                        
   --from          Use dependencies declared within GPR project file
   --graph         Show ASCII graph of dependencies                 
   --branch=NAME   Branch to track in repository                    
   --commit=REF    Commit to retrieve from repository               
   --use=PATH|URL  Add a dependency pinned to some external source  
   --solve         Show complete solution to dependencies           
   --tree          Show complete dependency tree                    
   --versions      Show version status of dependencies              

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
   Inspect and manage dependencies.

   * Inspecting dependencies:
   Run without arguments prints current dependencies. Use --solve to print the 
   solution in use for these dependencies.

   * Adding dependencies from the command line:
   Dependencies are added by giving their name, and removed by using the --del 
   flag. Dependencies cannot be simultaneously added and removed in a single 
   invocation.

   * Adding dependencies pinned to external sources:
   When a single crate name is accompanied by an --use PATH|URL argument, the 
   crate is always fulfilled for any required version by the sources found at 
   the given target. An optional reference can be specified with --commit; the 
   pin will be frozen at the commit currently matching the reference. 
   Alternatively, a branch to track can be specified with --branch. Use `alr 
   update` to refresh the tracking pin contents.

   * Adding dependencies from a GPR file:
   The project file given with --from will be scanned looking for comments that 
   contain the sequence 'alr with'.  These will be processed individually as if 
   they had been given in the command line, starting with no dependencies. That 
   is, only dependencies given in the GPR file will be preserved.

   Example of GPR file contents:

   with "libhello"; -- alr with libhello

   Version selection syntax (global policy applies within the allowed version 
   subsets):

   crate        	Newest/oldest version
   crate=version	Exact version
   crate^version	Major-compatible version
   crate~version	Minor-compatible version
</pre>
