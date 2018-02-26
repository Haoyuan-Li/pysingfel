#!/bin/bash

## Save the original index file for safety consideration
mv ./index.rst ./index.rst-backup
mv ./theory.rst ./theory.rst-backup
mv ./modules.rst ./modules.rst-backup
mv ./example.rst ./example.rst-backup
mv ./start.rst ./start.rst-backup


## replace the original index file with the newer one
cp ./index.txt ./index.rst
cp ./theory.txt ./theory.rst
cp ./modules.txt ./modules.rst
cp ./example.txt ./example.rst
cp ./start.txt ./start.rst

## compile
sphinx-build -b html -D imgmath_latex="/usr/bin/latex" . _build/html