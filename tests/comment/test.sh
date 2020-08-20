#!/bin/sh

if [ "$1" = "" ]; then
   LATEX=pdflatex
else
   LATEX="$1"
fi

$LATEX main
$LATEX sub
find . -name '*.pdf' -exec evince '{}' \;
