// coin holder for media coins
// Copyright Karsten W. Rohrbach, 2013
// karsten@rohrbach.de -- @byteborg
// CC-BY-NC 3.0 (free for noncommercial use)

use <coin.scad>

// coin parms
DIA = 25+2;  // coin diameter
COIN_Z = 4;  // coin thickness

// body config
SLOTS = 4;  // no. of coin slots
CAPACITY = 10;  // coin capacity
BASE = 3;  // thickness of base (lower portion)
BEEF = 3;  // chunkiness of part between slots
SCREW_DIA = 4.5;  // screw diameter
q=.001;
$fn=192;

// derivatives
DEPTH = DIA * .85; // body depth
HEIGHT = BASE + (CAPACITY * COIN_Z);
WIDTH = DIA + BEEF + q;


echo ("dimensions: ", WIDTH*SLOTS, DEPTH, HEIGHT);

holder();
translate([0, 0, BASE]) %coin();

module holder() {
    for(i=[0:SLOTS-1]) {
        translate([i*WIDTH, 0, HEIGHT/2])
        difference() {
            translate([0, (DIA-DEPTH+BASE)/2, 0]) cube(size=[WIDTH+q, DEPTH, HEIGHT], center=true);
            translate([0, 0, BASE]) cylinder(r=DIA/2, h=HEIGHT, center=true);
            // translate([0, (DEPTH+BASE)/2, 0]) rotate([90, 0, 0]) {
            //     screw();
            // }
        }
    }
}

module screw() {
    cylinder(h=15+DEPTH, r=(SCREW_DIA+.2)/2, center=true, $fn=6);
    cylinder(h=5, r1=1.5, r2=6, center=true, $fn=72);
}

