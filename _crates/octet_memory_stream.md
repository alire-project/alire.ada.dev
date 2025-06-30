---
layout: crate
crate: "octet_memory_stream"
authors: ["Miko Elbrecht"]
maintainers: ["Miko Elbrecht <pmt.mailservice@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/Bread-Experts-Group/octet_memory_stream"]
tags: ["octet",
"byte",
"buffer",
"stream",
"ada",
"streams",
"memory"]
version: "1.1.0"
short_description: "Provides a Root_Stream_Type wrapper over an array of octets in memory."
dependencies: []
configuration_variables: []
configuration_values: []

---
`octet_memory_stream` provides a standalone `Ada.Streams.Root_Stream_Type`
wrapper around an `Octet_Array` (array of 8-bit bytes,) primarily for the
purpose of protecting an over-arching stream from misalignment while reading
from, or writing to, e.g., a file format.

If the `Memory_Stream` detects an out-of-bounds error as the result of a read
or write operation, an `Out_Of_Bounds_Error` exception will be raised.

Example Use
-----------
All pertinent types and subprograms are available within the package 
`Octet_Memory_Stream`. Wrapping an `Octet_Array` is done through the
`To_Stream` function.
```ada
pragma Ada_2022;

with Ada.Text_IO;
with Ada.Streams.Stream_IO;
use  Ada.Streams.Stream_IO;
with Octet_Memory_Stream;

procedure TestDemo is
   F                : File_Type;
   Protected_Stream : Stream_Access;
   Memory_Stream    : Octet_Memory_Stream.Stream_Access;
begin
   Open (F, In_File, "example");
   Protected_Stream := Stream (F);
   declare
      Data : Octet_Memory_Stream.Octet_Array (1 .. 50);
   begin
      Octet_Memory_Stream.Octet_Array'Read (Protected_Stream, Data);
      Memory_Stream := Octet_Memory_Stream.To_Stream (Data);
   end;
   declare
      OK_Data  : Octet_Memory_Stream.Octet_Array (1 .. 25);
      OOB_Data : Octet_Memory_Stream.Octet_Array (1 .. 26);
   begin
      Octet_Memory_Stream.Octet_Array'Read (Memory_Stream, OK_Data);
      Ada.Text_IO.Put_Line (OK_Data'Image);

      Octet_Memory_Stream.Octet_Array'Read (Memory_Stream, OOB_Data);
      --  exception raised above
      Ada.Text_IO.Put_Line (OOB_Data'Image);
   end;
   Close (F);
end TestDemo;
```


