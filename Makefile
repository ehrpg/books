CHAPTERS = $(wildcard chapters/*.tex)
MAIN = endlesshorizons_phb.tex
DOCUMENT = $(subst .tex,.pdf,${MAIN})

${DOCUMENT}: ${MAIN} ${CHAPTERS}
	pdflatex $<

all: ${DOCUMENT}

.PHONY: all
