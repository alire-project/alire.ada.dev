# SUMMARY
<pre>
   Run the given command in the alire project context

</pre>
# USAGE
<pre>
   alr exec [options] [-P?] [--] &lt;executable/script&gt; [<switches and arguments>]

</pre>
# OPTIONS
<pre>
   -P[ARG]  Add "-P &lt;PROJECT_FILE&gt;" to the command switches

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
   Alr sets up the environment variables (GPR_PROJECT_PATH, 
   PATH, etc.) and then spawns the given command.

   This can be used to run tools or scripts on Alire projects.

   The "-P" switch can be used to ask Alire to insert a 
   "-P &lt;PROJECT_FILE&gt;" switch to the command arguments.
   "-P" takes an optional position argument to specify where
   to insert the extra switch. "-P1" means first position, 
   "-P2" second position, etc. "-P-1" means last position, 
   "-P-2" penultimate position, etc. "-P" equals "-P1".
   For example "alr exec -P2 -- python3 main.py arg1" will
   run the following command:
   ["python3", "main.py", "-P", "crate.gpr", "arg1"]
</pre>
