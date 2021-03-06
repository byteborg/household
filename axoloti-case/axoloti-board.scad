module axoloti_board_holes(ex=10, d=3, fn=12) {
    // mounting holes
    translate([3.5, 11, 0]) cylinder(r=d/2, h=ex, center=true, $fn=fn);
    translate([3.5, 40, 0]) cylinder(r=d/2, h=ex, center=true, $fn=fn);
    translate([44, 40, 0]) cylinder(r=d/2, h=ex, center=true, $fn=fn);
    translate([106, 11, 0]) cylinder(r=d/2, h=ex, center=true, $fn=fn);
    translate([106, 40, 0]) cylinder(r=d/2, h=ex, center=true, $fn=fn);
    translate([116, 11, 0]) cylinder(r=d/2, h=ex, center=true, $fn=fn);
    translate([116, 40, 0]) cylinder(r=d/2, h=ex, center=true, $fn=fn);
    translate([156.5, 11, 0]) cylinder(r=d/2, h=ex, center=true, $fn=fn);
    translate([156.5, 40, 0]) cylinder(r=d/2, h=ex, center=true, $fn=fn);
}

module axoloti_board(ex=0) {
    // axoloti board
    difference() {
        cube([160,50,2]);
        // recess at switches
        translate([104.25, 0, 0]) cube(size=[8, 1, 10], center=true);
        translate([100.25, 0, 0]) cylinder(r=1/2, h=10, center=true, $fn=12);
        translate([108.25, 0, 0]) cylinder(r=1/2, h=10, center=true, $fn=12);
        // split
        translate([110, -.01, -5]) cube(size=[2, 5.5, 10]);
        translate([110, 15, -5]) cube(size=[2, 8, 10]);
        translate([110, 41, -5]) cube(size=[2, 18, 10]);
        // holes
        axoloti_board_holes(h=10);
    }
    translate([0,0,2]) color([.4,1,.4,1]) {
        // IN 6.3 jack
        translate([9,0,0]) {
            cube([18,25,20]);
            translate([18/2,10,10]) rotate([90,0,0]) cylinder(h=20+ex, r=12/2, $fn=24);
        }
        // OUT 6.3 jack
        translate([28,0,0]) {
            cube([18,25,20]);
            translate([18/2,20/2,10]) rotate([90,0,0]) cylinder(h=20+ex, r=12/2, $fn=24);
        }
        // headphone jack
        translate([50,0,0]) {
            cube([6,15,5]);
            translate([6/2,6/2,5/2]) rotate([90,0,0]) cylinder(h=6+ex, r=5/2, $fn=12);
        }
        // micro usb
        translate([60,-1.5-ex,0]) {
            cube([8,6+ex,3]);
        }
        // uSD
        translate([69,0-ex,0]) {
            cube([15,16+ex,2]);
        }
        // USB
        translate([85,-1.5-ex,0]) {
            cube([7,20+ex,15]);
        }
        // LED2
        translate([93,0,0]) {
            cube(size=[2, .5, .5]);
        }
        // LED1
        translate([96,0,0]) {
            cube(size=[2, .5, .5]);
        }
        // S2
        translate([100,0,0]) {
            translate([0, .5, 0]) cube(size=[3.5, 3, 1]);
            translate([1.5/2, 0, 0]) cube(size=[2, 1, 1]);
            if (ex>0) {
                translate([6/2,6/2,5/2]) rotate([90,0,0]) cylinder(h=6+ex, r=5/2, $fn=12);
            }
        }
        // S1
        translate([105,0,0]) {
            translate([0, .5, 0]) cube(size=[3.5, 3, 1]);
            translate([1.5/2, 0, 0]) cube(size=[2, 1, 1]);
            if (ex>0) {
                translate([6/2,6/2,5/2]) rotate([90,0,0]) cylinder(h=6+ex, r=5/2, $fn=12);
            }
        }
        // MIDI IN
        translate([112,-.3,0]) {
            difference(){
                if (ex==0) {
                    translate([0, 0-ex, 0]) cube(size=[20-.1, 14+ex, 21]);
                } else {
                    translate([0, 0-ex, 0]) cube(size=[20-.1+.2, 14+ex, 21]);
                }
                if (ex==0) {
                    translate([20/2, 0, 20/2]) rotate([90, 0, 0]) cylinder(r=15/2, h=2, center=true);
                    translate([1.5, 0, 6]) rotate([90, 0, 0]) cylinder(r=2/2, h=20, center=true, $fn=12);
                    translate([20-1.5, 0, 6]) rotate([90, 0, 0]) cylinder(r=2/2, h=20, center=true, $fn=12);
                    translate([20/2, 0, 21-1.5]) rotate([90, 0, 0]) cylinder(r=2/2, h=20, center=true, $fn=12);
                }
            }
        }
        // MIDI OUT
        translate([132,-.3,0]) {
            difference(){
                translate([0, 0-ex, 0]) cube(size=[20-.1, 14+ex, 21]);
                if (ex==0) {
                    translate([20/2, 0, 20/2]) rotate([90, 0, 0]) cylinder(r=15/2, h=2, center=true);
                    translate([1.5, 0, 6]) rotate([90, 0, 0]) cylinder(r=2/2, h=20, center=true, $fn=12);
                    translate([20-1.5, 0, 6]) rotate([90, 0, 0]) cylinder(r=2/2, h=20, center=true, $fn=12);
                    translate([20/2, 0, 21-1.5]) rotate([90, 0, 0]) cylinder(r=2/2, h=20, center=true, $fn=12);
                }
            }
        }
        // Power
        translate([160,20,0]) {
            translate([-10, 0, 0]) {
                difference(){
                    cube(size=[14+ex, 10, 11]);
                    if (ex==0) {
                        translate([8, 10/2, 6]) rotate([0, 90, 0]) cylinder(r=6/2, h=14, center=true, $fn=24);
                    }
                }
                translate([7, 10/2, 6]) rotate([0, 90, 0]) cylinder(r=1/2, h=14, center=true, $fn=12);

            }
        }
    }
} // module

axoloti_board();
