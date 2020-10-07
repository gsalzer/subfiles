#!/bin/bash

source ../functions.sh

run_lbll main bu1 bu2

cd chapter1
run_lbll chapter1 bu1
cd ..

cd chapter2
run_lbll chapter2 bu1
cd ..

find . -name '*.pdf' -exec evince '{}' \;
