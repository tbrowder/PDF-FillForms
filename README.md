[![Actions Status](https://github.com/tbrowder/PDF-FillForms/actions/workflows/linux.yml/badge.svg)](https://github.com/tbrowder/PDF-FillForms/actions) [![Actions Status](https://github.com/tbrowder/PDF-FillForms/actions/workflows/macos.yml/badge.svg)](https://github.com/tbrowder/PDF-FillForms/actions) [![Actions Status](https://github.com/tbrowder/PDF-FillForms/actions/workflows/windows.yml/badge.svg)](https://github.com/tbrowder/PDF-FillForms/actions)

NAME
====

**PDF::FillForms** - Provides a process to scan to PDF and overlay it with your own content

Installation
------------

This module requires system program `pdftk` for using an overlay PDF. Install it on Debian with `sudo aptitude install pdftk` and on MacOS with `brew install pdftk-java`.

SYNOPSIS
========

```raku
$ ./fill-forms
# OUTPUT:
Usage: fill-form form=F in=I out=O

With the form PDF file 'F' and input data file 'I', the 
desired overlay text is combined with the form data to 
produce the combination as the output PDF file 'O'.

The 'form' file must be a scanned PDF file, and the 
'input' file contains formatted data for the overlay.

See the README for instructions on creating the 
formatted text data file.
```

DESCRIPTION
===========

**PDF::FillForms** provides a way to use a PDF scan of any document and overlay it with user-defined text. It requires the user to provide specific data for the content and placement. It can use either Letter or A4 media.

Currently, only one-page forms are handled, but file an issue if you need multi-page forms.

First, the user must print the desired form and measure the pertinent X/Y dimensions for starting points of text blocks and desired text content. Use PostScript points (72 points per inch) for all dimensions. The page data description assumes a two-dimensional graph with its X/Y origin at the lower-left corner of the page.

AUTHOR
======

Tom Browder <tbrowder@acm.org>

COPYRIGHT AND LICENSE
=====================

© 2024 Tom Browder

This library is free software; you may redistribute it or modify it under the Artistic License 2.0.

