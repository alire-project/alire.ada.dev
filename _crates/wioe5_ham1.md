---
layout: crate
crate: "wioe5_ham1"
authors: ["Philip Munts"]
maintainers: ["Philip Munts <phil@munts.net>"]
licenses: ["BSD-1-Clause"]
websites: ["https://github.com/pmunts/libsimpleio"]
tags: ["embedded",
"linux",
"wioe5",
"lora",
"radio",
"wireless",
"ham"]
version: "1.23340.1"
short_description: "Wio-E5 LoRa Transceiver Module Device Driver"
dependencies: []
configuration_variables: []
configuration_values: []

---
# Introduction

This crate provides the device driver package **Wio_E5.Ham1** for the
Seeed Studio [Wio-E5 LoRa Transceiver
Module](https://wiki.seeedstudio.com/LoRa-E5_STM32WLE5JC_Module)
operating in test *aka* P2P (so-called Peer to Peer or Point to Point)
broadcast mode.

See
[WioE5LoRaP2P.pdf](https://repo.munts.com/libsimpleio/doc/WioE5LoRaP2P.pdf)
for more information about the [LoRa wireless
system](https://www.semtech.com/lora/what-is-lora) and operating the
Wio-E5 module in P2P mode.

**Wio_E5.Ham1** is derived from **Wio_E5.P2P** (see crate
[wioe5_p2p](https://alire.ada.dev/crates/wioe5_p2p.html)). It reserves
the first twelve bytes of the payload for address information to
implement ***[Amateur
Radio](https://www.fcc.gov/wireless/bureau-divisions/mobility-division/amateur-radio-service)
Unicast Flavor #1***, which creates a amateur radio [Personal Area
Network](https://en.wikipedia.org/wiki/Personal_area_network), operated
under a *Technician* or higher license, in the [33-cm
band](https://en.wikipedia.org/wiki/33-centimeter_band) (902 to 928 MHz
in the United States, 915 to 928 MHz in New Zealand, and possible
allocations in other [ITU Region
2](https://w6hs.net/itu-region-2-member-countries) countries).

*The code for this crate has been extracted from the [Linux Simple I/O
Library project](https://github.com/pmunts/libsimpleio).*

# API

The API for this device driver is documented in the
[Wio-E5.Ham1](https://github.com/pmunts/libsimpleio/blob/master/ada/devices/wioe5/wio_e5-ham1.ads)
package specification.

**Wio-E5.Ham1** is a generic package that must be instantiated with two
**Positive** value parameters, for maximum payload size (1 to 241 bytes)
and FIFO queue depth. The default values for the generic formal
parameters will prove satisfactory for most purposes. Depending on what
kind of data you are going to be sending, you might want reduce the
maximum payload size to match some other protocol, such as 64 bytes for
the [Remote I/O
Protocol](https://repo.munts.com/libsimpleio/doc/RemoteIOProtocol.pdf).

# Minimal Test Program

    WITH Wio_E5.Ham1;

    PROCEDURE HelloWorld IS

      PACKAGE LoRa IS NEW Wio_E5.Ham1;

      dev : LoRa.Device;

    BEGIN
      dev := LoRa.Create("/dev/ttyUSB0", 115200, "ZZ0ZZZ    ", 1, 915.0);
      dev.Send("Hello, World!", 2);
      dev.Shutdown;
    END HelloWorld;

More example programs are available at:
<https://github.com/pmunts/libsimpleio/tree/master/ada/programs/wioe5/ham1>.


