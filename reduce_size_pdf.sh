#!/bin/bash

# ps2pdf -dPDFSETTINGS=/printer ./[PhD_Thesis]JohnDoe_compressed.pdf [PhD_Thesis]JohnDoe_reduced.pdf
# ps2pdf -dPDFSETTINGS=/ebook ./[PhD_Thesis]JohnDoe_compressed.pdf [PhD_Thesis]JohnDoe_reduced.pdf

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH  -dAutoRotatePages=/None -dPDFSETTINGS=/ebook -dDownsampleColorImages=true -dColorImageResolution=200 -sOutputFile=[PhD_Thesis]JohnDoe_reduced.pdf ./[PhD_Thesis]JohnDoe_compressed.pdf
# gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH  -dAutoRotatePages=/None -dPDFSETTINGS=/ebook -sOutputFile=[PhD_Thesis]JohnDoe_reduced.pdf ./[PhD_Thesis]JohnDoe_compressed.pdf
# gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH  -dAutoRotatePages=/None -dPDFSETTINGS=/printer -sOutputFile=[PhD_Thesis]JohnDoe_reduced.pdf ./[PhD_Thesis]JohnDoe_compressed.pdf
