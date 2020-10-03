#/bin/sh
  
if [ "$1" = "" ]; then
   LATEX=pdflatex
else
   LATEX="$1"
fi

$LATEX main
$LATEX main

cd sub1
$LATEX sub
$LATEX sub
cd ..

cd sub2
$LATEX sub
$LATEX sub
cd ..

find . -name '*.pdf' -exec evince '{}' \;
