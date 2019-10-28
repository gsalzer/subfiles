#!/bin/sh

pdflatex main
pdflatex main

cd A
pdflatex sub
pdflatex sub

cd a
pdflatex ssub
pdflatex ssub

cd 0
pdflatex sssub
pdflatex sssub

cd ../1
pdflatex sssub
pdflatex sssub

cd ../../b
pdflatex ssub
pdflatex ssub

cd ../../B
pdflatex sub
pdflatex sub

cd ..
find . -name '*.pdf' -exec evince '{}' \;

