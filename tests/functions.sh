LATEX="$1"
OPTIONS="$2"
BIB="bibtex"

run_latex () {
   $LATEX "\\def\\OPTIONS{$OPTIONS}\\input{$1}"
}

run_lbll () {
   tex="$1"
   run_latex "$tex"
   if [ -n "$2" ]; then
      shift
      for b in $*; do
         "$BIB" "$b"
      done
      run_latex "$tex"
   fi
   run_latex "$tex"
}
