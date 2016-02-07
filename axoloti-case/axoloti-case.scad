// case for axoloti

THICK=2;    // wall thickness
ROUND=2;    // corner radius
SCREW=3;    // screw diameter
GAP=1.5;     // tolerance for board

VENT_X=2;
VENT_Y=22;
VENT_DIST=5;
VENT_N=32;

BRD_X=160;
BRD_Y=50;
BRD_Z=24;

q=.001;

use <axoloti-board.scad>;

module inner() {
    cube(size=[BRD_X+(GAP*2), BRD_Y+(GAP*2), BRD_Z+(GAP*2)], center=false);
    translate([GAP, GAP, GAP]) axoloti_board(ex=10);
    translate([GAP, GAP, GAP]) axoloti_board_holes(ex=10);
    for (i=[0:VENT_N-1]) {
        translate([BRD_X/2+GAP+((VENT_N/2-i-.5)*VENT_DIST-(VENT_X/2)), BRD_Y/2+GAP-VENT_Y/2, -BRD_Z]) cube(size=[VENT_X, VENT_Y, BRD_Z*3], center=false);
    }

}

module outer() {
    translate([-THICK+ROUND, -THICK+ROUND, 0])
    linear_extrude(height=BRD_Z+(GAP*2)+(THICK*2))
    minkowski() {
        circle(r=ROUND, $fn=32);
        square(size=[BRD_X+(GAP*2)+(THICK*2)-(ROUND*2), BRD_Y+(GAP*2)+(THICK*2)-(ROUND*2)], center=false);
    }
}

module fix(d=8, i=3, h=20, rot=0) {
    hyp = d * sqrt(2);
    difference() {
        union() {
            cylinder(r=d/2, h=h, center=true, $fn=24);
            //translate([d/4, d/4, 0]) cube(size=[d/2, d/2, h], center=true);
        }
        translate([0, 0, -h/2-q])
            rotate([0, -90, -45]) translate([0, -hyp/2+q, -hyp/2])
                linear_extrude(hyp)
                    polygon(points=[[0,0],[hyp*1.25,0],[0,hyp]]);
        cylinder(r=i/2, h=h*1.25, center=true, $fn=12);
    }
}
//fix();

module fix_hole(d=8, i=3, h=THICK) {
    translate([0, 0, -h/2]) cylinder(r1=i/2, r2=d/2, h=h+q*2, center=true, $fn=24);
}
//fix_hole();

module lower() {
    difference() {
        outer();
        // board
        translate([0, 0, THICK]) inner();
        // cutaway
        translate([-BRD_X/4, -BRD_Y/4, BRD_Z+(GAP*2)+THICK-q])
            cube(size=[BRD_X*2, BRD_Y*2, 10]);
    }
    // mounting
    translate([GAP, GAP, GAP/2-q]) difference() {
        translate([0, 0, THICK]) axoloti_board_holes(ex=GAP, d=6, fn=24);
        translate([0, 0, THICK]) axoloti_board_holes(ex=20, d=3);

    }
    // fix holder
    fix_h = 15;
    fix_d = 8;
    fix_zpos = BRD_Z+(GAP*2)+(THICK*2)-THICK-(fix_h/2);
    translate([THICK+q, THICK+q, fix_zpos])
        rotate([0, 0, 180]) fix(d=fix_d, i=3, h=fix_h);
    translate([THICK+q, THICK+BRD_Y+(GAP*2)-(fix_d/2)-q, fix_zpos])
        rotate([0, 0, 90]) fix(d=fix_d, i=3, h=fix_h);
    translate([THICK+BRD_X+(GAP*2)-(fix_d/2)-q, THICK+q, fix_zpos])
        rotate([0, 0, 270]) fix(d=fix_d, i=3, h=fix_h);
    translate([THICK+BRD_X+(GAP*2)-(fix_d/2)-q, THICK+BRD_Y+(GAP*2)-(fix_d/2)-q, fix_zpos])
        rotate([0, 0, 0]) fix(d=fix_d, i=3, h=fix_h);
}

module upper() {
    difference() {
        translate([0, 0, -BRD_Z-(GAP*2)-THICK])
        difference() {
            outer();
            // board
            translate([0, 0, THICK]) inner();
            // cutaway
            translate([-BRD_X/4, -BRD_Y/4, BRD_Z+(GAP*2)+THICK-BRD_Z*2])
            cube(size=[BRD_X*2, BRD_Y*2, BRD_Z*2-q]);
        }
        // fix holes
        fix_d = 8;
        translate([THICK+q, THICK+q, THICK])
            fix_hole();
        translate([THICK+q, THICK+BRD_Y+(GAP*2)-(fix_d/2)-q, THICK])
            fix_hole();
        translate([THICK+BRD_X+(GAP*2)-(fix_d/2)-q, THICK+q, THICK])
            fix_hole();
        translate([THICK+BRD_X+(GAP*2)-(fix_d/2)-q, THICK+BRD_Y+(GAP*2)-(fix_d/2)-q, THICK])
            fix_hole();

    }
}

lower();
translate([0, -BRD_Y-20, 0]) upper();

/*difference() {
    render() combine();
    translate([-BRD_X, -BRD_Y, BRD_Z/2+GAP]) cube(size=[BRD_X*2, BRD_Y*2, BRD_Z]);
}*/
