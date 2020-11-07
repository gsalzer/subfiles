#/bin/sh
  
source ../functions.sh

LATEX="lua${LATEX#pdf}"

run_latex main
run_latex sub

find . -name '*.pdf' -exec evince '{}' \;
