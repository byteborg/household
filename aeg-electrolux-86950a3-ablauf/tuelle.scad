// Auslauftuelle für AEG Electrolux 86950A3

$fn=32*8;

%translate([0, 0, -8]) machine();
part();

module part() {
    difference() {
        cylinder(r=67/2+1.5, h=5, center=false);
        cylinder(r=67/2+.1, h=100, center=true);
    }
     difference() {
        rotate([0, 5, 0]) difference() {
            cylinder(r=67/2+1.5, h=40, center=false);
            cylinder(r=67/2+.1, h=100, center=true);
        }
        translate([0, 0, -50]) cube(size=[100, 100, 100], center=true);
        //translate([0, 0, 70]) rotate([0, -30, 0]) cube(size=[200, 100, 100], center=true);
        translate([-20, 0, 70+5]) rotate([90, 0, 0]) cylinder(r=70, h=100, center=true);
    }
    // Halteknoedel
    translate([-67/2-.1, 0, 0]) fit();
    translate([0, -67/2-.1, 0]) fit();
    translate([0, 67/2+.1, 0]) fit();
}

module fit() {
    cylinder(r=.7, h=5, center=false);
    // translate([0, 0, +5/2]) 
    // difference() {
    //     cylinder(r=1/2, h=5, center=true);
    //     // rotate([0, 0, 45]) cube(size=[1, 1, 5], center=true);
    //     translate([-5, 0, 0]) cube(size=[10, 10, 10], center=true);
    // }
}

module machine() {
    color("black", 0.2) difference() {
        union() {
            hull() {
                // Flansch
                cylinder(r=67/2, h=12, center=false);
                // Auslauf
                intersection() {
                    cylinder(r=67/2, h=24, center=false);
                    rotate([0, 66, 0]) translate([62, 0, 0]) cylinder(r=70, h=100, center=true);
                }
            }
            // Gummi
            cylinder(r=70/2, h=8, center=false);
            cylinder(r=79/2, h=3, center=false);            
        }
        cylinder(r=67/2-1, h=100, center=true);
    }
}
