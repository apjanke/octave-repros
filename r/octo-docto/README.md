# README - octo-docto-repro

This directory contains reproduction cases for issues that apjanke encountered in using the
GNU Octave [OF doctest package](https://github.com/gnu-octave/octave-doctest/) with
[Tablicious](https://github.com/apjanke/octave-tablicious) in 2024-02 or so.

This is focused on "advanced" functionality, like namespaces and classdef classes and
classdefs with methods with the same name as core Octave functions, and stuff like that.

## Dir structure

* octo-docto
  * `r/` - the repros
    * `<name>` - a particular repro case
  * `README.md` - this file

The repro cases under the `r/` directory are arbitrarily structured, and independent from each other.

## License

The code in this repo is licensed under GNU GPL v3 or later. See the `LICENSE` file for license details.

## Authors and Acknowledgments

[Andrew Janke](https://github.com/apjanke) made this. He apologizes in advance.
