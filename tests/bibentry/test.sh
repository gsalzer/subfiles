#!/bin/bash

source ../functions.sh

run_lbll main main

cd sub
run_lbll sub sub
cd ..

find . -name '*.pdf' -exec evince '{}' \;
