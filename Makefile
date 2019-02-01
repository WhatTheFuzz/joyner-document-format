# Author: ccorn, StackOverflow
# Date: 08 July 2016
# Date Pulled: 01 February 2019
# URL: https://tex.stackexchange.com/questions/318569/
# makefile-for-a-latex-report/318595#318595

# Tools
LATEXMK = latexmk
RM = rm -f

# Project-specific settings
DOCNAME = example

# Targets
all: doc
doc: pdf
pdf: $(DOCNAME).pdf

# Rules
%.pdf: %.tex
	$(LATEXMK) -pdf -M -MP -MF $*.d $*

mostlyclean:
	$(LATEXMK) -silent -c
	$(RM) *.bbl

clean: mostlyclean
	$(LATEXMK) -silent -C
	$(RM) *.run.xml *.synctex.gz
	$(RM) *.d

.PHONY: all clean doc mostlyclean pdf

# Include auto-generated dependencies
-include *.d
