// ikea ledberg mount for bed post
q=.00001;

module clip(h=10, x=17, y=8.5, t=2) {
	// h = height
	// x,y = clip dimensions
	// t = thickness
	linear_extrude(height=h) {
		polygon(points=[
			[0,0],
			[x,0],
			[x,y],
			[x-t,y],
			[x-t,t],
			[t,t],
			[t,y],
			[0,y],
			[0,0]
			]);
		translate([t, 7]) circle(r=1.5, $fn=32); 
		translate([x-t, 7]) circle(r=1.5, $fn=32); 
	}
}

module winkel(h=10, d=15, w=55, t=2) {
	// h = extrusion height
	// d = depth of clip ends
	// w = width of wood to clip to
	// t = structural thickness
	linear_extrude(height=h) {
		polygon(points=[
			[0,0],
			[w+t*2,0],
			[w+t*2,d],
			[w+t,d],
			[w+t,t],
			[t,t],
			[t,w+t],
			[d,w+t],
			[d,w+t*2],
			[0,w+t*2],
			[0,0]
			]);
	}
}

module halter(h=10, t=3) {
	union() {
		translate([-10-q, 0, 0]) cube(size=[10+2*q, t, h]);
		translate([-10, 0, 0]) rotate([0, 0, 45]) clip(h=h, t=t);
		winkel(h=h, t=t);
		
	}
}

halter(h=15, t=2.52);