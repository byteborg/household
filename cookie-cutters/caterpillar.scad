// This is mrbenbritton's cookie cutter script
// http://www.thingiverse.com/thing:28882

inputfile = "caterpillar-contour.dxf";

wallThick = 2;
cutterMinimum = 0.4;
baseHeight = 2;
height = 10;
flangeWidth = 6;

//cube([7,5,1], center=true);

minkowski(){
	outline();
	cylinder(r1 = wallThick/3, r2 = cutterMinimum/3, h = height);
};
//%cube([.5, .5, height*3], true);

flange();

module flange(){
	difference(){
	minkowski(){
	baseShape(baseHeight/3);
	cylinder(r = flangeWidth, h = baseHeight/3);
	}
	translate([0,0,-0.01])baseShape(baseHeight*1.1);
	};
}



module outline(){
	difference(){
	minkowski(){
	baseShape(baseHeight/3);
	cylinder(r = cutterMinimum/3, h = baseHeight/3);
	}
	translate([0,0,-0.01])baseShape(baseHeight*1.1);
	};
};

module baseShape(H){
	linear_extrude(file = inputfile, height=H);
}
