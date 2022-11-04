# SUMMARY
<pre>
   Fetches a crate release

</pre>
# USAGE
<pre>
   alr get [options] &lt;crate&gt;[allowed versions]

</pre>
# OPTIONS
<pre>
   -b (--build)  Build after download                               
   --dirname     Display deployment folder                          
   -o (--only)   Retrieve requested crate only, without dependencies

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
   Retrieve a crate, in the case of regular ones, or install a system package 
   provided by the platform. A regular crate is deployed under an immediate 
   folder with naming 'name_version_hash'.

   Version selection syntax (global policy applies within the allowed version 
   subsets):

   crate        	Newest/oldest version
   crate=version	Exact version
   crate^version	Major-compatible version
   crate~version	Minor-compatible version
</pre>
