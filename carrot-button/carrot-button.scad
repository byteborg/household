// carrot.scad

// assembly1();
assembly2(holedist=3, holedia=1.5);

module assembly1() {
    difference() {
        scale([1, 0.5, 1]) carrot();
        translate([0, 0, -50]) cube(size=[100, 100, 100], center=true);
        // translate([0, 50+5, 0]) cube(size=[100, 100, 100], center=true);
    }
    translate([0, 10, 0]) ring();
}

module assembly2(holedist=3, holedia=1.2) {
    difference() {
        scale(1.5) scale([1, 0.5, 1]) carrot();
        translate([0, 0, -50]) cube(size=[100, 100, 100], center=true);
        translate([0, -5, 0]) for (x=[-1,1]) for (y=[-1,1]) {
            translate([x*holedist/2, y*holedist/2, 0]) {
                cylinder(r=holedia/2, h=100, center=true, $fn=32);
                translate([0, 0, 7.55]) cylinder(r1=holedia/2, r2=holedia*1.5, h=holedia*2, center=true, $fn=32);
                translate([0, 0, 0]) cylinder(r2=holedia/2, r1=holedia*1.5, h=holedia*2, center=true, $fn=32);
            }
        }
    }
}

module carrot() {
    translate([0, 0, -7]) scale(10) import("carrot_mesh.stl");
}
// cube(size=[10, 10, 10], center=true);

module ring() {
    rotate([0, 90, 90])
    difference() {
        cylinder(r=6/2, h=4, center=true, $fn=96);
        cylinder(r=2.5/2, h=5, center=true, $fn=96);
        translate([50, 0, 0]) cube(size=[100, 100, 100], center=true);
    }
}
