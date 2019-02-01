Joyner Document Format LaTeX Template
============

## Purpose
Provides a basic JDF template for the OMSCS program.
## Requirements
- Requires XeLaTeX for font handling.
- latexmk if using the Makefile

### Ubuntu
To install the XeLaTeX, run the following commands:
```
sudo apt-get install texlive-xetex
```

### MacOS
Install XeLaTeX [here](http://www.tug.org/mactex/index.html).

### Windows
I currently don't have a method of testing this on Windows.

## Installation and Usage
Within a terminal:
```
git clone https://github.com/FourMoreCups/joyner-document-format.git
cd joyner-document-format
make
```
Bam! You'll find the file `example.pdf` in the directory.
To change the data, use your favorite text editor to edit `example.tex` and then run `make` again.

The following options are available via the Makefile:
```
clean - remove all intermediate and final builds.
mostlyclean - remove intermediate builds.
```

## Credits
This is a fork from Mr. Harper and his collaborators.

## License
This program is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation; either version 2 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program; if not, write to the Free Software Foundation, Inc., 59 Temple
Place, Suite 330, Boston, MA  02111-1307  USA
