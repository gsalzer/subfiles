#!/bin/bash
  
if [ "$1" = "" ]; then
   LATEX=pdflatex
else
   LATEX="$1"
fi

$LATEX -shell-escape main.tex

cd sub
$LATEX -shell-escape sub.tex
cd ..

find . -name '*.pdf' -exec evince '{}' \;
