#!/bin/bash
  
if [ "$1" = "" ]; then
   LATEX=pdflatex
else
   LATEX="$1"
fi

$LATEX main

cd include
$LATEX chapter1

cd figure
$LATEX fig
cd ../..

find . -name '*.pdf' -exec evince '{}' \;
