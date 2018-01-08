MAKEFLAGS += --no-print-directory

SHELL = /bin/sh
PDFLATEX = pdflatex

STDOUT_REDIRECT = /dev/null
ifdef DBG
  STDOUT_REDIRECT = &1
endif

.DEFAULT_GOAL = all
.PHONY = all target clean pre-build main-build post-build biblatex

TEX_SOURCES = src/thesis.tex \
  src/config-biber.tex \
  src/config-pgfplots.tex \
  src/config-media.tex \
  src/config-typography.tex \
  src/graphicspath.tex \
  src/notations.tex \
  src/introduction-chapter.tex \
  src/particles-chapter.tex


all: post-build

force: TEX_SOURCES=
force: all

pre-build:
	@$(MAKE) $(MAKEFLAGS) -C media/ all

main-build: pre-build
	@$(MAKE) $(MAKEFLAGS) target

post-build: main-build

target: pdf/document.pdf

pdf/document.pdf:  build/document.pdf
	@echo "[CP]" $@
	@cp $< $@

build/document.pdf: $(TEX_SOURCES)
	@echo "[PDFLATEX]" $@
	@cd $(dir $<) && $(PDFLATEX) -output-directory=../$(dir $@) -halt-on-error -jobname=document $(patsubst src/%.tex,%.tex,$<) >$(STDOUT_REDIRECT)
#	@cd $(dir $<) && $(PDFLATEX) -output-directory=../$(dir $@) -halt-on-error -jobname=document $(patsubst src/%.tex,%.tex,$<) >$(STDOUT_REDIRECT)
#	@cd $(dir $<) && $(PDFLATEX) -output-directory=../$(dir $@) -halt-on-error -jobname=document $(patsubst src/%.tex,%.tex,$<) >$(STDOUT_REDIRECT)

biblatex:
	@echo "[BIBLATEX] thesis.bcf"
	cd build; biber thesis > biblatex-target.log

clean:
	@rm -rf build/*
	@find . -name "*~" -delete


