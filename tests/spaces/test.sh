#/bin/sh
  
if [ "$1" = "" ]; then
   LATEX=pdflatex
else
   LATEX="$1"
fi

$LATEX main

for i in *.pdf; do evince $i; done
