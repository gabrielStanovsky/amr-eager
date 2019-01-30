#!/bin/bash
#    Usage: run_parser.sh <sentences-file>
# Output should be in $1.parsed (fingers crossed)
set -e

./my-preproc.sh $1
python preprocessing.py -f $1
python parser.py -f $1

echo "DONE"
