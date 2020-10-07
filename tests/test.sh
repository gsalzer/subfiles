#!/bin/bash

if [ -z "$1" -o ! -d "$1" ]; then
    echo "'$1' is not a test directory."
	exit 1
fi

rm -f test.log

cd "$1"
for LATEX in pdflatex pdflatex-dev lualatex lualatex-dev; do
    for OPTIONS in "" "v1"; do
		echo "$1/test.bash $LATEX $OPTIONS"
		bash test.sh "$LATEX" "$OPTIONS" >> ../test.log
		bash clean.sh
	done
done
cd ..
