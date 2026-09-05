---
layout: crate
crate: "remoteio"
authors: ["Philip Munts"]
maintainers: ["Philip Munts <phil@munts.net>"]
licenses: ["BSD-1-Clause"]
websites: ["https://github.com/pmunts/libsimpleio"]
tags: ["embedded",
"linux",
"remoteio",
"adc",
"dac",
"gpio",
"i2c",
"motor",
"pwm",
"sensor",
"serial",
"servo",
"spi",
"stepper"]
version: "2.23808.1"
short_description: "Remote I/O Protocol Client Library for GNAT Ada"
dependencies: [{crate: "libhidapi", version: "*"},
{crate: "libusb", version: "*"}]
configuration_variables: []
configuration_values: []

---
This crate contains a subset of the [**Linux Simple I/O
Library**](https://github.com/pmunts/libsimpleio) Ada packages that are
relevant for building [**Remote I/O
Protocol**](https://repo.munts.com/libsimpleio/doc/RemoteIOProtocol.pdf)
client programs.

This crate can be built for Linux, MacOS, or Windows targets.

The **Remote I/O Protocol** is a lightweight message protocol for
performing remote I/O operations. The protocol is implemented using a
request/reply pattern, where the master device (*e.g.* a Linux computer)
transmits an I/O request in a 64-byte message to the slave device
(*e.g.* a single chip microcontroller). The slave device performs the
requested I/O operation and returns an I/O response in a 64-byte message
back to the master device.

The protocol is kept as simple as possible (exactly one 64-byte request
message and one 64- byte response message) to allow using low end single
chip microcontrollers such as the
[PIC16F1455](https://www.microchip.com/en-us/product/PIC16F1455) for the
slave device. Although particularly suited for USB raw HID devices, this
protocol can use any transport mechanism that can reliably transmit and
receive 64-byte messages.


