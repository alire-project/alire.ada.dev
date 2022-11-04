# SUMMARY
<pre>
   GPRclean working release and manage cached releases

</pre>
# USAGE
<pre>
   alr clean [options] [--cache] [--temp] [--] [gprclean switches and arguments]

</pre>
# OPTIONS
<pre>
   --cache  Delete cache of releases       
   --temp   Delete dangling temporary files

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
   no options:
      gprclean -r will be called to clean up the build environment.

   --cache:
      All downloaded dependencies will be deleted.

   --temp:
      All alr-???.tmp files in the subtree will be deleted. These files may 
   remain when alr is interrupted via Ctrl-C or other forceful means.
</pre>
