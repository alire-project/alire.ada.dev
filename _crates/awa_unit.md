---
layout: crate
crate: "awa_unit"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://gitlab.com/stcarrez/ada-awa"]
tags: ["web",
"users",
"jobs",
"framework",
"testing"]
version: "2.4.0"
short_description: "Ada Web Application (Testing framework)"
dependencies: [{crate: "awa", version: "^2.4.0"},
{crate: "serverfaces_unit", version: "^1.5.0"},
{crate: "servletada_unit", version: "^1.6.0"}]
configuration_variables: []
configuration_values: []

---
[![Build Status](https://img.shields.io/jenkins/s/https/jenkins.vacs.fr/Bionic-AWA.svg)](https://jenkins.vacs.fr/job/Bionic-AWA/)
[![Test Status](https://img.shields.io/jenkins/t/https/jenkins.vacs.fr/Bionic-AWA.svg)](https://jenkins.vacs.fr/job/Bionic-AWA/)
[![codecov](https://codecov.io/gh/stcarrez/ada-awa/branch/master/graph/badge.svg)](https://codecov.io/gh/stcarrez/ada-awa)
[![Documentation Status](https://readthedocs.org/projects/ada-awa/badge/?version=latest)](https://ada-awa.readthedocs.io/en/latest/?badge=latest)

Ada Web Application is a framework to build a Web Application in Ada 2012.
The framework provides several ready to use and extendable modules that are common
to many web application.  This includes the login, authentication, users, permissions,
managing comments, tags, votes, documents, images.  It provides a complete blog,
question and answers and a wiki module.

This library provides a testing framework on top of AWA top help implementing
unit tests for AWA applications.



