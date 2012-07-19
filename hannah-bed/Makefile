# Makefile for mat-holder

SLICEOPTS = --temperature 190 \
	--extrusion-multiplier 1.1 \
	--perimeters 2 \
	--layer-height 0.42 \
	--fill-density 0.4 \
	--start-gcode ../../Slic3r/start.gcode \
	--end-gcode ../../Slic3r/end.gcode \
	--retract-length 2.7 \
	--retract-speed 17 \
	#--duplicate 10

all:	mat-holder.gcode bed.stl

%.stl: %.scad
	openscad -o $@ $<

%.gcode: %.stl Makefile
	../../Slic3r/slic3r.pl $(SLICEOPTS) $(MULTI) $<

#.
