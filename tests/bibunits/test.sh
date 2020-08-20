#!/bin/bash

if [ "$1" = "" ]; then
   LATEX=pdflatex
else
   LATEX="$1"
fi

$LATEX main
bibtex bu1
bibtex bu2
$LATEX main
$LATEX main

cd chapter1
$LATEX chapter1
bibtex bu1
$LATEX chapter1
$LATEX chapter1
cd ..

cd chapter2
$LATEX chapter2
bibtex bu1
$LATEX chapter2
$LATEX chapter2
cd ..

find . -name '*.pdf' -exec evince '{}' \;
