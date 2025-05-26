---
layout: crate
crate: "win32ada"
authors: ["Intermetrics",
"AdaCore"]
maintainers: ["chouteau@adacore.com"]
licenses: []
websites: ["https://github.com/adacore/win32ada"]
tags: ["windows",
"api"]
version: "23.0.0"
short_description: "Ada API to the Windows library"
dependencies: []
configuration_variables: []
configuration_values: []

---
Due to a subpar integration of Win32Ada in Alire, any project using Win32Ada
specs must also have the Win32Ada pre-processing switches. 

Do this edit your GPR project file to:
1. With the "shared" project from Win32Ada: `with "shared.gpr";`
2. Add the following switches for Ada: `(Shared.Prep, "-gnateG");`

Here's what it looks like in an example project:
```ada
with "config/test_win32_config.gpr";

with "shared.gpr";

project Test_Win32 is

   for Source_Dirs use ("src/", "config/");
   for Object_Dir use "obj/" & Test_Win32_Config.Build_Profile;
   for Create_Missing_Dirs use "True";
   for Exec_Dir use "bin";
   for Main use ("test_win32.adb");

   package Compiler is
      for Default_Switches ("Ada") use
        Test_Win32_Config.Ada_Compiler_Switches &
        (Shared.Prep, "-gnateG"); -- See this line here
   end Compiler;

   package Binder is
      for Switches ("Ada") use ("-Es");
   end Binder;

   package Install is
      for Artifacts (".") use ("share");
   end Install;

end Test_Win32;
```



