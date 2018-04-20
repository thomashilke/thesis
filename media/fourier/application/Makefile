

all: print/force-h.png print/ab-0-1-concentration-acd.png print/ab-0-1-concentration-harm.png print/ab-0-1-velocity-acd.png print/ab-0-1-velocity-harm.png print/ab-0-2-concentration-acd.png print/ab-0-2-concentration-harm.png print/ab-0-2-velocity-acd.png print/ab-0-2-velocity-harm.png print/ab-1-1-concentration-acd.png print/ab-1-1-concentration-harm.png print/ab-1-1-velocity-acd.png print/ab-1-1-velocity-harm.png print/ab-1-2-concentration-acd.png print/ab-1-2-concentration-harm.png print/ab-1-2-velocity-acd.png print/ab-1-2-velocity-harm.png print/ab-0-1-concentration-harm-fc.png print/ab-0-1-velocity-harm-fc.png print/ab-0-2-concentration-harm-fc.png print/ab-0-2-velocity-harm-fc.png print/ab-1-1-concentration-harm-fc.png print/ab-1-1-velocity-harm-fc.png print/ab-1-2-concentration-harm-fc.png print/ab-1-2-velocity-harm-fc.png print/all-concentration-acd.png print/all-concentration-harm.png print/all-velocity-harm.png 


print/force-h.png: force-h.png
print/ab-0-1-concentration-acd.png: ab-0-1-concentration-acd.png
print/ab-0-1-concentration-harm.png: ab-0-1-concentration-harm.png
print/ab-0-1-velocity-acd.png: ab-0-1-velocity-acd.png
print/ab-0-1-velocity-harm.png: ab-0-1-velocity-harm.png
print/ab-0-2-concentration-acd.png: ab-0-2-concentration-acd.png
print/ab-0-2-concentration-harm.png: ab-0-2-concentration-harm.png
print/ab-0-2-velocity-acd.png: ab-0-2-velocity-acd.png
print/ab-0-2-velocity-harm.png: ab-0-2-velocity-harm.png
print/ab-1-1-concentration-acd.png: ab-1-1-concentration-acd.png
print/ab-1-1-concentration-harm.png: ab-1-1-concentration-harm.png
print/ab-1-1-velocity-acd.png: ab-1-1-velocity-acd.png
print/ab-1-1-velocity-harm.png: ab-1-1-velocity-harm.png
print/ab-1-2-concentration-acd.png: ab-1-2-concentration-acd.png
print/ab-1-2-concentration-harm.png: ab-1-2-concentration-harm.png
print/ab-1-2-velocity-acd.png: ab-1-2-velocity-acd.png
print/ab-1-2-velocity-harm.png: ab-1-2-velocity-harm.png
print/ab-0-1-concentration-harm-fc.png: ab-0-1-concentration-harm-fc.png
print/ab-0-1-velocity-harm-fc.png: ab-0-1-velocity-harm-fc.png
print/ab-0-2-concentration-harm-fc.png: ab-0-2-concentration-harm-fc.png
print/ab-0-2-velocity-harm-fc.png: ab-0-2-velocity-harm-fc.png
print/ab-1-1-concentration-harm-fc.png: ab-1-1-concentration-harm-fc.png
print/ab-1-1-velocity-harm-fc.png: ab-1-1-velocity-harm-fc.png
print/ab-1-2-concentration-harm-fc.png: ab-1-2-concentration-harm-fc.png
print/ab-1-2-velocity-harm-fc.png: ab-1-2-velocity-harm-fc.png
print/all-concentration-acd.png: all-concentration-acd.png
print/all-concentration-harm.png: all-concentration-harm.png
print/all-velocity-harm.png: all-velocity-harm.png

print/%.png:
	@echo [CONVERT] $<
	@mkdir -p $(dir $@)
	@convert $< -trim $@


