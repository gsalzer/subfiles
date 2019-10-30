#!/bin/bash

pdflatex main
bibtex bu1
bibtex bu2
pdflatex main
pdflatex main

cd chapter1
pdflatex chapter1
bibtex bu1
pdflatex chapter1
pdflatex chapter1
cd ..

cd chapter2
pdflatex chapter2
bibtex bu1
pdflatex chapter2
pdflatex chapter2
cd ..

find . -name '*.pdf' -exec evince '{}' \;
