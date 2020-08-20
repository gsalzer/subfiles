#!/bin/bash
  
if [ "$1" = "" ]; then
   LATEX=pdflatex
else
   LATEX="$1"
fi

PYTHONTEX=/usr/local/texlive/2020/texmf-dist/scripts/pythontex/pythontex.py

if [ ! -d venv ]; then
   python3 -m venv venv
   source venv/bin/activate
   pip install pygments
fi

$LATEX main
$PYTHONTEX main
$LATEX main

$LATEX sub
$PYTHONTEX sub
$LATEX sub

for i in *.pdf; do evince $i; done
