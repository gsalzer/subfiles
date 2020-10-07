#!/bin/bash

source ../functions.sh
BIB=biber

run_lbll main main

cd chapter1
run_lbll chapter1 chapter1
cd ..

cd chapter2
run_lbll chapter2 chapter2
cd ..

find . -name '*.pdf' -exec evince '{}' \;
