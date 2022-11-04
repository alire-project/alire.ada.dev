# SUMMARY
<pre>
   Help with the publication of a new release

</pre>
# USAGE
<pre>
   alr publish [options] [--skip-build] [--tar] [--manifest &lt;file&gt;] [<URL> [commit]]]

</pre>
# OPTIONS
<pre>
   --manifest=ARG   Selects a manifest file other than ./alire.toml                                 
   --tar            Start the publishing assistant to create a source archive from a local directory
   --trusted-sites  Print a list of trusted git repository sites                                    
   --skip-build     Skip the build check step                                                       

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
   Checks a release and generates an index manifest

   See full details at

    https://github.com/alire-project/alire/blob/master/doc/publishing.md

   URL is an optional path to a remote source archive, or a local or remote git 
   repository.

   For the common use case of a github-hosted repository, issue `alr publish` 
   after committing and pushing the new release version.

   Use --tar to create a source archive ready to be uploaded.

   Use --manifest to use metadata in a non-default file.

   See the above link for help with other scenarios.
</pre>
