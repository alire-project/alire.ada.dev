---
layout: crate
crate: "jupyter_kernel"
authors: ["Max Reznik"]
maintainers: ["Max Reznik <reznikmm@gmail.com>"]
licenses: ["BSD-3-Clause"]
websites: ["https://github.com/reznikmm/jupyter/"]
tags: ["jupyter",
"notebook",
"kernel"]
version: "1.0.0"
short_description: "Jupyter Kernel for Ada"
dependencies: [{crate: "matreshka_league", version: "*"},
{crate: "spawn", version: "*"},
{crate: "zeromq_ada", version: "*"}]
configuration_variables: []
configuration_values: []

---
# Jupyter Kernel for Ada

To run this kernel with Jupyter Notebook:
    alr get --build jupyter_kernel
    cd jupyter_kernel*
    ln -s ./alire/build/.objs .
    PATH=$PATH:$PWD/alire/build/.objs/driver JUPYTER_PATH=$PWD jupyter-notebook --debug


