#!/bin/bash

source env/bin/activate

xelatex MWE-1
pythontex MWE-1
xelatex MWE-1

xelatex MWE-2
pythontex MWE-2
xelatex MWE-2

for i in *.pdf; do evince $i; done
