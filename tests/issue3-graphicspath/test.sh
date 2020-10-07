#/bin/sh
  
source ../functions.sh

run_latex main
cd src/subfiles
run_latex subfile1
run_latex subfile2
cd ../..

find . -name '*.pdf' -exec evince '{}' \;
