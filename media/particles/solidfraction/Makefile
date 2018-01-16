
TEX = solidfraction.tex
EPS = $(foreach tex,$(TEX),$(basename $(tex)).eps)
OBJECT = $(foreach tex,$(TEX),$(basename $(tex)))

solidfraction.tex solidfraction.eps: graph.plot solid-fraction.dat
	@echo [GNUPLOT] $<
	@gnuplot $<
	@rm -rf $(basename $<)-eps-converted-to.pdf

all: $(TEX)

solid-fraction.dat: data.m fs.m
	@echo [OCTAVE] $<
	@octave-cli --silent data.m

clean:
	@rm -rf $(TEX) solid-fraction.dat *~ \
	  $(foreach object,$(OBJECT),$(object).eps) \
	  $(foreach object,$(OBJECT),$(object)-eps-converted-to.pdf)

print-%:
	@echo $* = $($*)
