// case for axoloti

THICK=2;    // wall thickness
ROUND=2;    // corner radius
SCREW=3;    // screw diameter
GAP=.5;     // tolerance for board

VENT_X=2;
VENT_Y=22;
VENT_DIST=5;
VENT_N=32;

BRD_X=160;
BRD_Y=50;
BRD_Z=24;


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


module combine() {
    difference() {
        outer();
        translate([0, 0, THICK]) inner();
    }
}

combine();

/*difference() {
    render() combine();
    translate([-BRD_X, -BRD_Y, BRD_Z/2+GAP]) cube(size=[BRD_X*2, BRD_Y*2, BRD_Z]);
}*/
