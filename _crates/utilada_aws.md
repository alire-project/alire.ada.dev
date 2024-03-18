---
layout: crate
crate: "utilada_aws"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://gitlab.com/stcarrez/ada-util"]
tags: ["web",
"http"]
version: "2.5.0"
short_description: "Utility Library REST support on top of AWS"
dependencies: [{crate: "aws", version: "~21.0"},
{crate: "utilada", version: "^2.5.0"}]
configuration_variables: []
configuration_values: []

---

[![Build Status](https://img.shields.io/jenkins/s/https/jenkins.vacs.fr/Ada-Util.svg)](https://jenkins.vacs.fr/job/Ada-Util/)
[![Test Status](https://img.shields.io/jenkins/t/https/jenkins.vacs.fr/Ada-Util.svg)](https://jenkins.vacs.fr/job/Ada-Util/)
[![codecov](https://codecov.io/gh/stcarrez/ada-util/branch/master/graph/badge.svg)](https://codecov.io/gh/stcarrez/ada-util)


This small library provides an HTTP backend on top of AWS.
It is can be used by the `Util.Http` package.

An alternate HTTP backend is provided by CURL with utilada_curl.



