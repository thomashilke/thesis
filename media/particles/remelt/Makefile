GNUPLOT = gnuplot

all: frozen-layer-sur5.tex neumann-exact.tex neumann-convergence-h.tex

frozen-layer-sur5.tex: frozen-layer.plot 
	@echo "[GNUPLOT] " frozen-layer.plot
	@$(GNUPLOT) frozen-layer.plot

frozen-layer-conv.tex: frozen-layer-conv.plot
	@echo "[GNUPLOT] " frozen-layer-conv.plot
	@$(GNUPLOT) frozen-layer-conv.plot

neumann-exact.tex: neumann-exact.plot
	@echo "[GNUPLOT] " neumann-exact.plot
	@$(GNUPLOT) neumann-exact.plot

neumann-convergence-h.tex: neumann-convergence.plot
	@echo "[GNUPLOT] " neumann-convergence.plot
	@$(GNUPLOT) neumann-convergence.plot


clean:
	@rm -rf frozen-layer-sur10.eps frozen-layer-sur10-eps-converted-to.pdf frozen-layer-sur10.tex frozen-layer-sur2-5.eps frozen-layer-sur2-5-eps-converted-to.pdf frozen-layer-sur2-5.tex frozen-layer-sur5.eps frozen-layer-sur5-eps-converted-to.pdf frozen-layer-sur5.tex neumann-convergence-h.eps neumann-convergence-h-eps-converted-to.pdf neumann-convergence-h.tex neumann-exact.eps neumann-exact-eps-converted-to.pdf neumann-exact.tex
