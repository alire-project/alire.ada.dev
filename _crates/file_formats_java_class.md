---
layout: crate
crate: "file_formats_java_class"
authors: ["Miko Elbrecht"]
maintainers: ["Miko Elbrecht <pmt.mailservice@gmail.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/Bread-Experts-Group/file_formats_java_class"]
tags: ["file",
"formats",
"java",
"class"]
version: "7.0.0"
short_description: "File format reader for the Java programming language CLASS file format"
dependencies: [{crate: "byteflippers", version: "^1.0.0"}]
configuration_variables: []
configuration_values: []

---
`file_formats_java_class` provides the facilities for reading CLASS files defined
in the [Java Virtual Machine Specification](https://docs.oracle.com/javase/specs/),
[Java SE 7, CLASS major file version 51](https://docs.oracle.com/javase/specs/jvms/se7/html/index.html),
[chapter 4](https://docs.oracle.com/javase/specs/jvms/se7/html/jvms-4.html).

Supported Elements (Java SE 7)
------------------------------
- Class Access Flags (Table 4.1)
  - `ACC_PUBLIC`
  - `ACC_FINAL`
  - `ACC_SUPER`
  - `ACC_INTERFACE`
  - `ACC_ABSTRACT`
  - `ACC_SYNTHETIC`
  - `ACC_ANNOTATION`
  - `ACC_ENUM`
- Constant Pool (Table 4.3)
  - `CONSTANT_Class_info`
  - `CONSTANT_Fieldref_info`
  - `CONSTANT_Methodref_info`
  - `CONSTANT_InterfaceMethodref_info`
  - `CONSTANT_String_info`
  - `CONSTANT_Integer_info`
  - `CONSTANT_Float_info`
  - `CONSTANT_Long_info`
  - `CONSTANT_Double_info`
  - `CONSTANT_NameAndType_info`
  - `CONSTANT_Utf8_info`
  - `CONSTANT_MethodHandle_info`
  - `CONSTANT_MethodType_info`
  - `CONSTANT_InvokeDynamic_info`
- Field Access Flags (Table 4.4)
  - `ACC_PUBLIC`
  - `ACC_PRIVATE`
  - `ACC_PROTECTED`
  - `ACC_STATIC`
  - `ACC_FINAL`
  - `ACC_VOLATILE`
  - `ACC_TRANSIENT`
  - `ACC_SYNTHETIC`
  - `ACC_ENUM`
- Method Access Flags (Table 4.5)
  - `ACC_PUBLIC`
  - `ACC_PRIVATE`
  - `ACC_PROTECTED`
  - `ACC_STATIC`
  - `ACC_FINAL`
  - `ACC_SYNCHRONIZED`
  - `ACC_BRIDGE`
  - `ACC_VARARGS`
  - `ACC_NATIVE`
  - `ACC_ABSTRACT`
  - `ACC_STRICT`
  - `ACC_SYNTHETIC`
- Attributes (Table 4.6)
  - `ConstantValue`
  - `Code`
  - `StackMapTable`
  - `Exceptions`
  - `InnerClasses`
  - `EnclosingMethod`
  - `Synthetic`
  - `Signature`
  - `SourceFile`
  - `SourceDebugExtension`
  - `LineNumberTable`
  - `LocalVariableTable`
  - `LocalVariableTypeTable`
  - `Deprecated`
  - `RuntimeVisibleAnnotations`
  - `RuntimeInvisibleAnnotations`
  - `RuntimeVisibleParameterAnnotations`
  - `RuntimeInvisibleParameterAnnotations`
  - `AnnotationDefault`
  - `BootstrapMethods`
  - `Other` - Used for unrecognized/private attributes
  - **NOTE:** All restrictions put in place of each attribute for determining the validity of a CLASS file may not be fully implemented at the current time.

Example Use
-----------
All pertinent types and subprograms are available within the package 
`File_Formats_Java_Class`. Reading `Class_File` is done primarily through the `Input` aspect,
as shown below.
```ada
with Ada.Text_IO;

with File_Formats_Java_Class;
use  File_Formats_Java_Class;

procedure Read_Class_File is
    F : File_Type;
    S : Stream_Access;
begin
    Open (F, In_File, "Example.class");
    S := Stream (F);
    Ada.Text_IO.Put_Line (Class_File'Input (S));
    Close (F);
end Read_Class_File;
```

Development Status
------------------
This crate does not yet define operations for writing to CLASS files, but this is a priority.
After writing is complete, this crate will be updated to support CLASS files of Java SE 8+.
You are free to report issues and contribute at the crate's [GitHub repository](https://github.com/Bread-Experts-Group/file_formats_java_class).


