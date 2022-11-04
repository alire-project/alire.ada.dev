# Configuration and use of toolchains
<pre>
   Alire indexes binary releases of GNAT and gprbuild. The compilers are indexed
   with their target name, e.g., gnat_native or gnat_riscv_elf. 

   Use alr toolchain --help to obtain information about toolchain management. 
   Alire can be configured to rely on a toolchain installed by the user in the 
   environment, or to use one of the indexed toolchains whenever possible.

   Some crates may override the default toolchain by specifying dependencies on 
   particular compiler crates, for example to use a cross-compiler. In this 
   situation, a compiler already available (selected as default or already 
   installed) will take precedence over a compiler available in the catalog. 

   See also https://alire.ada.dev/docs/#toolchains for additional details about 
   compiler dependencies and toolchain interactions.
</pre>
