[![Actions Status](https://github.com/tbrowder/PDF-FillForms/actions/workflows/linux.yml/badge.svg)](https://github.com/tbrowder/PDF-FillForms/actions) [![Actions Status](https://github.com/tbrowder/PDF-FillForms/actions/workflows/macos.yml/badge.svg)](https://github.com/tbrowder/PDF-FillForms/actions) [![Actions Status](https://github.com/tbrowder/PDF-FillForms/actions/workflows/windows.yml/badge.svg)](https://github.com/tbrowder/PDF-FillForms/actions)

NAME
====

**PDF::FillForms** - Provides a process to scan to PDF and overlay it with your own content

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

**PDF::FillForms** is ...

AUTHOR
======

Tom Browder <tbrowder@acm.org>

COPYRIGHT AND LICENSE
=====================

© 2024 Tom Browder

This library is free software; you may redistribute it or modify it under the Artistic License 2.0.

