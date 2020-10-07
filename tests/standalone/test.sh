#!/bin/bash
  
source ../functions.sh

run_latex main
cd include
run_latex chapter1
cd figure
run_latex fig
cd ../..

find . -name '*.pdf' -exec evince '{}' \;
