#!/bin/bash

if [ "$1" = "" ]; then
   LATEX=pdflatex
else
   LATEX="$1"
fi

$LATEX main
biber main
$LATEX main
$LATEX main

cd chapter1
$LATEX chapter1
biber chapter1
$LATEX chapter1
$LATEX chapter1
cd ..

cd chapter2
$LATEX chapter2
biber chapter2
$LATEX chapter2
$LATEX chapter2
cd ..

find . -name '*.pdf' -exec evince '{}' \;
