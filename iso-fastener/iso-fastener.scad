// fastener for mounting foam insulation panels
// Public Domain
// Show me the stuff you make with it!
// karsten@rohrbach.de

use <ruler.scad>
ROUND=1.5;
THICK=2.5-ROUND;
DISC_DIA=50-ROUND/2;
HOLE_DIA=5+ROUND/2;
HOLE_Z=5-ROUND/4;
SHAFT_Z=5-ROUND/4;
SHAFT_DIA=10+ROUND/2;

// ->| HOLE_DIA/2  ____________________
// XXX                               ^
//   XX                       HOLE_Z |
//    XX ____________________________v______
//     XX                                 ^
//  ->|XX SHAFT_DIA/2                     |
//     XX                         SHAFT_Z |
//     XX                                 |
//     XX  |                              |
//     XX  v             _________________v_
//     XXXXXXXXXXXXXXXXXX|<- DISC_DIA
//         ^
//         | THICK


module profile() {
    minkowski() {
        polygon(
            points=[
                [SHAFT_DIA/2, 0],
                [DISC_DIA/2, 0],
                [DISC_DIA/2, THICK],
                [SHAFT_DIA/2+THICK, THICK],
                [SHAFT_DIA/2+THICK, THICK+SHAFT_Z],
                [HOLE_DIA/2+THICK, THICK+SHAFT_Z+HOLE_Z],
                [HOLE_DIA/2, THICK+SHAFT_Z+HOLE_Z],
                [HOLE_DIA/2, THICK+SHAFT_Z],
                [SHAFT_DIA/2, THICK+SHAFT_Z],
            ]
        );
        circle(r=ROUND/2, $fn=32);
    }
}

module saucer() {
    translate([0, 0, ROUND/2]) rotate_extrude($fn=180) profile();
}
%ruler();
difference() {
    saucer();
    for(a=[1:6]) {
        rotate([0, 0, 360/6*a])
            translate([DISC_DIA/3, 0, 0])
                cylinder(r=HOLE_DIA/2, h=THICK*40, $fn=64, center=true);
    }
}
//.
