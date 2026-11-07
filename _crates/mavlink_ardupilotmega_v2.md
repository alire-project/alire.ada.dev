---
layout: crate
crate: "mavlink_ardupilotmega_v2"
authors: ["Fil Andrii",
"Max Reznik"]
maintainers: ["Fil Andrii <root.fi36@gmail.com>",
"Max Reznik <reznikmm@gmail.com>"]
licenses: ["MIT"]
websites: ["https://github.com/reznikmm/mavlink_ardupilotmega"]
tags: ["embedded",
"network",
"drone"]
version: "2.0.0"
short_description: "MAVLink, ardupilotmega dialect"
dependencies: [{crate: "mavlink_common_v2", version: "^2.0.0"}]
configuration_variables: []
configuration_values: []

---
# MAVLink -- ArduPilotMega Dialect (Ada Bindings)

This crate provides an Ada binding for the [MAVLink](https://mavlink.io)
**`ardupilotmega`** dialect.

The code is **generated**, not hand-written. It comes straight from the
official [MAVLink XML message definitions](https://github.com/mavlink/mavlink)
via [pymavlink](https://github.com/ArduPilot/pymavlink)'s `mavgen` tool
with its Ada backend, then lightly post-processed. This keeps the
binding faithful to the upstream specification and makes it
straightforward to refresh whenever `ardupilotmega.xml` changes.

## What you get

- Strongly typed Ada records for every `ardupilotmega` message, with fields,
  arrays, enums and bitmasks represented as proper Ada types instead of
  raw bytes.
- Marshalling/unmarshalling subprograms for each message, plus the
  frame header and CRC handling needed to talk MAVLink on the wire.
- `pragma Pure`, bareboard-friendly packages, suitable for embedded
  targets (e.g. STM32) as well as desktop ground control software.

## Wire protocol version

This crate targets the **MAVLink 2.0** wire protocol. If you need the
MAVLink 1.0 wire format (extended message IDs, message signing,
extension fields), use the sibling crate
[`mavlink_ardupilotmega`](https://alire.ada.dev/crates/mavlink_ardupilotmega)
instead -- it exposes the same dialect messages, packed
differently on the wire.

## Related crates

- [`mavlink_shared`](https://alire.ada.dev/crates/mavlink_shared) --
  code shared by all the generated dialect crates (CRC, low-level
  float/byte helpers, etc.). Pulled in automatically as a dependency;
  you normally don't need to depend on it directly.
- [`mavlink_common`](https://alire.ada.dev/crates/mavlink_common) --
  the shared `common` dialect with common messages.
- [`mavlink_ardupilotmega`](https://alire.ada.dev/crates/mavlink_ardupilotmega) --
  same dialect, MAVLink 1.0 wire protocol.


