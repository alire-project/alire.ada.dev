---
layout: crate
crate: "geste"
authors: ["Fabien Chouteau <fabien.chouteau@gmail.com>"]
maintainers: ["fabien.chouteau@gmail.com"]
licenses: ["BSD-3-Clause"]
websites: ["https://github.com/Fabien-Chouteau/GESTE"]
tags: ["game",
"nostd",
"rendering",
"sprite"]
version: "1.1.0"
short_description: "GEneric Sprite and Tile Engine"
dependencies: []
configuration_variables: []
configuration_values: []

---

[![Build Status](https://travis-ci.org/Fabien-Chouteau/GESTE.svg?branch=master)](https://travis-ci.org/Fabien-Chouteau/GESTE)
[![codecov](https://codecov.io/gh/Fabien-Chouteau/GESTE/branch/master/graph/badge.svg)](https://codecov.io/gh/Fabien-Chouteau/GESTE)

GESTE is a sprite and tile 2D render engine designed to run on
micro-controllers low performance systems. GESTE also provides a basic math and
physic engine using fixed point arithmetic.

## Creating maps

GESTE is developed in parallel with
[tiled-code-gen](https://github.com/Fabien-Chouteau/tiled-code-gen), a tool
that generates code from the [Tiled Map Editor](https://www.mapeditor.org/).

## Examples

The crate `geste_examples` contains 3 examples of different game genre:
 - platformer
 - RPG
 - racing

## Design

### Layers

In GESTE, a scene is made of layers. Native layers can be `Sprite`, `Grid` or
`Text`. You can implement you own type of layers if you want to.

 - `Sprite` layers display a single tile at a given position
 - `Grid` layers display a grid of tiles at a given position
 - `Text` layers display a text at a given position

Layers have a priority which tells in which order they will be drawn on the
screen.

### Rendering

The rendering algorithm is somewhat similar to ray casting. Instead of taking
each objects of the scene and drawing it on the screen, the engine takes each
pixel and tries to find its color from the different objects of the scene.

For each pixel of the area that is being drawn, GESTE will go through the list
of layers and see if the corresponding pixel inside the layer is transparent or
not. When a non transparent pixel is found, the pixel is pushed to the screen
and the procedure starts again for the next pixel. If all the layers have a
transparent pixel, the background color is used.

The more layers to go through, the more time time it will take to render a
pixel.



