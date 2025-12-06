---
layout: crate
crate: "lzmada"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["MIT"]
websites: ["https://gitlab.com/stcarrez/ada-lzma"]
tags: ["compression",
"lzma"]
version: "1.1.5"
short_description: "Ada LZMA Library Binding"
dependencies: [{crate: "liblzma", version: "*"}]
configuration_variables: []
configuration_values: []

---
A very thin Ada binding for the LZMA compression library.
Roughly speaking, import some package:

    with Lzma.Base;
    with Lzma.Container;
    with Lzma.Check;

Then declare the LZMA stream:

    Stream  : aliased Lzma.Base.lzma_stream := Lzma.Base.LZMA_STREAM_INIT;

Initialize the LZMA stream as decoder (or as encoder):

    Result := Lzma.Container.lzma_stream_decoder (Stream'Unchecked_Access,
                                                  Long_Long_Integer'Last,
                                                  Lzma.Container.LZMA_CONCATENATED);

Setup the stream 'next_out', 'avail_out', 'next_in' and 'avail_in' and call
the lzma_code operation with the action (Lzma.Base.LZMA_RUN or Lzma.Base.LZMA_FINISH):

    Result := Lzma.Base.lzma_code (Stream'Unchecked_Access, Action);

Close the LZMA stream:

    Lzma.Base.lzma_end (Stream'Unchecked_Access);



