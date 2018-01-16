
TEX = beta.tex
EPS = $(foreach tex,$(TEX),$(basename $(tex)).eps)
OBJECT = $(foreach tex,$(TEX),$(basename $(tex)))

all: $(TEX)

beta.dat: data.m beta.m
	@echo "[OCTAVE]" $<
	@octave-cli --silent data.m

beta.tex beta.eps: graph.plot beta.dat
	@echo [GNUPLOT] $<
	@gnuplot $<
	@rm -rf $(basename $<)-eps-converted-to.pdf


clean:
	@rm -rf $(TEX) beta.dat *~ \
	  $(foreach object,$(OBJECT),$(object).eps) \
	  $(foreach object,$(OBJECT),$(object)-eps-converted-to.pdf)

print-%:
	@echo $* = $($*)
