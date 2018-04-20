all: anode-numerotation.pdf anode-numerotation.pdf_tex

anode-numerotation.pdf anode-numerotation.pdf_tex: anode-numerotation.svg
	@echo [INKSCAPE] $<
	@inkscape -f $(shell pwd)/anode-numerotation.svg --export-pdf=$(shell pwd)/anode-numerotation.pdf --export-latex

clean:
	@rm -rf anode-numerotation.pdf anode-numerotation.pdf_tex
