// simple radiator key 5mm
$fn=137;
rotate([180, 0, 90]) 
difference() {
    union() {
        translate([0, 0, -1.48]) cylinder(r1=4.505,r2=5, h=8, center=true);
        hull() {
            translate([0, 0, 5]) cylinder(r=5, h=5, center=true);
            translate([-4, 0, 7]) rotate([90, 0, 0]) 
                cylinder(r=5, h=4, center=true);
            translate([4, 0, 7]) rotate([90, 0, 0])
                cylinder(r=5, h=4, center=true);
        }
        
    }
    // key quad
    translate([0, 0, -2]) cube(size=[5.2, 5.2, 10], center=true);
    // holes
    //translate([-4, 0, 7]) rotate([90, 0, 0]) cylinder(r=1.5, h=20, center=true);
    translate([4, 0, 7]) rotate([90, 0, 0]) cylinder(r=1.75, h=10, center=true);
    
}
