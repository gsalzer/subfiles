#/bin/sh
  
source ../functions.sh

if [[ "$LATEX" == lualatex* ]]; then
	:
else
	exit 0
fi

run_latex main
run_latex sub

find . -name '*.pdf' -exec evince '{}' \;
