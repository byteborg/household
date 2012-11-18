These are cookie cutters.

My wife drew them on a napkin.

We share them under Creative Commons 3.0 Attribution Sharealike (CC-BY-SA).
This means that you are free to do almost anything to and with the data
except going commercial with it or reissue them under a different license.

The OpenSCAD files are based on mrbenbrittons excellent cookie cutter script[1]
for OpenSCAD which can be found on Thingiverse.

Way of production:

1. photograph drawing on paper

2. Gimp

 - cut down image to work area

 - fix "holes" in the outline with paint brush tool

 - reduce to 1bit depth with appropriate threshold

3. Inkscape

 - import into new Inkscape drawing

 - convert bitmap to outlines

 - switch view mode to outlines

 - use path select tool to cut away outer or inner part of silhouette

 - export as OpenSCAD polygons with Inkscape OpenSCAD extension[2]

4. OpenSCAD

 - create new file from mrbenbrittons cookie cutter[1]

 - include polygon OpenSCAD file and scale to appropriate dimensions

 - render STL from OpenSCAD when satisfied


mrbenbritton's cookie cutter script:
    http://www.thingiverse.com/thing:28882

Inkscape OpenSCAD extension:
    https://github.com/martymcguire/inkscape-openscad-poly
