all: characteristics.pdf characteristics.pdf_tex

characteristics.pdf characteristics.pdf_tex: characteristics.svg
	@echo [INKSCAPE] $<
	@inkscape -f $(shell pwd)/characteristics.svg --export-pdf=$(shell pwd)/characteristics.pdf --export-latex

clean:
	@rm -rf characteristics.pdf characteristics.pdf_tex
