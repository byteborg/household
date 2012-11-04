difference(){
	difference(){
		sphere(r=15, $fn=96);
		rotate([0,90,0]) cylinder(r=1.5, h=30, $fn=16);
	}
	translate([0,0,-10]) cube([40,40,20], center=true);
}