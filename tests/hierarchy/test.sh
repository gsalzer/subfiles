#!/bin/bash

if [ "$1" = "" ]; then
   LATEX=pdflatex
else
   LATEX="$1"
fi

$LATEX main
$LATEX main

cd A
$LATEX sub
$LATEX sub

cd a
$LATEX ssub
$LATEX ssub

cd 0
$LATEX sssub
$LATEX sssub

cd ../1
$LATEX sssub
$LATEX sssub

cd ../../b
$LATEX ssub
$LATEX ssub

cd ../../B
$LATEX sub
$LATEX sub

cd ..
find . -name '*.pdf' -exec evince '{}' \;

