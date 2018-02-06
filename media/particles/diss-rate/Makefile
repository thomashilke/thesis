
TEX = diss-rate.tex
EPS = $(foreach tex,$(TEX),$(basename $(tex)).eps)
OBJECT = $(foreach tex,$(TEX),$(basename $(tex)))

diss-rate.tex diss-rate.eps: diss-rate.dat diss-rate.plot

all: $(TEX)

$(TEX): %.tex: %.plot
	@echo [GNUPLOT] $<
	@gnuplot $<
	@rm -rf $(basename $<)-eps-converted-to.pdf

diss-rate.dat: data.m ft.m
	@octave-cli --silent data.m

clean:
	@rm -rf $(TEX) *~ diss-rate.dat \
	  $(foreach object,$(OBJECT),$(object).eps) \
	  $(foreach object,$(OBJECT),$(object)-eps-converted-to.pdf)

print-%:
	@echo $* = $($*)
