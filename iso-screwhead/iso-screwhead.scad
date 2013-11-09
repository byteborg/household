use <polyScrewThread/polyScrewThread_r1.scad>

PI=3.14159;

// thread();
// nut();

assembly();

module assembly() {
    hat();
    translate([0, 20, 0]) nut();
}

module hat() {
    difference() {
        cylinder(r1=10/2, r2=20/2, h=10, center=false, $fn=96);
        translate([0, 0, 3]) cylinder(r1=10/2, r2=20/2, h=10, center=false, $fn=96);
        translate([0, 0, 60/2+10-1.7]) rotate([90, 0, 0]) cylinder(r=60/2, h=100, center=true, $fn=96);
    }
    cylinder(r=10/2, r2=8/2, h=8, $fn=64);
    translate([0, 0, 8-.5])  thread();
}

module thread() {
    screw_thread( 6,   // Outer diameter of the thread
                  3,   // Step, traveling length per turn, also, tooth height, whatever...
                 55,   // Degrees for the shape of the tooth
                       // (XY plane = 0, Z = 90, btw, 0 and 90 will/should not work...)
                 15,   // Length (Z) of the tread
                 PI/8,   // Resolution, one face each "PI/2" mm of the perimeter,
                 1);  // Countersink style:
                          // -2 - Not even flat ends
                          // -1 - Bottom (countersink'd and top flat)
                          //  0 - None (top and bottom flat)
                          //  1 - Top (bottom flat)
                          //  2 - Both (countersink'd)
}

module nut() {
    hex_nut(11,  // Distance between flats
             6,  // Height
             3,  // Step height (the half will be used to countersink the ends)
            55,  // Degrees (same as used for the screw_thread example)
             6+1.5,  // Outer diameter of the thread to match
           0.5); // Resolution, you may want to set this to small values
                 // (quite high res) to minimize overhang issues
}

//.
