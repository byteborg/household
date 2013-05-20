
all:	wheel.stl plate1.stl plate2.stl plate3.stl

wheel.stl: wheel.scad
	openscad -D TRG=0 -o $@ $<

plate1.stl: wheel.scad
	openscad -D TRG=1 -o $@ $<

plate2.stl: wheel.scad
	openscad -D TRG=2 -o $@ $<

plate3.stl: wheel.scad
	openscad -D TRG=3 -o $@ $<

#.
