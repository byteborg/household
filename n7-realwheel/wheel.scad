// steering wheel for nexus 7

FN = 8;  // 1 for draft, 8 for production
if (TRG>0) {
    plate();
} else {
    assembly();
}

N7_X = 198.5;
N7_Y = 120 - .5;
N7_Z = 10.45;

q = .2;

THICK = 2;  // thickness of walls etc.
GRIP = 42;
SPOKE = 20;
SPOKE_ANGLE = 30;

CIRC_INNER = (N7_X + GRIP) / 2;

module n7_frame() {
    // inner shell
    difference() {
        cylinder(r=CIRC_INNER, h=N7_Z+(THICK*2), center=true);
        for(d=[1, -1]) {
            translate([0, d*(N7_Y+(THICK*2)), 0])
                cube(size=[N7_X*1.5, N7_Y, N7_Z*2], center=true);
        }
    }
}

module n7_device() {
    // N7 + insertion slot
    // translate([0, GRIP, 0])
    //     cube(size=[N7_X+q, N7_Y+q+GRIP*2, N7_Z+q], center=true);
    // N7
    cube(size=[N7_X+q, N7_Y+q, N7_Z+q], center=true);
    // hole for display
    translate([0, 0, 5]) {
        cube(size=[N7_X-SPOKE/2, N7_Y-SPOKE/2, N7_Z], center=true);
    }
}

module spokes() {
    for(a=[-SPOKE_ANGLE, SPOKE_ANGLE, 180-SPOKE_ANGLE, 180+SPOKE_ANGLE]) {
        rotate([0, 0, a])
            translate([-(CIRC_INNER+(GRIP/2)), 0, 0])
                cube(size=[GRIP+10, SPOKE, N7_Z+(THICK*2)], center=true);
    }
}

module grips() {
    difference() {
        rotate_extrude(convexity=10, $fn=12*FN)
            translate([(N7_X/2)+GRIP*.75, 0, 0])
                circle(r=GRIP/2, $fn=8*FN);
        for(ym=[0, 1]) {
            mirror([0, ym, 0]) {
                translate([0, 120, 0]) cube(size=[200, 100, 100], center=true);
                for(xm=[0, 1]) {
                    mirror([xm, 0, 0])
                        rotate([0, 0, SPOKE_ANGLE])
                            translate([(N7_X/2)+GRIP, SPOKE/2+100, 0])
                                cube(size=[GRIP*2+SPOKE*2, 200, GRIP*2], center=true);
                }
            }
        }
    }
}

module usb_plug() {
    translate([-(N7_X/2+10), 0, 0]) {
        rotate([0, 90, 0]) {
            difference() {
                union() {
                    // cylinder(r=5, h=40, center=true);
                    translate([2, 0, -2.5])
                        cylinder(r=10, h=35, center=true);
                    translate([20, 0, -2.5])
                        cube(size=[40, 20, 35], center=true);
                }
                translate([-(50+5), 0, 0])
                    cube(size=[100, 100, 100], center=true);
            }
        }
    }
}
module phones_plug() {
    // phones plug hole
    translate([-(N7_X/2+10), -42, 0]) {
        rotate([0, 90, 0]) {
            difference() {
                union() {
                    // cylinder(r=5, h=40, center=true);
                    translate([2, 0, 2.5])
                        cylinder(r=10, h=25, center=true);
                    translate([20, 0, 2.5])
                        cube(size=[40, 20, 25], center=true);
                }
                translate([-(50+5), 0, 0])
                    cube(size=[100, 100, 100], center=true);
            }
        }
    }
}
module speaker_holes() {
    translate([-N7_X/2+12+2.5, 0, -5])
        for(y=[-3:3]) {
            translate([0, y*9, 0]) {
                rotate([0, 0, 45])
                cube(size=[5, 5, 10], center=true);
            }
        }
    // #cube(size=[5, 60, 10], center=true);
}

BUT_X = 50;
BUT_OFS = 25;

module buttons() {
    translate([N7_X/2-BUT_X/2-BUT_OFS, -N7_Y/2, 0])
    rotate([0, 0, 0])
    translate([0, -5, -10])
    // rotate([0, 90, 0])
    // #cylinder(r=10, h=BUT_X, center=true);
    cube(size=[BUT_X, 20, 20], center=true);
}

module assembly( ){
    difference() {
        union() {
            n7_frame();
            // spokes();
            grips();
        }
        n7_device();
        usb_plug();
        phones_plug();
        speaker_holes();
        buttons();
    }
}

CLICK_X = 200;
CLICK_Y = 200;
CLICK_Z = 100;

LOCK_X = 10;    // click lock length
LOCK_Y = 1.5;     // click tooth depth

module click() {
    translate([-LOCK_X/2, -CLICK_Y/2, 0])
    linear_extrude(height=CLICK_Z, center=true, convexity=10) {
        polygon(
            points=[
                [0, 0],
                [0, CLICK_Y/2],
                [LOCK_X/3, CLICK_Y/2+LOCK_Y/2],
                [LOCK_X/3*2, CLICK_Y/2-LOCK_Y/2],
                [LOCK_X, CLICK_Y/2],
                [LOCK_X, CLICK_Y],
                [CLICK_X, CLICK_Y],
                [CLICK_X, 0]
            ],
            paths=[[0,1,2,3,4,5,6,7,0]],
            convexity=10
        );
    }
    // union() {
    //     translate([100+CX/2, 0, 0]) cube(size=[200, 200, 100], center=true);
    // }
}

CUT_X = 400;
CUT_Y = 200;
CUT_Z = 100;
ADJ = -50; // Dirty, but works
DISP = GRIP*0.66;

module plate() {
    rotate([0, -90, 0]) {
        if(TRG==1) {
            // inner L
            translate([CIRC_INNER+ADJ, 0, DISP*2/3])
            difference() {
                assembly();
                translate([-(CUT_X/2+CIRC_INNER+ADJ), 0, 0]) cube(size=[CUT_X, CUT_Y, CUT_Z], center=true);
                click();
            }
            // inner R
            translate([CIRC_INNER+ADJ, 0, -DISP*2/3])
            rotate([0, 0, 180])
            difference() {
                assembly();
                rotate([0, 0, 180])
                translate([-(CUT_X/2+CIRC_INNER+ADJ), 0, 0]) cube(size=[CUT_X, CUT_Y, CUT_Z], center=true);
                rotate([0, 0, 180])
                click();
            }
        }
        if(TRG==2) {
            // outer L
            translate([-CIRC_INNER-ADJ, 0, DISP*2])
            rotate([0, 0, 180])
            difference() {
                assembly();
                translate([-(-CUT_X/2+CIRC_INNER+ADJ), 0, 0]) cube(size=[CUT_X, CUT_Y, CUT_Z], center=true);
            }
        }
        if(TRG==3) {
            // outer R
            translate([-(CIRC_INNER+ADJ), 0, -DISP*2])
            difference() {
                assembly();
                rotate([0, 180, 0])
                translate([-(-CUT_X/2+CIRC_INNER+ADJ), 0, 0]) cube(size=[CUT_X, CUT_Y, CUT_Z], center=true);
            }
        }
    }
}

//.
