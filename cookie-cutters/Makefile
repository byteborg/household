# slice options for slic3r 0.8.4
SLICEOPTS = --temperature 195 \
    --filament-diameter 2.9 \
	--extrusion-multiplier 1.00 \
	--extra-perimeters \
	--no-randomize-start \
	--perimeters 2 \
	--solid-layers 2 \
	--layer-height 0.3 \
	--fill-density 0.7 \
	--fill-angle 45 \
	--fill-pattern rectilinear \
	--start-gcode ../../Slic3r/start.gcode \
	--end-gcode ../../Slic3r/end.gcode \
	--retract-length 2.9 \
	--retract-speed 20 \
	--retract-lift 0.22 \
	--bed-size 180,170 \
	--print-center 85,85 \
	--perimeter-speed 30 \
	--infill-speed 60 \
	# --duplicate 4 \
    # --gcode-flavor no-extrusion

all:	caterpillar.stl bat.stl unicorn.stl

bat.stl: bat.scad bat-contour.scad
	openscad -o $@ $<

%.stl: %.scad
	openscad -o $@ $<

%.gcode: %.stl Makefile
	../../Slic3r/slic3r.pl $(SLICEOPTS) $(MULTI) $<

#.
