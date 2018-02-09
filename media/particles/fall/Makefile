all: results.tex

results.tex: app.m depth.m parameters.m
	@echo "[OCTAVE]"
	@octave-cli --silent $<

clean:
	@rm -rf results.tex
