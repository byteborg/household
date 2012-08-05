# slice options for slic3r 0.8.4
SLICEOPTS = --temperature 195 \
    --filament-diameter 3.0 \
	--extrusion-multiplier 1.0 \
	--perimeters 2 \
	--no-extra-perimeters \
	--no-randomize-start \
	--solid-layers 2 \
	--layer-height 0.4 \
	--fill-density 0.4 \
	--start-gcode ../../Slic3r/start.gcode \
	--end-gcode ../../Slic3r/end.gcode \
	--retract-length 2.3 \
	--retract-speed 20 \
	--retract-lift 0 \
	--bed-size 180,170 \
	--print-center 75,85 \
	--perimeter-speed 40 \
	--infill-speed 60 \
	--duplicate 2 \
    # --gcode-flavor no-extrusion

all:	stopper.gcode stopper.stl

%.stl: %.scad
	/usr/local/bin/openscad -o $@ $<

%.gcode: %.stl Makefile
	../../Slic3r/slic3r.pl $(SLICEOPTS) $(MULTI) $<

#.
