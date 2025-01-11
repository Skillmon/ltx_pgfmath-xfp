-------------------------------------------------------------------------------
# pgfmath-xfp -- define pgfmath functions using xfp

Version 2025-01-11 v1.0a

Released under the LaTeX Project Public License v1.3c or later
See http://www.latex-project.org/lppl.txt

Hosted at https://github.com/Skillmon/ltx_pgfmath-xfp

-------------------------------------------------------------------------------

Copyright (C) 2021 Jonathan P. Spratte

This  work may be  distributed and/or  modified under  the conditions  of the
LaTeX Project Public License (LPPL),  either version 1.3c  of this license or
(at your option) any later version.  The latest version of this license is in
the file:

  http://www.latex-project.org/lppl.txt

This work is "maintained" (as per LPPL maintenance status) by
  Jonathan P. Spratte.

-------------------------------------------------------------------------------

This provides a wrapper that allows to define `pgfmath` functions using the
`expl3` FPU (which's LaTeX2e document-level package is called `xfp`) for the
calculations. Each input argument is parsed by `pgfmath` to normalize it to a
form that `xfp` understands.
