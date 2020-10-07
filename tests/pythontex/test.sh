#!/bin/bash

source ../functions.sh

PYTHONTEX=/usr/local/texlive/2020/texmf-dist/scripts/pythontex/pythontex.py

if [ ! -d venv ]; then
   python3 -m venv venv
   source venv/bin/activate
   pip install pygments
fi

run_latex main
$PYTHONTEX main
run_latex main

run_latex sub
$PYTHONTEX sub
run_latex sub

for i in *.pdf; do evince $i; done
