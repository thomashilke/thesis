
.PHONY: clean
all: dissolution-convergence.tex dissolution-convergence.eps \
	timelapse-1.tex

error.dat slope.dat: app.m bell_function.m dissolution.m exact_dissolution.m
	@echo "[OCTAVE]" $<
	@octave-cli --silent app.m > /dev/null

dissolution-convergence.tex dissolution-convergence.eps: graph.plot error.dat slope.dat
	@echo "[GNUPLOT]" $<
	@gnuplot $<

timelapse-1.tex: timelapse.plot timelapse.dat
	@echo "[GNUPLOT]" $<
	@gnuplot $<

clean:
	rm -rf *~ \
	dissolution-convergence.eps \
	dissolution-convergence-eps-converted-to.pdf \
	dissolution-convergence.tex \
	error.dat \
	slope.dat \
	timelapse-10.eps \
	timelapse-10-eps-converted-to.pdf \
	timelapse-10.tex \
	timelapse-11.eps \
	timelapse-11-eps-converted-to.pdf \
	timelapse-11.tex \
	timelapse-1.eps \
	timelapse-1-eps-converted-to.pdf \
	timelapse-1.tex \
	timelapse-2.eps \
	timelapse-2-eps-converted-to.pdf \
	timelapse-2.tex \
	timelapse-3.eps \
	timelapse-3-eps-converted-to.pdf \
	timelapse-3.tex \
	timelapse-4.eps \
	timelapse-4-eps-converted-to.pdf \
	timelapse-4.tex \
	timelapse-5.eps \
	timelapse-5-eps-converted-to.pdf \
	timelapse-5.tex \
	timelapse-6.eps \
	timelapse-6-eps-converted-to.pdf \
	timelapse-6.tex \
	timelapse-7.eps \
	timelapse-7-eps-converted-to.pdf \
	timelapse-7.tex \
	timelapse-8.eps \
	timelapse-8-eps-converted-to.pdf \
	timelapse-8.tex \
	timelapse-9.eps \
	timelapse-9-eps-converted-to.pdf \
	timelapse-9.tex \
	timelapse.dat
