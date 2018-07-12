all: solution-periodique.pdf solution-periodique.pdf_tex

solution-periodique.pdf solution-periodique.pdf_tex: solution-periodique.svg
	@echo [INKSCAPE] $<
	@inkscape -f $(shell pwd)/solution-periodique.svg --export-pdf=$(shell pwd)/solution-periodique.pdf --export-latex

clean:
	@rm -rf solution-periodique.pdf solution-periodique.pdf_tex
