#/bin/sh

pdflatex main
cd dir1
pdflatex subfile1
cd dir2
pdflatex subfile2
cd ../..
find . -name '*.pdf' -exec evince '{}' \;
