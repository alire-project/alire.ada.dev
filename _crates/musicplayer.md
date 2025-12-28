---
layout: crate
crate: "musicplayer"
authors: ["Jeff Carter"]
maintainers: ["Bent Bracke <bent@bracke.dk>"]
licenses: ["BSD-3-Clause"]
websites: ["https://github.com/bracke/MP"]
tags: ["music",
"audio",
"player"]
version: "20210719.0.0"
short_description: "A Music Player"
dependencies: [{crate: "gnat", version: "<13.0 | >=13.3"},
{crate: "ada_gui", version: "^20240224.0.0"},
{crate: "pragmarc", version: "^20240323.0.0"},
{crate: "ssl", version: "^3.0.2"}]
configuration_variables: []
configuration_values: []

---
# MP
A Music Player

Uses the Gnoga audio widget to create a music player.

This does what I want from a music player. Considering all the features that most music players have that this doesn't, I presume that most people will find MP lacking. However, it may serve someone as the basis for a more complex player.

The audio widget seems to require relative paths to the audio files. The file browser in this program will only choose audio files that are in the program's working directory, or in a directory under that.

MP uses [the Gnoga File Selection widget](https://github.com/jrcarter/Gnoga_File_Selection), which has only been tested on Linux.

MP uses [the PragmAda Reusable Components](https://github.com/jrcarter/PragmARC).


