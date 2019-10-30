#!/bin/bash
find . -name '*.aux' -exec rm -f '{}' \;
find . -name '*.bbl' -exec rm -f '{}' \;
find . -name '*.blg' -exec rm -f '{}' \;
find . -name '*.bcf' -exec rm -f '{}' \;
find . -name '*.run.xml' -exec rm -f '{}' \;
find . -name '*.pdf' -exec rm -f '{}' \;
find . -name '*.log' -exec rm -f '{}' \;
