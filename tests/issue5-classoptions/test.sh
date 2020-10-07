#!/bin/sh
  
source ../functions.sh

run_latex main
run_latex sub

find . -name '*.pdf' -exec evince '{}' \;
