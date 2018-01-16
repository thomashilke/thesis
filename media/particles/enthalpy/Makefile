
TEX = enthalpy.tex
EPS = $(foreach tex,$(TEX),$(basename $(tex)).eps)
OBJECT = $(foreach tex,$(TEX),$(basename $(tex)))

all: $(TEX)

enthalpy.tex enthalpy.eps: graph.plot enthalpy.dat
	@echo [GNUPLOT] $<
	@gnuplot $<
	@rm -rf $(basename $<)-eps-converted-to.pdf

enthalpy.dat: data.m enthalpy.m
	@octave-cli --silent data.m

clean:
	@rm -rf $(TEX) enthalpy.dat \
	  $(foreach object,$(OBJECT),$(object).eps) \
	  $(foreach object,$(OBJECT),$(object)-eps-converted-to.pdf)

print-%:
	@echo $* = $($*)
