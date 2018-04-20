
TEX = sf-convergence.tex
EPS = $(foreach tex,$(TEX),$(basename $(tex)).eps)
OBJECT = $(foreach tex,$(TEX),$(basename $(tex)))

sf-convergence.tex sf-convergence.eps: sf-convergence.dat sf-convergence.plot

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
