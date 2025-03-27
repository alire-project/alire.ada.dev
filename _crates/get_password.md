---
layout: crate
crate: "get_password"
authors: ["Riccardo Bernardini"]
maintainers: ["Riccardo Bernardini <riccardo.bernardini@uniud.it>"]
licenses: ["MIT"]
websites: ["https://gitlab.com/my-ada-library/get_password"]
tags: ["password",
"echo",
"textio"]
version: "1.0.0-rc"
short_description: "Read a string without echo, in password-like style"
dependencies: []
configuration_variables: []
configuration_values: []

---
This is a small Ada library that provides a procedure Get_Password that reads a string from the terminal replacing each character with a *. The input can be terminated both by the user pressing end-of-line or when the buffer is filled.  Currently it works only on POSIX-based system.  This version was checked with Spark

