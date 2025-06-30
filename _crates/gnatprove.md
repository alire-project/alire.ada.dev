---
layout: crate
crate: "gnatprove"
authors: ["AdaCore"]
maintainers: ["Fabien Chouteau <chouteau@adacore.com>",
"César Sagaert <sagaert@adacore.com>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://docs.adacore.com/spark2014-docs/html/ug/index.html"]
tags: []
version: "15.1.0"
short_description: "Automatic formal verification of SPARK code"
dependencies: []
configuration_variables: []
configuration_values: []

---
GNATprove, which provides automatic formal verification of SPARK code, is based on the [open-source](https://github.com/AdaCore/spark2014) [SPARK Pro](https://www.adacore.com/sparkpro) by [AdaCore](https://www.adacore.com).
The [SPARK Pro User's Guide](https://docs.adacore.com/spark2014-docs/html/ug/index.html) provides extensive documentation on how to use GNATprove.
Note that because this version of GNATprove is built from an intermediate commit of SPARK Pro, it is not representative of any specific SPARK Pro release, and the SPARK Pro documentation may describe features or capabilities that are not yet available in this version of GNATprove.

To use GNATprove, simply add it to your Alire project using

    alr with gnatprove

Then, configure your environment by running:

    eval "$( alr printenv )"

You will then be able to run GNATprove:

    gnatprove

For more details on getting started using GNATprove, see [Getting Started with SPARK](https://docs.adacore.com/spark2014-docs/html/ug/en/getting_started.html) from the [SPARK Pro User's Guide](https://docs.adacore.com/spark2014-docs/html/ug/index.html).

To get started with the SPARK language, see the [Introduction to SPARK](https://learn.adacore.com/courses/intro-to-spark/index.html) course on [learn.adacore.com](https://learn.adacore.com/index.html).


