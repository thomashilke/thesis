all: anode-configuration.pdf anode-configuration.pdf_tex

anode-configuration.pdf anode-configuration.pdf_tex: anode-configuration.svg
	@echo [INKSCAPE] $<
	@inkscape -f $(shell pwd)/anode-configuration.svg --export-pdf=$(shell pwd)/anode-configuration.pdf --export-latex

clean:
	@rm -rf anode-configuration.pdf anode-configuration.pdf_tex
