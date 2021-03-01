---
layout: crate
crate: "utilada_curl"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: []
tags: ["web", "http"]
version: "2.1.0"
short_description: "Utility Library REST support on top of CURL"
dependencies: [{crate: "utilada", version: "^2.1.0"}]
---

[![Build Status](https://img.shields.io/jenkins/s/https/jenkins.vacs.fr/Ada-Util.svg)](https://jenkins.vacs.fr/job/Ada-Util/)
[![Test Status](https://img.shields.io/jenkins/t/https/jenkins.vacs.fr/Ada-Util.svg)](https://jenkins.vacs.fr/job/Ada-Util/)
[![codecov](https://codecov.io/gh/stcarrez/ada-util/branch/master/graph/badge.svg)](https://codecov.io/gh/stcarrez/ada-util)


This small library provides an HTTP backend on top of CURL.
It is can be used by the `Util.Http` package.

An alternate HTTP backend is provided by AWS with utilada_aws.



