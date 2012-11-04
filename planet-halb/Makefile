# slice options for slic3r 0.8.4
SLICEOPTS = --temperature 195 \
    --filament-diameter 2.9 \
	--extrusion-multiplier 1.00 \
	--perimeters 2 \
	--extra-perimeters \
	--randomize-start \
	--solid-layers 2 \
	--layer-height 0.2 \
	--fill-density 0.3 \
	--fill-pattern rectilinear \
	--start-gcode ../../Slic3r/start.gcode \
	--end-gcode ../../Slic3r/end.gcode \
	--retract-length 2.9 \
	--retract-speed 20 \
	--retract-lift 0.22 \
	--bed-size 180,170 \
	--print-center 75,85 \
	--perimeter-speed 30 \
	--infill-speed 60 \
	--duplicate 4 \
    # --gcode-flavor no-extrusion

all:	Planet-halb.gcode Planet-halb.stl

%.stl: %.scad
	/usr/local/bin/openscad -o $@ $<

%.gcode: %.stl Makefile
	../../Slic3r/slic3r.pl $(SLICEOPTS) $(MULTI) $<

#.
