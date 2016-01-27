CHAPTERS = $(wildcard chapters/*.tex)
DOCUMENT = $(subst .tex,.pdf,${MAIN})

${DOCUMENT}: ${MAIN} ${CHAPTERS}
	pdflatex $<

all: $(DOCUMENT)
