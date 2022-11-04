# SUMMARY
<pre>
   See information about a release

</pre>
# USAGE
<pre>
   alr show [options] [&lt;crate&gt;[allowed versions]] [--system] [--external[-detect] | --graph | --jekyll | --solve | --tree

</pre>
# OPTIONS
<pre>
   --detail           Show additional details about dependencies      
   --external-detect  Add detected externals to available releases    
   --external         Show info about external definitions for a crate
   --graph            Print ASCII graph of dependencies               
   --system           Show info relevant to current environment       
   --solve            Solve dependencies and report                   
   --tree             Show complete dependency tree                   
   --jekyll           Enable Jekyll output format                     

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
   Shows information found in the loaded indexes about a specific release (see 
   below to narrow the searched milestones). By default, only direct 
   dependencies are reported. With --solve, a full solution is resolved and 
   reported in list and graph form.

   With --external, the external definitions for a crate are shown, instead of 
   information about a particular release

   Version selection syntax (global policy applies within the allowed version 
   subsets):

   crate        	Newest/oldest version
   crate=version	Exact version
   crate^version	Major-compatible version
   crate~version	Minor-compatible version
</pre>
