
IMG = bath.png full.png metal-bath-anodes-cathode-bus-bars.png metal-bath-anodes-cathode.png metal-bath-anodes.png metal-bath-cathode.png metal-bath.png metal.png

TARGETS = $(foreach img,$(IMG),$(addprefix print/,$(img)))

all: print $(TARGETS)

print:
	@mkdir print

print/%.png: %.png
	@echo "[CONVERT]" $<
	@convert $< -trim -resize 1421x579 -background white -gravity center -extent 1421x579 $@


clean:
	@rm -rf $(TARGETS) print
