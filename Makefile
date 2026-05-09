MAIN    := main
ENGINE  := xelatex
LATEXMK := latexmk
TEXFMT  := tex-fmt

TEX_FILES := $(wildcard *.tex)

# Exclude config/preamble files that tex-fmt tends to mangle
FMT_FILES := $(filter-out preamble.tex config-%.tex, $(TEX_FILES))

.PHONY: all pdf watch fmt check clean distclean

all: pdf

pdf:
	$(LATEXMK) -$(ENGINE) -interaction=nonstopmode -quiet $(MAIN).tex

watch:
	$(LATEXMK) -$(ENGINE) -interaction=nonstopmode -pvc $(MAIN).tex

fmt:
	$(TEXFMT) $(FMT_FILES)

check:
	$(TEXFMT) --check $(FMT_FILES)

clean:
	$(LATEXMK) -c $(MAIN).tex
	rm -f $(MAIN).xdv $(MAIN).bbl $(MAIN).run.xml *.tmp

distclean:
	$(LATEXMK) -C $(MAIN).tex
	rm -f $(MAIN).xdv $(MAIN).bbl $(MAIN).run.xml *.tmp
