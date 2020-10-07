#/bin/sh

source ../functions.sh

run_latex main
cd dir1
run_latex subfile1
cd dir2
run_latex subfile2
cd ../..

find . -name '*.pdf' -exec evince '{}' \;
