#/bin/sh
  
source ../functions.sh

run_lbll main
cd sub1
run_lbll sub
cd ../sub2
run_lbll sub
cd ..

find . -name '*.pdf' -exec evince '{}' \;
