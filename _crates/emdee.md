---
layout: crate
crate: "emdee"
authors: ["Stephen Merrony"]
maintainers: ["Stephen Merrony <merrony@gmail.com>"]
licenses: ["GPL-3.0-or-later"]
websites: ["https://github.com/SMerrony/emdee"]
tags: ["performance",
"theatre",
"midi",
"mp3",
"soundtrack",
"player",
"wav",
"flac",
"ogg",
"music",
"ffplay",
"aplaymidi",
"playsmf"]
version: "0.2.2"
short_description: "Performance assistant for Musical Directors"
dependencies: [{crate: "gnat", version: "^13.0"},
{crate: "gtkada", version: "^24.0.0"},
{crate: "ada_toml", version: "~0.4.0"}]
configuration_variables: []
configuration_values: []

---
# Overview 

`eMDee` is a live performance and rehearsal assistant for musical directors which removes the need to have folders of tracks and command-line windows open in order to play backing tracks for performance groups such as singers, choirs, and theatre-groups.

The MD can plan in advance the order of performance; later, `eMDee` will facilitate the playing of each track in the specfied order during the performance.

Additional controls may be added to specific tracks such as changing the volume level.


