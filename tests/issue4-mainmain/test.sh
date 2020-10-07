#/bin/sh

source ../functions.sh

run_latex main
cd dir1
run_latex main
cd dir2
run_latex main
cd ../..

find . -name '*.pdf' -exec evince '{}' \;
