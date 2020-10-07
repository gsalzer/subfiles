#!/bin/bash

source ../functions.sh

LATEX="$LATEX -shell-escape"

run_latex main
cd sub
run_latex sub
cd ..

find . -name '*.pdf' -exec evince '{}' \;
