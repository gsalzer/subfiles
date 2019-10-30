#!/bin/bash
find . -name '*.aux' -exec rm -f '{}' \;
find . -name '*.log' -exec rm -f '{}' \;
find . -name '*.pdf' -exec rm -f '{}' \;
rm -rf _minted-main sub/_minted-sub

