# Makefile
#

TEX = xelatex
MKIDX = makeindex
RM = rm -rf

.PHONY: all ebook

all: ebook

ebook: nndl-ebook.tex
	$(MKIDX) $(basename $<)
	$(TEX) $<
	$(TEX) $<

clean:
	$(RM) *.pdf
	$(RM) *.aux
	$(RM) *.log
	$(RM) *.out
	$(RM) *.toc
