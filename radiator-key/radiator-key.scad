// simple radiator key 4mm
$fn=137;
rotate([180, 0, 0]) 
difference() {
    union() {
        translate([0, 0, -1.48]) cylinder(r1=3.5,r2=4, h=8, center=true);
        hull() {
            translate([0, 0, 5]) cylinder(r=4, h=5, center=true);
            translate([-4, 0, 7]) rotate([90, 0, 0]) 
                cylinder(r=4, h=3, center=true);
            translate([4, 0, 7]) rotate([90, 0, 0])
                cylinder(r=4, h=3, center=true);
        }
        
    }
    // key quad
    translate([0, 0, -2]) cube(size=[4.1, 4.1, 10], center=true);
    // holes
    //translate([-4, 0, 7]) rotate([90, 0, 0]) cylinder(r=1.5, h=20, center=true);
    translate([4, 0, 7]) rotate([90, 0, 0]) cylinder(r=1.75, h=10, center=true);
    
}
