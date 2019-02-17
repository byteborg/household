// shower box 0.1
// Copyright 2013 Karsten W. Rohrbach
// karsten@rohrbach.de -- @byteborg
// CC BY-NC 3.0 (free for noncommercial use)

include <UbuntuB.scad>;

DRAW_LETTER = false;

LETTER = "K";
LOFS_X = 12;
INNER_X = 135;

//LETTER = "V";
//LOFS_X = 14;
//INNER_X = 165;

//LETTER = "J";
//LOFS_X = 10;
//INNER_X = 135;

//LETTER = "H";
//LOFS_X = 11;
//INNER_X = 135;

LOFS_Z = -4;    // letter inset
// INNER_X = 135;  // inner width
INNER_Y = 75;   // inner depth
INNER_Z = 40;   // inner (sleeve) height;
LOWER_Z = 7;    // lower prism
LOWER_Y = 5;    // slit width
THICKNESS = 3;  // overall part thickness
CTIE_X = 1.8;     // cable tie dimensions
CTIE_Y = 3;     // -"-
CTIE_DIST = 16; // cable tie hole distance
CTIE_OFS = 5;   // cable tie recess
q = .1;         // fudge factor
$fn = 6;        // hexagonal chamfer shape

// split for supportless print
difference() {
    union() {
        translate([0, INNER_Y/2+THICKNESS*2, 0]) rotate([90, 0, 0]) part();
        translate([0, -INNER_Y/2-THICKNESS*2, 0]) rotate([-90, 0, 0]) part();
    }
    translate([0, 0, INNER_Z*2/2]) cube(size=[INNER_X*2, INNER_Y*2, INNER_Z*2], center=true);
    // cable tie holes
    for (d=[-1,1]) for(z=[-1,1])
        translate([0, d*(THICKNESS+INNER_Z/2)+z*CTIE_DIST/2, -CTIE_OFS])
          cube(size=[INNER_X*2, CTIE_Y, CTIE_X], center=true);
}

// main part with lettering
module part() {
    difference() {
        outer();
        inner();
        if (DRAW_LETTER) {
            translate([-INNER_X/2+LOFS_X, -INNER_Y/2-THICKNESS*2-LOFS_Z, 4]) rotate([90, 0, 0]) scale(0.5)
                UbuntuB(LETTER, center=true, steps=5);
        }
        translate([0, 0, INNER_Z+100/2+THICKNESS/2])
            cube(size=[INNER_X*2, INNER_Y*2, 100], center=true);
    }
}

// inner space, will be negated
// options for padding, r=corner radius, bottom hole and addl. top height
module inner(pad=0, r=THICKNESS, bothole=1, top=10) {
    minkowski() {
        union() {
            hull() {
                translate([0, 0, INNER_Z/2+THICKNESS*top])
                    cube(size=[INNER_X-THICKNESS+pad, INNER_Y-THICKNESS+pad, INNER_Z-THICKNESS+pad+THICKNESS*top*2], center=true);
                translate([0, 0, -LOWER_Z/2])
                    cube(size=[INNER_X-THICKNESS+pad, LOWER_Y-THICKNESS+pad, LOWER_Z-THICKNESS+pad], center=true);
            }
            if(bothole==1)
                translate([0, 0, -LOWER_Z])
                    cube(size=[INNER_X-THICKNESS+pad, LOWER_Y-THICKNESS+pad, LOWER_Z*4], center=true);
        }
        rotate([27, 0, 0]) sphere(r=r);  // i simply deny to know why this must be 27° to be flush
    }
}

// outer shell is inner w/ different corner radius and no holes
module outer() {
    inner(pad=0, r=THICKNESS*2, bothole=0, top=0);
}

//.
