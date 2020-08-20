#!/bin/bash

pdflatex main
bibtex chapter1/chapter1
bibtex chapter2/chapter2
pdflatex main
pdflatex main

cd chapter1
pdflatex chapter1
bibtex chapter1
pdflatex chapter1
pdflatex chapter1
cd ..

cd chapter2
pdflatex chapter2
bibtex chapter2
pdflatex chapter2
pdflatex chapter2
cd ..

find . -name '*.pdf' -exec evince '{}' \;
