#!/bin/bash
set -e

JAMR="$HOME/jamr/"
TOKENIZER="cdec-master/corpus/tokenize-anything.sh"
CORENLP="stanford-corenlp-full-2015-12-09/"

workdir=$(dirname $1)

cp -v $1 $1.sentences

echo "Running CoreNLP.."
java -mx6g -cp "$CORENLP/*" edu.stanford.nlp.pipeline.StanfordCoreNLP -props "corenlp.properties" -file "$1.sentences" --outputFormat text -replaceExtension --outputDirectory "$workdir"

echo "DONE!"
