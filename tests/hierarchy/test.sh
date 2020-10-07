#!/bin/bash

source ../functions.sh

run_lbll main
cd A
run_lbll sub
cd a
run_lbll ssub
cd 0
run_lbll sssub
cd ../1
run_lbll sssub
cd ../../b
run_lbll ssub
cd ../../B
run_lbll sub
cd ..

find . -name '*.pdf' -exec evince '{}' \;

