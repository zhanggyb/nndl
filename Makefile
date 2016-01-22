# Makefile
#

TEX = xelatex
MKIDX = makeindex
RM = rm -rf

.PHONY: all ebook

all: ebook

ebook: nndl-ebook.tex
	$(TEX) $(basename $<)
	$(MKIDX) $(basename $<)
	$(TEX) $(basename $<)

clean:
	$(RM) *.pdf
	$(RM) *.aux
	$(RM) *.log
	$(RM) *.out
	$(RM) *.toc
	$(RM) *.idx
	$(RM) *.ilg
	$(RM) *.ind
