ifeq ($(MAIN),"")
	$(error "No main file specified.")
endif

CHAPTERS = $(wildcard chapters/*.tex)
DOCUMENT = $(subst .tex,.pdf,${MAIN})

${DOCUMENT}: ${MAIN} ${CHAPTERS}
	pdflatex $<

all: $(DOCUMENT)
