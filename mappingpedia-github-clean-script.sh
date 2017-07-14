#!/bin/bash
rm -rf temp-mappingpedia-contents 
mkdir temp-mappingpedia-contents
cd temp-mappingpedia-contents
git clone git@github.com:oeg-upm/mappingpedia-contents.git
cd mappingpedia-contents/
rm -rf !\(.git|README.md|mappingpedia-github-clean-script.sh\)
git add -u
git commit -m "repository cleaning"
git push
cd ../..
rm -rf temp-mappingpedia-contents/
