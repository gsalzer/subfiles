#/bin/sh
  
if [ "$1" = "" ]; then
   LATEX=pdflatex
else
   LATEX="$1"
fi

$LATEX main
cd dir1
$LATEX subfile1
cd dir2
$LATEX subfile2
cd ../..
find . -name '*.pdf' -exec evince '{}' \;
