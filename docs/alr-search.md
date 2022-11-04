# SUMMARY
<pre>
   Search a string in release names and properties

</pre>
# USAGE
<pre>
   alr search [options] &lt;search term&gt; | [--crates] [--full] --list

</pre>
# OPTIONS
<pre>
   --crates           Restrict search and output to crate names and descriptions
   --external-detect  Detect externally-provided releases (implies --external)  
   --full             Show all versions of a crate (newest only otherwise)      
   --list             List all available releases                               
   --external         Include externally-provided releases in search            
   --property=TEXT    Search TEXT in property values                            

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
   Searches the given substring in crate names (or properties with --property), 
   and shows the most recent release of matching crates (unless --full is 
   specified).

   Use --crates to get a simple list of only crate names and  descriptions. 
   Otherwise, besides version, description and release notes, a status column 
   with the following status flags is provided:

   E: the release is externally provided.
   S: the release is available through a system package.
   U: the release is not available in the current platform.
   X: the release has dependencies that cannot be resolved.

   The reasons for unavailability (U) can be ascertained with 'alr show 
   &lt;crate&gt;=<version>'.

   Unresolvable releases (X) should not happen in platforms with assigned 
   maintainers. Common reasons are missing system dependencies that have been 
   phased out by the platform without being updated yet in the community index.
</pre>
