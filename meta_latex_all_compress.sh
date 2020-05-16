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
 
# Run latex  and biber with metafiles as in-/output directories
lualatex -interaction=nonstopmode -shell-escape -output-directory=metafiles "\let\mydraft=Y\input{main}"
lualatex -interaction=nonstopmode -shell-escape -output-directory=metafiles "\let\mydraft=Y\input{main}"

# Move the resulting pdf
mv metafiles/main.pdf [PhD_Thesis]JohnDoe_compressed.pdf

cd metafiles
biber main
# biber --validate_datamodel main
cd ..

# Make glossaries
makeglossaries -d metafiles main

# Run latex  and biber with metafiles as in-/output directories
lualatex -interaction=nonstopmode -shell-escape -output-directory=metafiles "\let\mydraft=Y\input{main}"

# Move the resulting pdf
mv metafiles/main.pdf [PhD_Thesis]JohnDoe_compressed.pdf

# Make glossaries
makeglossaries -d metafiles main

# Run latex  and biber with metafiles as in-/output directories
lualatex -interaction=nonstopmode -shell-escape -output-directory=metafiles "\let\mydraft=Y\input{main}"

# Move the resulting pdf
mv metafiles/main.pdf [PhD_Thesis]JohnDoe_compressed.pdf

# okular [PhD_Thesis]JohnDoe.pdf
