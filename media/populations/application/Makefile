
IMG = alumin-dissolution-control.png alumina-control-2.38-4.21.png alumina-influance-exp-2.55-3.08.png alumina-influance-heaviside-2.55-3.08.png alumina-influance-sur1-2.43-3.05.png alumina-influance-sur10-2.51-3.13.png alumina-influance-sur2-2.51-3.02.png alumina-influance-sur5-2.51-3.13.png alumina-influance-th1-2.54-3.08.png alumina-influance-th2-2.54-3.09.png alumina-influance-th5-2.54-3.09.png alumina-influance-th510-2.54-3.09.png alumina-solvedpct-2.25-3.51.png alumina-stat-solvedpct-1.30-5.25.png alumina-stat-solvedpct-2.25-3.51.png alumina-stat-solvedpct-2.25-5.25.png alumina-totalpct-2.25-11.16.png alumina-totalpct-2.25-5.25.png alumina-unsolvedpct-0-7.60.png alumina-wo-t-dep-diss-solvedpct-2.25-5.25.png alumina-wo-t-dep-diss-totalpct-2.25-5.25.png alumina-wo-t-dep-diss-unsolvedpct-0-0.41.png dummy-tmp-result-c-2.27-3.77.png dummy-tmp-result-c-2.38-4.21.png

TARGETS = $(foreach img,$(IMG),$(addprefix print/,$(img)))

all: print $(TARGETS)

print:
	@mkdir print

print/%.png: %.png
	@echo "[CONVERT]" $<
	@convert $< -trim -resize 1421x579 -background white -gravity center -extent 1421x579 $@


clean:
	@rm -rf $(TARGETS) print
