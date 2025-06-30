---
layout: crate
crate: "byteflippers"
authors: ["Miko Elbrecht"]
maintainers: ["Miko Elbrecht <pmt.mailservice@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/Bread-Experts-Group/byteflippers"]
tags: ["byte",
"endian",
"flip",
"swap",
"msb",
"lsb",
"big-endian",
"little-endian"]
version: "1.1.0"
short_description: "Signed/modular types for system, big and little endian reading/writing."
dependencies: []
configuration_variables: []
configuration_values: []

---
Modular and signed types to convert between big and little endian, such as 50 (0x00000032) to 838860800 (0x32000000). Currently supported are 16/24/[32/64/128]-bit sized signed/modular/fp numeric types for big/little endian respectively, as well as system-endian dependent base types for 8/16/24/[32/64/128]-bit signed/modular/fp numeric types (for both categories: numbers in square brackets indicate the supported sizes of floating-points (fp.)))

All types are compatible with `Interfaces` operators, such as `Shift_Left`, `Shift_Right`, `Rotate_Left`, `Rotate_Right`, as well as (where applicable) `xor`, `and`, `or`.

**NOTE:** This library depends on the GNAT compiler, as it depends on the `Provide_Shift_Operators` pragma. If you need support for another compiler, please let me know, and I'll try to support it.

## Example Use

```ada
with Byteflippers;

with Ada.Text_IO;
with Ada.Streams.Stream_IO;
use  Ada.Streams.Stream_IO;

procedure Scratch is
    package Endians_u32 renames Byteflippers.Endians_Unsigned_32;

    F : File_Type;
    S : Stream_Access;
begin
   Create (F, Name => "test.bin");
   S := Stream (F);
   Byteflippers.Signed_32'Write (S, 1234);
   Endians_u32.Little_Endian'Write (S, 5678);
   Endians_u32.Little_Endian'Write (S, 9101);
   Endians_u32.Big_Endian'Write (S, 1213);
   Endians_u32.Big_Endian'Write (S, 1415);

   Close (F);   
   Open (F, In_File, "test.bin");
   S := Stream (F);

   Ada.Text_IO.Put_Line ("# System Endian Test");
   Ada.Text_IO.Put_Line (Byteflippers.Signed_32'Input (S)'Image);
   Ada.Text_IO.Put_Line ("# Little Endian Test (System / Little)");
   Ada.Text_IO.Put_Line (Byteflippers.Signed_32'Input (S)'Image);
   Ada.Text_IO.Put_Line (Endians_u32.Little_Endian'Input (S)'Image);
   Ada.Text_IO.Put_Line ("# Big Endian Test (System / Big)");
   Ada.Text_IO.Put_Line (Byteflippers.Signed_32'Input (S)'Image);
   Ada.Text_IO.Put_Line (Endians_u32.Big_Endian'Input (S)'Image);
end Scratch;
```


