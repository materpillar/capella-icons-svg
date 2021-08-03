# Capella SVG Icons

With issue [#2247](https://github.com/eclipse/capella/issues/2247), the Capella
developers have started to convert the icons of model elements from `png` format
to `svg`.

This repository proposes additional updates to the `svg` icons for enhanced
functionality and portability. For the use of the icons in other applications
outside of Capella, such as in prototyping or whiteboarding in Visio or
Powerpoint, it is useful to have the icons in a vector format with decent
quality.

The original Capella `svg` icons use the `MyriadPro Bold` font which
is a proprietary font and which is not installed by default on most Computers.

Additionally, the fonts should be outlined. Otherwise, if the `MyriadPro Bold`
font is not installed on the system, many programs displaying `svg` files, will
replace the `MyriadPro Bold` font with another font that is installed on the
system. This effect for instance MS Word, MS Visio but also web browsers.

Capella is an open source project. Therefore, it should avoid using prorietary
fonts. Replacing `MyriadPro` with `DejaVu Sans` and performing a height
transformation leads to comparable results of the font face.

The current version of `svg` files in the Capella repository have unnecessary
big margins, that are imported as well into Visio or other programs. When
connecting elements with arrows or line, these margins have a negativ effect on
the visual quality.

## Proposed icons in this repository

This repository contains a set of raw `svg` icons, that are based on the
original `svg` and `png` Capella icons from the Capella repository. The proposed
raw icons are stored in `svg/opensource-font`. The original Capella repository
icons are stored for reference in `svg/capella-github` and `png/capella-github`.

The proposed icons have been created using Inkscape v1.1 on Ubuntu. They use the
`DejaVu Sans` font, and have no margins. These icons are not outlined, so the
text can still be edited.

### Automated SVG outlining and PNG conversion

The integrated Github Workflow automatically outlines the fonts of the open
source font `svg` files. Additionally, it demonstrates how `svg` icons can
automatically be converted to `png` files with different sizes. The `png` files
can be downloaded in the job artifacts.

## Integrated Icons

The github worklfow publishes a web page that can be used to compare original
and proposed icons. To access the webpage see the [github-pages environment of
this repository](https://materpillar.github.io/capella-icons-svg/). Try opening
this page on different devices to see the effect of texts that are not outlined.

## Icons Documentation

This repository serves also as a documentation on icon shapes, colors and other
properties for icons that I have reworked myself and that I propose to be
integrated into Capella.

Font: DejaVu Sans, Bold, 35pt then transform height to 70%, RGB: 000000ff

|                   | OC              | SM              | SC              | CR              |
| ----------------- | --------------- | --------------- | --------------- | --------------- |
| Width             | 100px           | 100px           | 100px           | 100px           |
| Height            | 64px            | 64px            | 64px            | 64px            |
| Stroke Style      | solid           | solid           | solid           | dashed          |
| Stroke Weight     | 1.5px           | 1.5px           | 1.5px           | 1.5px           |
| Stroke color      | 563b18ff        | 563b18ff        | 563b18ff        | 563b18ff        |
| Fill              | radial gradient | radial gradient | radial gradient | radial gradient |
| Grad color center | fdfcfaff        | fdfcfaff        | fdfcfaff        | fdfcfaff        |
| Grad color edge   | d0ab84ff        | d0ab84ff        | d0ab84ff        | d0ab84ff        |

Font not transformed for:

|                      | OA                   | SF, LF, PF           |
| -------------------- | -------------------- | -------------------- |
| Width                | 100px                | 100px                |
| Height               | 64px                 | 64px                 |
| Stroke Style         | solid                | solid                |
| Stroke Weight        | 1.5px                | 1.5px                |
| Stroke color         | 563b18ff             | 000000ff             |
| Fill                 | gradient left->right | gradient left->right |
| Grad color left      | ff8c07ff             | 67bc53ff             |
| Grad color at ca 90% | ffecd6ff             | e3f2e0ff             |
| Grad color right     | fffdfbff             | fffdfbff             |

|                          | OE       | SA, LA, PA | CSCI     | LC, PC   | PC Behaviour | PC Node  |
| ------------------------ | -------- | ---------- | -------- | -------- | ------------ | -------- |
| Width                    | 100px    | 100px      | 100px    | 100px    | 100px        | 100px    |
| Height                   | 65px     | 65px       | 65px     | 65px     | 65px         | 65px     |
| Stroke Style             | solid    | solid      | solid    | solid    | solid        | solid    |
| Stroke Weight            | 1.5px    | 1.5px      | 1.5px    | 1.5px    | 1.5px        | 1.5px    |
| Stroke color             | 563b18ff | 000000ff   | 000000ff | 000000ff | 000000ff     | 000000ff |
| Fill                     | a2b5c3ff | bdf7ffff   | a2b5c3ff | e3ebf8ff | a2b5c3ff     | fff426   |
| Fill color small squares | e3ebf8ff | e3ebf8ff   | a2b5c3ff | e3ebf8ff | a2b5c3ff     | fff426   |

|                          | ...Pkg       |
| ------------------------ | -------- |
| Width                    | 75px    |
| Height                   | 50px     |

**Size** The size of reworked icons has been adjusted to result in round values,
and preferably exponents of 2.
