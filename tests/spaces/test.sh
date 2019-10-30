#/bin/sh

pdflatex main

for i in *.pdf; do evince $i; done
