// tunnel for brio train
include <wibas_nur_Bildmarke_cmyk.scad>;

XCL = 45; // x clearance
ZCL = 77; // z clearance
LENGTH = 80; // tunnel length
THICKNESS = 5; // wall thickness
RR = 2; // rounded corner radius
qq=.01;

X = XCL+THICKNESS*2;
Y = LENGTH;
Z = ZCL+THICKNESS;

module logo() {
    minkowski() {        
        linear_extrude(height=qq) scale(2){
            translate([RR/1.5, 0, 0]) path3032();
            translate([0, RR/1.5, 0]) path3034();
        }
        cylinder(r1=qq, r2=RR/1.5, h=RR/2, center=false, $fn=24);
    }
}

module tunnel() {
    difference() {
        translate([RR, RR, 0]) difference() {
            minkowski() {
                cube(size=[X-(RR*2), Y-(RR*2), Z-(RR)], center=false);
                sphere(r=RR, $fn=8);
            }
            translate([0, 0, -50]) cube(size=[X*3, Y*3, 100], center=true);
        }
        translate([THICKNESS+XCL/2, 0, ZCL-XCL/2]) rotate([90, 0, 0]) cylinder(r=XCL/2, h=1000, center=true, $fn=256);
        translate([THICKNESS, -Y/2, -qq/2]) cube(size=[XCL, Y*2, ZCL-(XCL/2)+qq], center=false);
        translate([RR/2, Y/2, Z/2]) rotate([90, 0, 0]) rotate([0, -90, 0]) logo();
        translate([X-RR/2, Y/2, Z/2]) rotate([90, 0, 0]) rotate([0, 90, 0]) logo();
    }
 

}
translate([0, 0, Z]) rotate([180, 0, 0]) tunnel();
