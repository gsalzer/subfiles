#!/bin/bash

for t in *; do
   if [ -d "$t" ]; then
      bash test.sh "$t"
   fi
done
