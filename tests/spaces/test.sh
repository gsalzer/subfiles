#/bin/sh
  
source ../functions.sh

run_latex main

find . -name '*.pdf' -exec evince '{}' \;
