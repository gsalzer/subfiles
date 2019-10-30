#!/bin/bash

pdflatex main
bibtex main
pdflatex main
pdflatex main

cd sub
pdflatex sub
bibtex sub
pdflatex sub
pdflatex sub

cd ..
find . -name '*.pdf' -exec evince '{}' \;
