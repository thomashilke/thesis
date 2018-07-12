all: anode-deactivation.pdf anode-deactivation.pdf_tex

anode-deactivation.pdf anode-deactivation.pdf_tex: anode-deactivation.svg
	@echo [INKSCAPE] $<
	@inkscape -f $(shell pwd)/anode-deactivation.svg --export-pdf=$(shell pwd)/anode-deactivation.pdf --export-latex

clean:
	@rm -rf anode-deactivation.pdf anode-deactivation.pdf_tex
