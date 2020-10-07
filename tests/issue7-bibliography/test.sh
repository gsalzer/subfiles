#/bin/sh
  
source ../functions.sh

run_lbll main main
run_lbll chapter1 chapter1

find . -name '*.pdf' -exec evince '{}' \;
