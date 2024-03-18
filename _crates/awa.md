---
layout: crate
crate: "awa"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://gitlab.com/stcarrez/ada-awa"]
tags: ["web",
"users",
"jobs",
"wiki",
"framework",
"storage",
"blog"]
version: "2.4.0"
short_description: "Ada Web Application"
dependencies: [{crate: "ado", version: "^2.3.0"},
{crate: "elada", version: "^1.8.5"},
{crate: "keystoreada", version: "^1.3.3"},
{crate: "security", version: "^1.4.1"},
{crate: "serverfaces", version: "^1.5.0"},
{crate: "servletada", version: "^1.6.0"},
{crate: "servletada_aws", version: "^1.6.0"},
{crate: "utilada", version: "^2.5.0"},
{crate: "utilada_aws", version: "^2.5.0"},
{crate: "utilada_xml", version: "^2.5.0"},
{crate: "wikiada", version: "^1.4.0"}]
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

AWA simplifies the Web Application development by taking care of user management with
Google+, Facebook authentication and by providing the foundations on top of which you
can construct your own application.  AWA provides a powerful permission management
that gives flexibility to applications to grant access and protect your user's resources.

![AWA Features](https://github.com/stcarrez/ada-awa/wiki/images/awa-features.png)

# Documentation

The Ada Web Application programmer's guide describes how to setup the framework,
how you can setup and design your first web application with it,
and it provides detailed description of AWA components:

  * [Ada Web Application programmer's guide](https://ada-awa.readthedocs.io/en/latest/) [PDF](https://github.com/stcarrez/ada-awa/blob/master/awa/docs/awa-book.pdf)
  * [Ada Database Objects Programmer's Guide](https://ada-ado.readthedocs.io/en/latest/)
  * [Ada Security Programmer's Guide](https://ada-security.readthedocs.io/en/latest/)
  * [Ada Utility Library Programmer's Guide](https://ada-util.readthedocs.io/en/latest/)



