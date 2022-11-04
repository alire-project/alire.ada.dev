# SUMMARY
<pre>
   Print the build environment variables

</pre>
# USAGE
<pre>
   alr printenv [options] 

</pre>
# OPTIONS
<pre>
   --details     Print details about the environment variables and their origin
   --unix        Use a UNIX shell format for the export (default)              
   --powershell  Use a Windows PowerShell format for the export                
   --wincmd      Use a Windows CMD shell format for the export                 

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
   Print the environment variables used to build the crate. This command can be 
   used to setup a build environment, for instance before starting an IDE.

   Examples:
     - eval $(alr printenv --unix)
     - alr printenv --powershell | Invoke-Expression
</pre>
