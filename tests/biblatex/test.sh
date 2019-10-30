#!/bin/bash

pdflatex main
biber main
pdflatex main
pdflatex main

cd chapter1
pdflatex chapter1
biber chapter1
pdflatex chapter1
pdflatex chapter1
cd ..

cd chapter2
pdflatex chapter2
biber chapter2
pdflatex chapter2
pdflatex chapter2
cd ..

find . -name '*.pdf' -exec evince '{}' \;
