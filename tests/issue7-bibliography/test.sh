#/bin/sh
  
if [ "$1" = "" ]; then
   LATEX=pdflatex
else
   LATEX="$1"
fi

$LATEX main
bibtex main
$LATEX main
$LATEX main

$LATEX chapter1
bibtex chapter1
$LATEX chapter1
$LATEX chapter1

find . -name '*.pdf' -exec evince '{}' \;
