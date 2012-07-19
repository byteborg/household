
q = .25; // tolerance
wx = 40.5+1; // width
wy = 51+1; // length
thick = 2.75; // thickness
over = 20; // oversize
$fn = 8;
//$fn=5;

module basis() {
    translate([0, -wy/2, 0]) 
        cube(size=[wx+q, wy+q, thick+q], center=true);
}

module winkel(dy=0) {
    basis();
    translate([0, over/2, (wy+dy)/2]) 
        cube(size=[wx+q+over, thick+q+over, wy+dy+q+over], center=true);
    translate([0, -thick/2, thick/2]) rotate([0, 90, 0]) {
        difference() {
            cylinder(r=(thick), h=wx+q, center=true);
            translate([-thick, -thick, 0]) 
                cylinder(r=thick, h=wx+q+1, center=true);
        }        
    }
    translate([0, 0, 0]) rotate([0, 90, 0]) 
    cylinder(r=(thick+q)/2, h=wx+q, center=true);
}

translate([0,0,-thick/2])
rotate([-90,0,90])
difference() {
    union() {
        minkowski() {
            basis();
            sphere(r=thick);
        }
        translate([0, 0, over/2]) cube(size=[wx+2*thick-q, 3*thick, over], center=true);
    }
    winkel();
}
//#winkel();
