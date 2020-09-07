#/bin/sh
  
if [ "$1" = "" ]; then
   LATEX=pdflatex
else
   LATEX="$1"
fi

$LATEX main
cd src/subfiles
$LATEX subfile1
$LATEX subfile2
cd ../..
find . -name '*.pdf' -exec evince '{}' \;
