all: electrolysis-pot.pdf electrolysis-pot.pdf_tex

electrolysis-pot.pdf electrolysis-pot.pdf_tex: electrolysis-pot.svg
	@echo [INKSCAPE] $<
	@inkscape -f $(shell pwd)/electrolysis-pot.svg --export-pdf=$(shell pwd)/electrolysis-pot.pdf --export-latex

clean:
	@rm -rf electrolysis-pot.pdf electrolysis-pot.pdf_tex
