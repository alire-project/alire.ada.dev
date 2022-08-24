---
title: Transition from GNAT Community
layout: page
---

In May 2022 AdaCore announced [the end of the GNAT Community release](
https://blog.adacore.com/a-new-era-for-ada-spark-open-source-community).
This document provides instructions on how to continue Ada/SPARK programming
without the GNAT Community release.

One of the characteristics of GNAT Community was that it came with many tools
and libraries all in one package:

 - A compiler and debugger: GNAT and GDB
 - An IDE: GNAT Studio
 - SPARK support with GNATprove
 - Pre-built libraries: Gnatcoll, XMLada, Libadalang, etc.

You will find below three ways to replace the content of GNAT Community with
the same tools and libraries but from different releases.

# Using the Alire package manager

Alire is a source-based package manager for the Ada and SPARK programming
languages.

It is a way for developers to easily build upon projects (libraries or
programs) shared by the community, but also to easily share their projects for
others to build upon.

In the Alire vocabulary, sources of projects/libraries/programs are provided by
what is called a crate. A crate can depend on other crates, and other crates
can depend on it. For instance, the libgpr crate depends on the xmlada crate.

Crates can have multiple dependencies, themselves having multiple dependencies.
This forms a dependency graph. Alire's main task is to automatically fetch,
build and upgrade the crates of the dependency graph so you don't have to do it
by hand.

The main interface into the Alire ecosystem is a command line tool called alr.
Alire is mostly a command line tool, however you will see that once the project
is set up you can start your favorite IDE and forget about Alire for the most
part.


### Compiler and debugger

Since version 1.1, binary releases of GNAT and GDB are provided by Alire. The
supported platforms are Windows x64-64, Linux x86-64, and macOS x86-64,
including cross compilers for ARM and RISC-V on all three hosts.

When first running alr, you can select your preferred compiler. Using the
default choices, Alire will provide the latest GNAT FSF available.

### IDE

As of today Alire doesn't install GNAT Studio automatically, but you can get a
release for Windows x64-64 or Linux x86-64 from the repository:
https://github.com/AdaCore/gnatstudio/releases Once GNAT Studio is installed
and in the PATH, you only have to use the command `$ alr edit` in your crate to
start it.

### SPARK

The SPARK formal verification tool GNATprove is available as a binary release
for Windows x64-64, Linux x86-64 and macOS x86-64. To use it, simply add
gnatprove as a dependency of your crate:
```console
$ alr with gnatprove
```

### Libraries

All the libraries provided in GNAT Community are now available in easy to build
source crates in the Alire index. Simply add the required library as a
dependency of your crate:
```console
$ alr with xmlada
$ alr with libadalang
```

## Start a new Alire project (crate)

The repository [Ada_SPARK_Workflow](https://github.com/alire-project/ada_spark_workflow)
provides an example as well as instructions on how to make a new Alire 
project and use all the advantages of the package manager. It also shows
how to use GitHub features to reach the highest open source software quality 
standard.

## How to convert a GNAT Community project to Alire

The Alire documentation contains a section on migration of existing Ada/SPARK
project to the Alire workflow: [Migration of an existing Ada/SPARK project to
Alire](https://alire.ada.dev/docs/#migration-of-an-existing-adaspark-project-to-alire).

# Using individual packages

This solution is the closest to the GNAT Community workflow. As part of the
Alire project a few tools are pre-built from the FSF sources and available for
download. When using Alire these tools are automatically downloaded for you,
but you can also decide not to use Alire and install them by hand.

Other than manual installation of the components, the main drawback of this
solution is that you do not have access to all the libraries of the Alire
ecosystem.

### How to install

Extract all the archives listed below under the same root directory.

If you only want to use the tools from GNAT Studio, you should just have to run 
GNAT Studio executable from `bin/` directory.

If you want to use the command line, add the `bin/` directory from your root
installation to the PATH environment variable.

### Compiler, GPRbuild, and debugger

Builds of GNAT FSF, GPRbuild, and GDB are available in the Alire GNAT-FSF-builds
repository: https://github.com/alire-project/GNAT-FSF-builds/releases

### IDE

For GNAT Studio, you can download a binary public release from the repository:
https://github.com/AdaCore/gnatstudio/releases. You can also consider using
Visual Studio Code with the Ada extension.

### SPARK

Builds of GNATprove for SPARK are also available from the Alire GNAT-FSF-builds
repository: https://github.com/alire-project/GNAT-FSF-builds/releases

### Libraries

With this solution, you have to build libraries from sources in dedicated
AdaCore GitHub repositories: https://github.com/AdaCore/

# Using distribution package managers

Some Linux/BSD distributions or msys2 for Windows provide builds of GNAT FSF.
 - Debian/ubuntu: `$ sudo apt install gnat gprbuild`
 - Arch Linux: `$ sudo pacman -S gcc-ada gprbuild`
 - msys2 for Windows: `$ sudo pacman -S mingw-w64-x86_64-gcc-ada mingw-w64-x86_64-gprbuild`

You can help us maintain this list of tools available in your favorite
distributions, or even contribute new packages for the distribution.
