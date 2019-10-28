#!/bin/sh

pdflatex main
bibtex main
pdflatex main
pdflatex main

pdflatex sub
bibtex sub
pdflatex sub
pdflatex sub
