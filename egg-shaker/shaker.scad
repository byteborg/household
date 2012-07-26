// shaker.scad
// parametric shaker
// byteborg - karsten@rohrbach.de
// derived from Egg.scad thing:7832 by Nicholas C. Lewis

$fn=12;
radius = 15;
wall = 1.5;
tol = .1;
stretch = 2.6;
linkh = 10;

module ei(rd) {
    hull(){
    	intersection(){
    		scale([1,1,stretch]) sphere(r=rd);
    		translate([0,0,stretch*rd])cube(2*stretch*rd, center = true);
    	}
    	sphere(r=rd);
    }    
}

for (t = [-(radius+5), (radius+5)])
translate ([t,0,0]) 
difference(){
    ei(radius+wall/2);
    ei(radius-wall/2);
    translate([0,0,-radius*1.5])
        cube(size=[radius*3, radius*3, radius*3], center=true);
}

// translate ([(radius+5),0,0]) 
// rotate([180,0,0])
// difference(){
//     ei(radius+wall/2);
//     ei(radius-wall/2);
//     translate([0,0,radius*1.5])
//         cube(size=[radius*3, radius*3, radius*3], center=true);
// }

translate([0, -(radius*1.8), linkh/2])
difference() {
    cylinder(r=radius-wall/2-tol/2, h=linkh, center=true);
    cylinder(r=radius-wall-tol/2, h=linkh+1, center=true);
    
}
