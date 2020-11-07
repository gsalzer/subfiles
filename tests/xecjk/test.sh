#/bin/sh
  
source ../functions.sh

LATEX="xe${LATEX#pdf}"

run_latex main
run_latex sub

find . -name '*.pdf' -exec evince '{}' \;
