Towel Dispenser Key

Creation process:
1) Put physical key on Scanner, fine-tune rotation => tdk.png
2) load tdk.png in Inkscape and trace => tdk.svg
3) scale according to size-translation.ods
4) convert curves to edges, export to DXF w/ LWPOLY lines => tdk.dxf
5) extrude in OpenSCAD (tdk.scad) => tdk.stl
6) slice with Slic3r => tdk.gcode

1..4 are operated manually
5..6 run via Makefile

Have a nice one!
--byteborg