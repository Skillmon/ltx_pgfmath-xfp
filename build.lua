-- Build script for pgfmath-xfp
module     = "pgfmath-xfp"
pkgversion = "1.0"
pkgdate    = "2021-05-19"

-- update package date and version
tagfiles = {"pgfmath-xfp.dtx", "README.md", "CTAN.md"}
function update_tag(file, content, tagname, tagdate)
  if tagname == nil then
    tagname = pkgversion
    tagdate = pkgdate
  end
  if string.match(file, "%.md") then
    return string.gsub(content,
      "%d%d%d%d%-%d%d%-%d%d v%d%.%d%w?",
      tagdate .. " v" .. tagname)
  elseif file == "pgfmath-xfp.dtx" then
    content = string.gsub(content,
      "\\newcommand%*\\pgfmxfpDate{%d%d%d%d%-%d%d%-%d%d}",
      "\\newcommand*\\pgfmxfpDate{" .. tagdate .. "}")
    content = string.gsub(content,
      "\\DeclareCurrentRelease{}{%d%d%d%d%-%d%d%-%d%d}",
      "\\DeclareCurrentRelease{}{" .. tagdate .. "}")
    return string.gsub(content,
      "\\newcommand%*\\pgfmxfpVersion{%d%.%d%w?}",
      "\\newcommand*\\pgfmxfpVersion{" .. tagname .. "}")
  end
  return content
end

-- test with pdfTeX and the LaTeX format
checkengines = {"pdftex"}
checkformat  = "latex-dev"

-- from which files to build
sourcefiles = {"pgfmath-xfp.dtx"}
unpackfiles = sourcefiles

-- which files to put in the tds
installfiles = {"pgfmath-xfp.sty"}
textfiles    = {"README.md", "CTAN.md"}
docfiles     = {"pgfmath-xfp.pdf"}

-- how the documentation is build
typesetexe   = "pdflatex"
typesetfiles = {"pgfmath-xfp.dtx"}
typesetruns  = 4

-- CTAN upload
ctanreadme    = "CTAN.md"
uploadconfig  = {
  pkg         = module,
  author      = "Jonathan P. Spratte",
  version     = pkgversion .. " " .. pkgdate,
  license     = "lppl1.3c",
  summary     = "Define pgfmath functions using xfp",
  topic       = "keyval",
  ctanPath    = "/macros/latex/pgfmath-xfp",
  repository  = "https://github.com/Skillmon/ltx_pgfmath-xfp",
  bugtracker  = "https://github.com/Skillmon/ltx_pgfmath-xfp/issues",
  update      = true,
  description = [[
`pgfmath-xfp` provides a small wrapper to define pgfmath functions that'll
evaluate the expression using the fpu of xfp.
  ]]
}
