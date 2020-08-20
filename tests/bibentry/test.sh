#!/bin/bash

if [ "$1" = "" ]; then
   LATEX=pdflatex
else
   LATEX="$1"
fi

$LATEX main
bibtex main
$LATEX main
$LATEX main

cd sub
$LATEX sub
bibtex sub
$LATEX sub
$LATEX sub

cd ..
find . -name '*.pdf' -exec evince '{}' \;
