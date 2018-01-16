
TEX = temperature.tex
EPS = $(foreach tex,$(TEX),$(basename $(tex)).eps)
OBJECT = $(foreach tex,$(TEX),$(basename $(tex)))

temperature.tex temperature.eps: graph.plot tinit.dat threshold.dat
	@echo [GNUPLOT] $<
	@gnuplot $<
	@rm -rf $(basename $<)-eps-converted-to.pdf

all: $(TEX)

tinit.dat threshold.dat: data.m tinit.m
	@echo [OCTAVE] $<
	@octave-cli --silent $<


clean:
	@rm -rf $(TEX) *~ tinit.dat theshold.dat\
	  $(foreach object,$(OBJECT),$(object).eps) \
	  $(foreach object,$(OBJECT),$(object)-eps-converted-to.pdf)

print-%:
	@echo $* = $($*)
