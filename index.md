---
layout: page
---

<style>
.button {
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin: 4px 2px;
  transition-duration: 0.2s;
  background-color: black;
  text-color: white;
  border-radius: 20px;
}
.button:hover {
  background-color: #EE8E4A;
  color: white;
}
.button > h3, h5 {
    padding: 0em;
    margin: 0px;
    font-weight: bold;
}
</style>

<table style="width:100%; text-align: center">
 <tr>
  <td>
   <a class="button" id="alr_download_button">
   <h3>Download Alire</h3>
   <h5 id="alr_dl_subtitle"></h5></a>
  </td>
  <td>
   <a href="docs/#first-steps" class="button"><h3>Getting Started</h3>
   <h5>Tutorial</h5>
   </a>
  </td>
 </tr>
</table>
<br>

<script>
// Set download link depending on the platform.
// Based on https://github.com/ada-lang-io/ada-lang-io

const platform = navigator?.userAgent?.platform || navigator?.platform || 'unknown';

const currentAlireVersion = '{{site.data.update.alr_version}}'
const alireReleaseDir = 'https://github.com/alire-project/alire/releases/download/v' + currentAlireVersion + '/';
const installTargets = new Map([
  ['Windows', alireReleaseDir + 'alr-' + currentAlireVersion + '-installer-x86_64-windows.exe'],
  ['Mac', alireReleaseDir + 'alr-' + currentAlireVersion + '-bin-x86_64-macos.zip'],
  ['Linux', alireReleaseDir + 'alr-' + currentAlireVersion + '-bin-x86_64-linux.zip'],
  ['Unknown', 'https://github.com/alire-project/alire/releases'],
]);

const dlSubTitle= new Map([
  ['Windows', 'for Windows'],
  ['Mac', 'for macOS'],
  ['Linux', 'for Linux'],
  ['Unknown', ''],
]);

function platformTarget() {
  if (platform.indexOf('Win') === 0) { return 'Windows'; }
  if (platform.indexOf('Linux') === 0) { return 'Linux'; }
  if (platform.indexOf('Mac') === 0) { return 'Mac'; }
  return 'Unknown';
}

document.getElementById("alr_download_button").href = installTargets.get(platformTarget());
document.getElementById("alr_dl_subtitle").innerHTML = dlSubTitle.get(platformTarget());
</script>

## ALIRE: Ada LIbrary REpository

A catalog of ready-to-use
[Ada](https://en.wikipedia.org/wiki/Ada_(programming_language))/[SPARK](https://en.wikipedia.org/wiki/SPARK_(programming_language))
libraries plus a command-line tool (`alr`) to obtain, build, and incorporate
them into your own projects. It aims to fulfill a similar role to Rust's
`cargo` or OCaml's `opam`.

### Design principles

`alr` is tailored to userspace, in a similar way to Python's virtualenv. A
project or workspace will contain all its dependencies.

Some projects require binary packages from the distribution (Debian/Ubuntu's
apt, msys2's pacman on Windows). In this case the user will be asked to
authorize an installation through the distribution package manager.

Properties and dependencies of projects are managed through a TOML file. This
file exists locally for working copies of projects, and the [Alire community
index](https://github.com/alire-project/alire-index) stores the files
corresponding to its projects.

The complete build environment is automatically set up by Alire, thus freeing
the user from concerns about installation paths. The user simply adds
dependencies to the `alire.toml` manifest, either from the command-line
(`alr with`) or a text editor, Alire handles the rest.

### Supported platforms

`Alire` builds are available for Linux x86-64, Windows x86-64 and macOS x86-64.
For all those platforms, recent Ada compiler (GNAT FSF) are provided including
cross compilers for ARM, RISC-V and AVR.

For other platforms, Alire can be built from sources using a GNAT FSF compiler
version 9.2 onward.

<a href="https://github.com/AdaCore/Ada-SPARK-Crate-Of-The-Year">
  <img src="coty_banner.jpg" width="100%"/>
</a>

{% assign badge_url = "https://img.shields.io/endpoint?url=https://alire.ada.dev/badges/alire-badge.json" %}
<img src="{{badge_url}}" title="Copy image location: {{badge_url}}">

{{ site.data.update.date }}
