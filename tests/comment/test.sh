#!/bin/sh

# pdflatex main
pdflatex sub
find . -name '*.pdf' -exec evince '{}' \;
