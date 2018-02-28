OCTAVE = octave-cli
GNUPLOT = gnuplot

all: particle_fall.tex

particle_fall.tex: particle_fall.plot particle_fall_1.dat
	@echo "[GNUPLOT]" $<
	@$(GNUPLOT) $<

particle_fall_1.dat: app.m
	@echo "[OCTAVE]" $<
	@$(OCTAVE) --quiet $<

clean:
	@rm -rf particle_fall_1.dat particle_fall_2.dat particle_fall_3.dat \
	   particle_fall-eps-converted-to.pdf \
	   particle_fall.eps particle_fall.tex \
	   particle_fall_zoom-eps-converted-to.pdf \
	   particle_fall_zoom.eps \
	   particle_fall_zoom.tex \
	   radius_evolution-eps-converted-to.pdf \
	   radius_evolution.eps \
	   radius_evolution.tex \
	   radius_evolution.dat
	@rm -rf *~
