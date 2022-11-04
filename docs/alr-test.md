# SUMMARY
<pre>
   Tests the compilation of all or some releases

</pre>
# USAGE
<pre>
   alr test [options] [crate[versions]]...

</pre>
# OPTIONS
<pre>
   --continue        Skip testing of releases already in folder                     
   --docker[=IMAGE]  Test releases within docker IMAGE (or alire/gnat:debian-stable)
   --full            Test all indexed crates                                        
   --newest          Test only the newest release in crates                         
   --redo            Retest releases already in folder (implies --continue)         
   --search          Interpret arguments as substrings instead of exact crate names 

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
   Tests the retrievability and buildability of all or specific releases. Unless
   --continue or --redo is given, the command expects to be run in an empty 
   folder.

   After completion, a report in text, markup and junit format will be available
   in the current directory. A complete log of each release building process 
   will be available in respective &lt;release&gt;/alire/alr_test.log files.

   Version selection syntax (global policy applies within the allowed version 
   subsets):

   crate        	Newest/oldest version
   crate=version	Exact version
   crate^version	Major-compatible version
   crate~version	Minor-compatible version
</pre>
