// coin for media use
// Copyright 2013, Karsten W. Rohrbach
// karsten@rohrbach.de -- @byteborg
// CC-BY-NC 3.0 (free for noncommercial use)

use <MCAD/bitmap/bitmap.scad>

HEIGHT = 4;  // height
CHAR_Z = 1.5;  // depth of char relief
DIA = 25;  // outer diameter
RIM = 2;  // rim width
q = .001;  // overlap
$fn = 192;  // no of segments in cylinders

hannah_coin();
translate([0, DIA+6, 0]) jonas_coin();

module hannah_coin() {
    coin();
    translate([0, 0, HEIGHT-CHAR_Z-q]) 8bit_char("H", DIA/12, CHAR_Z);
}

module jonas_coin() {
    coin();
    translate([0, 0, HEIGHT-CHAR_Z-q]) 8bit_char("J", DIA/12, CHAR_Z);
}

module coin() {
    difference() {
        translate([0, 0, HEIGHT/2]) cylinder(r=DIA/2, h=HEIGHT, center=true);
        translate([0, 0, HEIGHT-CHAR_Z/2+q]) cylinder(r=(DIA-RIM)/2, h=CHAR_Z, center=true);
    }
}
