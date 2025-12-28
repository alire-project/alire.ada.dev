---
layout: crate
crate: "adacl_aunit"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://sourceforge.net/projects/adacl_aunit/"]
tags: ["library",
"aunit",
"assert",
"ada2022"]
version: "7.0.1"
short_description: "Ada 2022 AUnit with readable asserts & paramerised test"
dependencies: [{crate: "adacl", version: "^7.0.0"},
{crate: "aunit", version: "25.0.0"}]
configuration_variables: []
configuration_values: []

---
A versatile Ada 2022 testing library, enhancing AUnit with readable assertions and parameterised tests.

## Features

### AUnit-Compatible Assertions

  - Generic support for access, array, discrete, floating-point, fixed-point, decimal, vector types, and files.
  - **Readable Error Messages**: Assertions provide detailed feedback.

Example for unbounded strings:

```ada
    procedure Equal
       (Actual   : Ada.Strings.Unbounded.Unbounded_String;
        Expected : String;
        Name     : String;
        Source   : String  := GNAT.Source_Info.File;
        Line     : Natural := GNAT.Source_Info.Line)
    is
       use Ada.Strings.Unbounded;
    begin
       if not (Actual = Expected) then
          Report_Assertion
             (Message => "In string «" & Name & "» the " & Actual'Image & " is not equal to " & Expected'Image,
              Source  => Source,
              Line    => Line);
       end if;
    end Equal;
```

This yields clear, context-rich error messages, surpassing standard AUnit
output.

## Parameterised Tests

Run the same test with varied inputs and expected values, boosting coverage
efficiently.

Example from hp41cx_tools:

```ada
overriding procedure Register_Tests (T : in out Test_Case) is
   pragma Debug (AdaCL.Trace.Entering (In_Parameter => T.Name.all'Image));
begin
   T.Parameter.Register_Routine (T, Test_To_HP_Duration_01'Access, "WAKE_UP",      "2024-12-01 08:00:00",   [3, 9, 4, 2, 0, 2, 8, 8, 0, 0, 0], 3942028800.0);
   T.Parameter.Register_Routine (T, Test_To_HP_Duration_01'Access, "^LBLTEST",     "2025-07-22 12:00:00",   [3, 9, 6, 2, 1, 7, 4, 4, 0, 0, 0], 3962174400.0);
   T.Parameter.Register_Routine (T, Test_To_HP_Duration_01'Access, "TONE",         "2025-11-12 09:12:34",   [3, 9, 7, 1, 9, 2, 7, 5, 5, 4, 0], 3971927554.0);
   T.Parameter.Register_Routine (T, Test_To_HP_Duration_01'Access, "FRACTION",     "2025-11-12 09:12:34.5", [3, 9, 7, 1, 9, 2, 7, 5, 5, 4, 5], 3971927554.5);
   T.Parameter.Register_Routine (T, Test_To_HP_Duration_01'Access, "REPEAT24",     "24:00:00",              [0, 0, 0, 0, 0, 8, 6, 4, 0, 0, 0], 0000086400.0);
   T.Parameter.Register_Routine (T, Test_To_HP_Duration_01'Access, "REPEAT'First", "0000:00:01.0",          [0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0], 0000000010.0);
   T.Parameter.Register_Routine (T, Test_To_HP_Duration_01'Access, "REPEAT'Last",  "9999:59:59.9",          [0, 0, 3, 5, 9, 9, 9, 9, 9, 9, 9], 0035999999.9);
   pragma Debug (AdaCL.Trace.Exiting);
   return;
end Register_Tests;
```

Registering tests multiple times with different data enhances test coverage
without redundant code.

Source: [SourceForge](https://sourceforge.net/p/adacl/git/ci/master/tree/adacl_aunit/test/src/)
Documentation: [GNATdoc](https://adacl.sourceforge.net/gnatdoc/adacl_aunit_test/index.html)


