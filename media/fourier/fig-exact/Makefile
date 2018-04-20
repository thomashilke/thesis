all: print/full-stack-1.png print/full-stack-2.png print/full-stack-3.png print/full-stack-4.png print/full-stack-5.png print/full-stack-6.png print/slice-1.png print/slice-2.png print/slice-3.png print/slice-4.png print/slice-5.png print/slice-6.png print/streamlines.png 

print/full-stack-1.png: full-stack-1.png
print/full-stack-2.png: full-stack-2.png
print/full-stack-3.png: full-stack-3.png
print/full-stack-4.png: full-stack-4.png
print/full-stack-5.png: full-stack-5.png
print/full-stack-6.png: full-stack-6.png
print/slice-1.png: slice-1.png
print/slice-2.png: slice-2.png
print/slice-3.png: slice-3.png
print/slice-4.png: slice-4.png
print/slice-5.png: slice-5.png
print/slice-6.png: slice-6.png
print/streamlines.png: streamlines.png

print/%.png:
	@echo [CONVERT] $<
	@mkdir -p $(dir $@)
	@convert $< -trim $@


