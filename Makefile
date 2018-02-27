SHELL = /bin/sh
PDFLATEX = pdflatex
PDFLATEXFLAGS = -halt-on-error -interaction nonstopmode -shell-escape -synctex=1

STDOUT_REDIRECT = /dev/null
ifdef DBG
  STDOUT_REDIRECT = &1
endif

RUN ?= 1 # The number of times the pdflatex command is run to compile the document

.DEFAULT_GOAL = all
.PHONY = all target clean pre-build main-build post-build biblatex

TEX_SOURCES = src/thesis.tex \
  src/config-biber.tex \
  src/config-pgfplots.tex \
  src/config-media.tex \
  src/config-typography.tex \
  src/notations.tex \
  src/introduction-chapter.tex \
  src/introduction-hall-heroult.tex \
  src/introduction-aims.tex \
  src/introduction-organisation.tex \
  src/particles-chapter.tex \
  src/particles-dissolution.tex \
  src/particles-fall.tex \
  src/particles-freeze.tex \
  src/particles-introduction.tex \
  src/particles-population-dissolution.tex \
  src/populations-chapter.tex \
  src/populations-introduction.tex \
  src/populations-discretisation.tex \
  src/populations-model.tex \
  src/populations-industriel.tex \
  src/populations-figures-tcrit.tex \
  src/populations-figures-tinit.tex \
  src/populations-figures-tlat.tex \
  src/populations-figures-w.tex \
  src/populations-conclusion.tex

BIB_SOURCES = $(wildcard refs/*.bib)

all: post-build

pre-build:
	@$(MAKE) -C media/ all

main-build: pre-build
	@$(MAKE) target

post-build: main-build


target: pdf/document.pdf

pdf/document.pdf:  build/document.pdf
	@echo "[CP]" $@
	@cp $< $@

build/document.pdf: $(TEX_SOURCES) src/references.bib
	@echo "[PDFLATEX]" $@
	@cd $(dir $<) && for number in `seq 1 $(RUN)`; do $(PDFLATEX) -output-directory=../$(dir $@) $(PDFLATEXFLAGS) -jobname=document $(patsubst src/%.tex,%.tex,$<) >$(STDOUT_REDIRECT); done;

src/references.bib: $(BIB_SOURCES)
	@echo "[CAT] "
	@cat $(BIB_SOURCES) > $@

biblatex:
	@echo "[BIBLATEX] document.bcf"
	cd build; biber document > biblatex-target.log

clean:
	@rm -rf build/*
	@find . -name "*~" -delete

