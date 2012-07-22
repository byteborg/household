# Makefile for mat-holder

SLICEOPTS = --temperature 190 \
	--extrusion-multiplier 1.05 \
	--perimeters 1 \
	--no-extra-perimeters \
	--no-randomize-start \
	--solid-layers 1 \
	--layer-height 0.42 \
	--fill-density 0.4 \
	--start-gcode ../../Slic3r/start.gcode \
	--end-gcode ../../Slic3r/end.gcode \
	--retract-length 2.3 \
	--retract-speed 20 \
	--retract-lift 0.15 \
	--bed-size 180,170 \
	--print-center 75,85 \
	--perimeter-speed 40 \
	--infill-speed 60 \
    --duplicate-grid 5,2 \
    # --gcode-flavor no-extrusion

all:	mat-holder.gcode bed.stl

%.stl: %.scad
	/usr/local/bin/openscad -o $@ $<

%.gcode: %.stl Makefile
	../../Slic3r/slic3r.pl $(SLICEOPTS) $(MULTI) $<

#.
