---
layout: crate
crate: "lsystem_editor"
authors: ["Heziode"]
maintainers: ["Heziode <heziode@protonmail.com>"]
licenses: ["MIT"]
websites: ["https://github.com/Heziode/lsystem-editor"]
tags: ["gtk",
"gtk3",
"ada",
"l-systems",
"gtkada",
"l-system",
"editor",
"gui"]
version: "1.0.0"
short_description: "L-Systems editor in Ada"
dependencies: [{crate: "gtkada", version: "^25.0.1"},
{crate: "resources", version: "~0.1.0"}]
configuration_variables: []
configuration_values: []

---
<img src="https://github.com/Heziode/lsystem-editor/blob/master/share/lsystem_editor/ressources/icon.png?raw=true" alt="App Icon">

# L-System Editor

<img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">

A comprehensive graphical and command-line editor for creating, manipulating, and visualizing Lindenmayer systems (L-systems).

This project was initially developed as part of a university project.

## What are L-Systems?

L-systems (Lindenmayer systems) are a type of formal grammar introduced by biologist Aristid Lindenmayer in 1968. They are particularly useful for modeling plant growth and generating fractals. An L-system consists of:

- An **alphabet** of symbols that can be used to make strings
- An **axiom** (initial string) to start with
- A set of **production rules** that expand each symbol into a larger string of symbols

Through recursive application of these rules, complex structures can be generated from simple initial conditions.

## Features

- **Interactive GUI** for creating and editing L-systems
- **Command-line interface** for batch processing and automated workflows
- **Real-time visualization** of the L-system at different development levels
- **Export capabilities** to PS (PostScript) format for now
- **Customizable rendering** with adjustable parameters (colors, margins, dimensions)
- **Save and load** L-system definitions using `.ls` files

## Installation

### Using Alire (recommended)

```
alr install lsystem_editor
```

### From Source

1. Ensure you have Ada and GtkAda installed. This project depends on GNAT Lib.
2. Clone the repository: `git clone https://github.com/Heziode/lsystem-editor.git`
3. Build with Alire: `alr build` or manually with `make`

## Usage

### GUI Mode

Launch the graphical interface:

```
./bin/lsystem_editor
# Or
alr run
```

The GUI offers:
- A text editor area for defining L-system rules
- Controls to adjust the development level
- Real-time visualization of the L-system
- Export options
- Customization of colors and rendering parameters

### Command-Line Mode

For automated processing or batch operations:

```
lsystem_editor --no-gui [OPTIONS]
```

#### Command-Line Options

| Option | Long Form | Description |
|--------|-----------|-------------|
| `-i` | `--input=FILE` | Input file containing an L-system definition |
| `-o` | `--output=FILE` | Output file to store an L-system definition |
| `-e` | `--export=FORMAT` | Export format for the L-system representation |
| `-p` | `--export-file=FILE` | Output file for the exported representation |
| `-d` | `--develop=N` | Number of development steps to apply |
| `-w` | `--width=N` | Width of the output representation |
| `-h` | `--height=N` | Height of the output representation |
| `-b` | `--background-color=COLOR` | Background color in hex format (e.g., #AABBCC) |
| `-f` | `--foreground-color=COLOR` | Foreground color in hex format (e.g., #AABBCC) |
| `-mt` | `--margin-top=N` | Top margin for rendering |
| `-mr` | `--margin-right=N` | Right margin for rendering |
| `-mb` | `--margin-bottom=N` | Bottom margin for rendering |
| `-ml` | `--margin-left=N` | Left margin for rendering |

## L-System File Format

L-system definitions are stored in `.ls` files with the following syntax:

```
<angle> [angle in degrees]
<axiom> [initial string]
<rules>
[symbol] [replacement string]
[symbol] [replacement string]
...
</rules>
```

### Example L-System: Koch Curve

```
60.0
-F++F++F
F F-F++F-F
```

Where:
- `F` means "draw forward"
- `+` means "turn left by angle"
- `-` means "turn right by angle"

## Controls in GUI Mode

- **Text Editor**: Define and edit your L-system
- **Validate Button**: Check if your L-system definition is valid
- **Level Spinner**: Adjust the development level
- **Color Controls**: Change foreground and background colors
- **Export Options**: Save visualizations

## License

L-System Editor is distributed under the MIT License.

Copyright (c) 2018 Quentin Dauprat (Heziode)

See the [LICENSE](https://github.com/Heziode/lsystem-editor/blob/master/LICENSE) file for full details.


