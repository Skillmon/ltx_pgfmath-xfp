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

# Building pgfmath-xfp

The only place where version numbers and dates are guaranteed to be correct in
the repository is in the `l3build` configuration file `build.lua`. If it is
important to you that the files created have the correct version and date, you
should run `l3build tag` before any other build-related task.

`pgfmath-xfp` utilizes the `l3build` system. You can run `l3build unpack` to
extract the package `pgfmath-xfp.sty` into the directory `build/unpacked/`.
If you want to build the documentation run `l3build doc`, the resulting PDF will
be in the main directory. Running `l3build install` will put `pgfmath-xfp.sty`
in your `TEXMFHOME`, `l3build uninstall` will remove it. `l3build` should be
contained in any recent LaTeX installation.

You can run the checks from the folder `testfiles/` by running `l3build check`
to test whether the version you got has any regressions.

Of course you can also build everything manually. `pdftex pgfmath-xfp.dtx` will
generate the code files, `pdflatex pgfmath-xfp.dtx` will create the
documentation, but you'll have to run that at least twice, and if you want an
index you'll also have to run `makeindex -s gind.ist -o pgfmath-xfp.ind
pgfmath-xfp.idx` and then rerun `pdflatex`. Building the files manually will
create quite a few auxiliary files in the main directory.
