#!/bin/bash
 
# Create directory if it doesn't exist
if [ ! -d "metafiles" ]; then
  mkdir metafiles
fi
cd metafiles
if [ ! -d "build" ]; then
  mkdir build
fi
cd ..

# Run latex  and bibtex with metafiles as in-/output directories
lualatex -interaction=nonstopmode -shell-escape -output-directory=metafiles main

# Move the resulting pdf
mv metafiles/main.pdf [PhD_Thesis]JohnDoe.pdf
