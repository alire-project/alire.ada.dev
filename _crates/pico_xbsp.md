---
layout: crate
crate: "pico_xbsp"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://pi-ada-tutorial.sourceforge.io/"]
tags: ["raspberry",
"pi",
"pico",
"rp2040",
"tasking",
"light-tasking",
"ada2022",
"embedded"]
version: "1.8.0"
short_description: "Extended board support package for Raspberry Pi Pico"
dependencies: [{crate: "adacl_embedded", version: "^7.1.2"},
{crate: "pico_bsp", version: "^2.2"},
{crate: "usb_embedded", version: "^1.0.0"}]
configuration_variables: [{name: 'Event_Log_Output', type: 'Enum (none, swd, usb, uart)', default: "none"},
{name: 'USB_RX_Buffer_Size', type: 'Integer range 64 .. 1024', default: "128"},
{name: 'USB_TX_Buffer_Size', type: 'Integer range 64 .. 1024', default: "128"},
{name: 'Variant', type: 'Enum (tasking, no_tasking)', default: "no_tasking"}]
configuration_values: []

---
Extended board support package (XBSP) for the Raspberry Pi Pico.

This crate builds upon Jeremy Grosser's official pico_bsp and adds a growing set of clean, reusable components for Ada
developers targeting the RP2040. It is developed alongside the [Pi Ada
Tutorial](https://pi-ada-tutorial.sourceforge.io/) but is equally suitable for any standalone embedded Ada project.

Current components:
* Pico.Analog	      - Analogue GPIO using PWM
* Pico.Analog.RGB_LED - Analogue RGB LED control using PWM
* Pico.Debug_IO       - Multi output interface for debug output
* Pico.Tone	      - Square-wave tone generation using PWM
* Pico.UART_IO	      - Simple UART text I/O for the Debug Probe (115200 8N1 on GP0/GP1)
* Pico.USB_IO	      - Simple USB text I/O for direct connection to a PC terminal
* Pico.Utils	      - Miscellaneous utilities

The crate is available in two variants:
* `no_tasking` (default) - small, fast, and compatible with the light runtime
* `tasking`		 - thread-safe using protected objects (requires a tasking runtime)

* Event_Log_Output
  * "none"	- deactivate output entirely.
  * "swd"	- use Ada.Text_IO which uses semihosting to output to GDB. Don't forget to activate with
		  `arm semihosting enable`.
  * "usb"	- use `Pico.USB_IO` which in turn uses `USB.Device.Serial` for output. You will need a serial terminal
		  to read the output.
  * "uart"	- use `Pico.UART_IO` which in turn uses `RP.UART` for output. You will need a Debug Probe or a RS232C to
		  USB interface as well as a serial terminal to read the output.

* USB_TX_Buffer_Size & USB_RX_Buffer_Size
  Read and write buffers can be configured separately for greater flexibility.
  The default value of 128 bytes equals two USB block sizes and enables reliable bulk transfers.
  The minimum supported size is 64 bytes (one USB block). Larger multi-block transfers may fail if the buffer
  is set too small.

All packages include full GNATdoc annotations.

Useful links:
* [GNATdoc documentation](https://pi-ada-tutorial.sourceforge.io/gnatdoc/pico_doc)
* [SourceForge repository](https://sourceforge.net/projects/pi-ada-tutorial/)
* [Tutorial homepage](https://pi-ada-tutorial.sourceforge.io/)

The library will continue to grow with each new tutorial chapter while remaining a clean, independent crate.


