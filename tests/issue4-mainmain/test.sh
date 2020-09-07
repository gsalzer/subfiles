#/bin/sh
  
if [ "$1" = "" ]; then
   LATEX=pdflatex
else
   LATEX="$1"
fi

$LATEX main
cd dir1
$LATEX main
cd dir2
$LATEX main
cd ../..
find . -name '*.pdf' -exec evince '{}' \;
