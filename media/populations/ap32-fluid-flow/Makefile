all: print/acd-all-anodes-velocity-0.00-0.05.png \
     print/chanel-velocity-streamlines.png


print/acd-all-anodes-velocity-0.00-0.05.png: acd-all-anodes-velocity-0.00-0.05.png
print/chanel-velocity-streamlines.png: chanel-velocity-streamlines.png

print/%.png:
	@echo [CONVERT] $<
	@mkdir -p $(dir $@)
	@convert $< -trim $@

clean:
	@rm -rf print print/acd-all-anodes-velocity-0.00-0.05.png print/chanel-velocity-streamlines.png
