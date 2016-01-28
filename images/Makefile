# Makefile to generate pdfs from tikz pictures

TEX := xelatex
RM := rm -f
TARGETS := $(patsubst %.tex,%.pdf,$(wildcard *.tex))

.PHONY: clean

all: $(TARGETS)

%.pdf: %.tex
	$(TEX) $(basename $<)

clean:
	$(RM) *.pdf
	$(RM) *.aux
	$(RM) *.log

