---
layout: crate
crate: "excel_writer"
authors: ["Gautier de Montmollin"]
maintainers: ["gdemont@hotmail.com"]
licenses: ["MIT"]
websites: ["https://excel-writer.sourceforge.io/"]
tags: ["excel",
"spreadsheet",
"xls",
"csv"]
version: "19.0.1"
short_description: "Produce Excel spreadsheets"
dependencies: []
configuration_variables: []
configuration_values: []

---
![Excel Writer logo](https://excel-writer.sourceforge.io/ew_logo_no_shadow.png)

Excel_Out is a standalone, portable Ada package for writing Excel spreadsheets with basic formattings and formulas, easily and programmatically.

* Enables the automatic production of reports
* Fast: 50 sheets per second, with 10,000 data cells each on a slow 1.66 GHz computer
* No interaction needed with Excel or MS Office
* Unconditionally portable (*)
* Endian-neutral
* Object oriented
* Task safe
* Pure Ada 95 (nothing compiler/system specific), can be used in projects in Ada 95, Ada 2005, Ada 2012 and later versions of the language
* Floating-point hardware neutral: no IEEE hardware required
* Tests and demos included
* Includes a CSV parser with related tools.
* Free, open-source

The creation of an Excel file is as simple as this small procedure:

```ada
with Excel_Out;

procedure Small_Demo is
  xl : Excel_Out.Excel_Out_File;
begin
  xl.Create ("small.xls");
  xl.Put_Line ("This is a small demo for Excel_Out");
  for row in 3 .. 8 loop
    for column in 1 .. 8 loop
      xl.Write (row, column, row * 1000 + column);
    end loop;
  end loop;
  xl.Close;
end Small_Demo;
```

___

(*) within limits of compiler's provided integer types and target architecture capacity.


