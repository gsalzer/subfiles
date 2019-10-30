#!/bin/bash

pdflatex -shell-escape main.tex

cd sub
pdflatex -shell-escape sub.tex
cd ..

find . -name '*.pdf' -exec evince '{}' \;
