#!/bin/bash

pdflatex main
pdflatex main

cd include
pdflatex chapter1
pdflatex chapter1

cd figure
pdflatex fig
cd ../..

find . -name '*.pdf' -exec evince '{}' \;
