#!/bin/bash

PYTHONTEX=/usr/local/texlive/2019/texmf-dist/scripts/pythontex/pythontex.py

if [ ! -d venv ]; then
   python3 -m venv venv
   source venv/bin/activate
   pip install pygments
fi

pdflatex main
$PYTHONTEX main
pdflatex main

pdflatex sub
$PYTHONTEX sub
pdflatex sub

for i in *.pdf; do evince $i; done
