
TEX = cadence.tex
EPS = $(foreach tex,$(TEX),$(basename $(tex)).eps)
OBJECT = $(foreach tex,$(TEX),$(basename $(tex)))

cadence.tex cadence.eps: inj4.dat inj3.dat inj2.dat inj1.dat cadence.plot

all: $(TEX)

$(TEX): %.tex: %.plot
	@echo [GNUPLOT] $<
	@gnuplot $<
	@rm -rf $(basename $<)-eps-converted-to.pdf


clean:
	@rm -rf $(TEX) \
	  $(foreach object,$(OBJECT),$(object).eps) \
	  $(foreach object,$(OBJECT),$(object)-eps-converted-to.pdf)

print-%:
	@echo $* = $($*)
