---
layout: crate
crate: "swiss_micros_tools"
authors: ["Martin Krischik <krischik@users.sourceforge.net>"]
maintainers: ["Martin Krischik <krischik@users.sourceforge.net>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://calculator-scripts.sourceforge.io/hp41cx-tools/"]
tags: ["calculator",
"tools",
"retrocomputing",
"ada-2022",
"dm16l",
"cross-platform"]
version: "1.8.11"
short_description: "Cross-platform tools to supercharge your Swiss Micros experience"
dependencies: [{crate: "adacl", version: "^8.0"},
{crate: "adacl_desktop", version: "^8.0"},
{crate: "adacl_regexp", version: "^8.0"},
{crate: "adacl_serial", version: "^8.0"}]
configuration_variables: []
configuration_values: []

---
## Swiss Micros Tools

Step into the golden era of handheld computing with **swiss_micros_tools**, a versatile suite that turbocharges your
SwissMicros calculator adventures!  Unlike workflows shackled to a serial terminal, this toolkit puts the three most
important USB-serial chores on the command line - no eyeballing a watch and no precision Enter-key gymnastics.

Currently implemented is **dm_set_time**: it sets the calculator clock second-precise from the host. Planned companions
are **dm_receive** and **dm_send**, completing the trio so you can move programs and data without opening a terminal at
all.

Unlike many tools shackled to Windows, this toolkit runs flawlessly on **macOS**, **Linux**, and **Windows**. Built with
the precision of **Ada 2022** for unshakeable reliability, the tools talk to the calculator over the USB serial link
with the same care SwissMicros put into the hardware.

### Getting started

Put the calculator into **SERIAL CONSOLE** mode before starting any of the tools. All three commands accept the same two
options so you can find your feet immediately:

```
    -d Device   --device=Device       device file (unix) or name (windows)
                                      of the USB serial device.
                DM_SERIAL_DEVICE=     set via environment variable

    -?          --help                this help
```

### Key Features

* **dm_set_time** *(available now)*: Set the calculator clock to the host time, second-precise - no watching a second
  hand and stabbing Enter.
* **dm_receive** *(planned)*: Pull programs and data from the calculator without a terminal session.
* **dm_send** *(planned)*: Push programs and data to the calculator without a terminal session.
* **Cross-Platform Power**: Runs natively on macOS, Linux, and Windows - like a portable Ada generic, no OS exceptions.
* **Open Source**: Hosted on [SourceForge](https://calculator-scripts.sourceforge.io/hp41cx-tools/), ready for you to
  hack, extend, and share with the retro computing community.

### Why You'll Love It

SwissMicros calculators already feel like the best of the 1980s, rebuilt for today. **swiss_micros_tools** removes the
last awkward step: talking to them through a raw serial console when all you wanted was the time set, a dump saved, or a
program loaded. Join the retro computing revolution - on any desktop OS, and without a terminal in sight.


