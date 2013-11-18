// carrot.scad
difference() {
    scale([1, 0.5, 1]) carrot();
    translate([0, 0, -50]) cube(size=[100, 100, 100], center=true);
    // translate([0, 50+5, 0]) cube(size=[100, 100, 100], center=true);
}
module carrot() {
    translate([0, 0, -7]) scale(10) import("carrot_mesh.stl");
}
// cube(size=[10, 10, 10], center=true);

translate([0, 10, 0]) ring();
module ring() {
    rotate([0, 90, 90])
    difference() {
        cylinder(r=6/2, h=4, center=true, $fn=96);
        cylinder(r=2.5/2, h=5, center=true, $fn=96);
        translate([50, 0, 0]) cube(size=[100, 100, 100], center=true);
    }
}
