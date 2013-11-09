include <font_base.scad>

module UbuntuB_contour00x21_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[14, 33], [14, 28], [14.0, 23.5], 
		[14, 19], [13, 14], [9.5, 14.0], 
		[6, 14], [5, 19], [4.5, 23.5], 
		[4, 28], [4, 33], [4.0, 38.5], 
		[4, 44], [9.0, 44.0], [14, 44], 
		[14.0, 38.5], ]);
}

module UbuntuB_contour00x21_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 33], [14, 28], [14.0, 23.5],steps,10);
}
}

module UbuntuB_contour00x21_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14.0, 23.5], [14, 19], [13, 14],steps,10);
	BezConic([6, 14], [5, 19], [4.5, 23.5],steps,10);
	BezConic([4.5, 23.5], [4, 28], [4, 33],steps,10);
}
}

module UbuntuB_contour00x21(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x21_skeleton();
			UbuntuB_contour00x21_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x21_subtractive_curves(steps);
	}
}

module UbuntuB_contour10x21_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[15, 5], [15, 2], [13.0, 0.5], 
		[11, -1], [9, -1], [7, -1], 
		[5.0, 0.5], [3, 2], [3, 5], 
		[3, 8], [5.0, 9.5], [7, 11], 
		[9, 11], [11, 11], [13.0, 9.5], 
		[15, 8], ]);
}

module UbuntuB_contour10x21_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour10x21_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([15, 5], [15, 2], [13.0, 0.5],steps,10);
	BezConic([13.0, 0.5], [11, -1], [9, -1],steps,10);
	BezConic([9, -1], [7, -1], [5.0, 0.5],steps,10);
	BezConic([5.0, 0.5], [3, 2], [3, 5],steps,10);
	BezConic([3, 5], [3, 8], [5.0, 9.5],steps,10);
	BezConic([5.0, 9.5], [7, 11], [9, 11],steps,10);
	BezConic([9, 11], [11, 11], [13.0, 9.5],steps,10);
	BezConic([13.0, 9.5], [15, 8], [15, 5],steps,10);
}
}

module UbuntuB_contour10x21(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x21_skeleton();
			UbuntuB_contour10x21_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x21_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x21(steps=2) {
	difference() {
		UbuntuB_contour00x21(steps);
		
	}
}

module UbuntuB_chunk20x21(steps=2) {
	difference() {
		UbuntuB_contour10x21(steps);
		
	}
}

UbuntuB_bbox0x21=[[3, -1], [15, 44]];

module UbuntuB_letter0x21(detail=2) {
	UbuntuB_chunk10x21(steps=detail);
	UbuntuB_chunk20x21(steps=detail);
} //end skeleton

module UbuntuB_contour00x22_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[13, 49], [13.0, 46.5], [13, 44], 
		[13, 41], [12.5, 37.5], [12, 34], 
		[11, 30], [8.0, 30.0], [5, 30], 
		[4, 34], [3.5, 37.5], [3, 41], 
		[3, 44], [3.0, 46.5], [3, 49], 
		[8.0, 49.0], ]);
}

module UbuntuB_contour00x22_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x22_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([13, 44], [13, 41], [12.5, 37.5],steps,10);
	BezConic([12.5, 37.5], [12, 34], [11, 30],steps,10);
	BezConic([5, 30], [4, 34], [3.5, 37.5],steps,10);
	BezConic([3.5, 37.5], [3, 41], [3, 44],steps,10);
}
}

module UbuntuB_contour00x22(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x22_skeleton();
			UbuntuB_contour00x22_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x22_subtractive_curves(steps);
	}
}

module UbuntuB_contour10x22_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[13, 49], [13.0, 46.5], [13, 44], 
		[13, 41], [12.5, 37.5], [12, 34], 
		[11, 30], [8.0, 30.0], [5, 30], 
		[4, 34], [3.5, 37.5], [3, 41], 
		[3, 44], [3.0, 46.5], [3, 49], 
		[8.0, 49.0], ]);
}

module UbuntuB_contour10x22_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour10x22_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([13, 44], [13, 41], [12.5, 37.5],steps,10);
	BezConic([12.5, 37.5], [12, 34], [11, 30],steps,10);
	BezConic([5, 30], [4, 34], [3.5, 37.5],steps,10);
	BezConic([3.5, 37.5], [3, 41], [3, 44],steps,10);
}
}

module UbuntuB_contour10x22(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x22_skeleton();
			UbuntuB_contour10x22_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x22_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x22(steps=2) {
	difference() {
		UbuntuB_contour00x22(steps);
		
	}
}

module UbuntuB_chunk20x22(steps=2) {
	difference() {
		UbuntuB_contour10x22(steps);
		
	}
}

UbuntuB_bbox0x22=[[3, 30], [13, 49]];

module UbuntuB_letter0x22(detail=2) {
	UbuntuB_chunk10x22(steps=detail);
	UbuntuB_chunk20x22(steps=detail);
} //end skeleton

module UbuntuB_contour00x23_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[21, 33], [24.5, 33.0], [28, 33], 
		[29.0, 38.5], [30, 44], [34.5, 44.0], 
		[39, 44], [38.0, 38.5], [37, 33], 
		[39.0, 33.0], [41, 33], [41.0, 29.5], 
		[41, 26], [38.0, 26.0], [35, 26], 
		[34.5, 22.0], [34, 18], [37.5, 18.0], 
		[41, 18], [41.0, 14.5], [41, 11], 
		[36.5, 11.0], [32, 11], [31.0, 5.5], 
		[30, 0], [26.0, 0.0], [22, 0], 
		[23.0, 5.5], [24, 11], [20.0, 11.0], 
		[16, 11], [15.0, 5.5], [14, 0], 
		[10.0, 0.0], [6, 0], [7.0, 5.5], 
		[8, 11], [6.0, 11.0], [4, 11], 
		[4.0, 14.5], [4, 18], [7.0, 18.0], 
		[10, 18], [10.5, 22.0], [11, 26], 
		[7.5, 26.0], [4, 26], [4.0, 29.5], 
		[4, 33], [8.0, 33.0], [12, 33], 
		[13.5, 38.5], [15, 44], [19.0, 44.0], 
		[23, 44],[22.0, 38.5], ]);
}

module UbuntuB_contour00x23_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x23_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x23(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x23_skeleton();
			UbuntuB_contour00x23_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x23_subtractive_curves(steps);
	}
}

module UbuntuB_contour10x23_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[18, 18], [21.5, 18.0], [25, 18], 
		[26.0, 22.0], [27, 26], [23.0, 26.0], 
		[19, 26],[18.5, 22.0], ]);
}

module UbuntuB_contour10x23_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour10x23_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour10x23(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x23_skeleton();
			UbuntuB_contour10x23_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x23_additive_curves(steps);
	}
}

module UbuntuB_chunk10x23(steps=2) {
	difference() {
		UbuntuB_contour00x23(steps);
		scale([1,1,1.1]) UbuntuB_contour10x23(steps);
	}
}

UbuntuB_bbox0x23=[[4, 0], [41, 44]];

module UbuntuB_letter0x23(detail=2) {
	UbuntuB_chunk10x23(steps=detail);
} //end skeleton

module UbuntuB_contour00x24_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[14, 1], [9, 1], [6.5, 2.0], 
		[4, 3], [2, 4], [3.5, 7.5], 
		[5, 11], [7, 10], [10.0, 9.0], 
		[13, 8], [17, 8], [21, 8], 
		[22.5, 9.0], [24, 10], [24, 12], 
		[24, 14], [23.5, 14.5], [23, 15], 
		[21.5, 16.0], [20, 17], [18.5, 17.5], 
		[17, 18], [15, 19], [13, 20], 
		[11.0, 20.5], [9, 21], [7.0, 22.5], 
		[5, 24], [4.0, 26.0], [3, 28], 
		[3, 31], [3, 33], [4.0, 35.0], 
		[5, 37], [6.0, 38.5], [7, 40], 
		[9.0, 41.0], [11, 42], [14, 43], 
		[14.0, 46.5], [14, 50], [18.0, 50.0], 
		[22, 50], [22.0, 46.5], [22, 43], 
		[26, 43], [28.0, 42.0], [30, 41], 
		[32, 41], [31.0, 37.0], [30, 33], 
		[28, 34], [25.0, 34.5], [22, 35], 
		[19, 35], [16, 35], [14.5, 34.0], 
		[13, 33], [13, 32], [13, 31], 
		[13.5, 30.0], [14, 29], [15.0, 28.5], 
		[16, 28], [17.0, 27.5], [18, 27], 
		[20, 26], [23, 25], [25.5, 24.0], 
		[28, 23], [29.5, 21.5], [31, 20], 
		[32.0, 17.5], [33, 15], [33, 13], 
		[33, 11], [32.5, 9.0], [32, 7], 
		[31.0, 5.5], [30, 4], [27.5, 2.5], 
		[25, 1], [22, 1], [22.0, -3.0], 
		[22, -7], [18.0, -7.0], [14, -7], 
		[14.0, -3.0], ]);
}

module UbuntuB_contour00x24_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([5, 11], [7, 10], [10.0, 9.0],steps,10);
	BezConic([10.0, 9.0], [13, 8], [17, 8],steps,10);
	BezConic([17, 8], [21, 8], [22.5, 9.0],steps,10);
	BezConic([22.5, 9.0], [24, 10], [24, 12],steps,10);
	BezConic([24, 12], [24, 14], [23.5, 14.5],steps,10);
	BezConic([23.5, 14.5], [23, 15], [21.5, 16.0],steps,10);
	BezConic([21.5, 16.0], [20, 17], [18.5, 17.5],steps,10);
	BezConic([15, 19], [13, 20], [11.0, 20.5],steps,10);
	BezConic([28.0, 42.0], [30, 41], [32, 41],steps,10);
	BezConic([30, 33], [28, 34], [25.0, 34.5],steps,10);
	BezConic([25.0, 34.5], [22, 35], [19, 35],steps,10);
	BezConic([19, 35], [16, 35], [14.5, 34.0],steps,10);
	BezConic([14.5, 34.0], [13, 33], [13, 32],steps,10);
	BezConic([13, 32], [13, 31], [13.5, 30.0],steps,10);
	BezConic([13.5, 30.0], [14, 29], [15.0, 28.5],steps,10);
	BezConic([15.0, 28.5], [16, 28], [17.0, 27.5],steps,10);
	BezConic([17.0, 27.5], [18, 27], [20, 26],steps,10);
}
}

module UbuntuB_contour00x24_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 1], [9, 1], [6.5, 2.0],steps,10);
	BezConic([6.5, 2.0], [4, 3], [2, 4],steps,10);
	BezConic([18.5, 17.5], [17, 18], [15, 19],steps,10);
	BezConic([11.0, 20.5], [9, 21], [7.0, 22.5],steps,10);
	BezConic([7.0, 22.5], [5, 24], [4.0, 26.0],steps,10);
	BezConic([4.0, 26.0], [3, 28], [3, 31],steps,10);
	BezConic([3, 31], [3, 33], [4.0, 35.0],steps,10);
	BezConic([4.0, 35.0], [5, 37], [6.0, 38.5],steps,10);
	BezConic([6.0, 38.5], [7, 40], [9.0, 41.0],steps,10);
	BezConic([9.0, 41.0], [11, 42], [14, 43],steps,10);
	BezConic([22, 43], [26, 43], [28.0, 42.0],steps,10);
	BezConic([20, 26], [23, 25], [25.5, 24.0],steps,10);
	BezConic([25.5, 24.0], [28, 23], [29.5, 21.5],steps,10);
	BezConic([29.5, 21.5], [31, 20], [32.0, 17.5],steps,10);
	BezConic([32.0, 17.5], [33, 15], [33, 13],steps,10);
	BezConic([33, 13], [33, 11], [32.5, 9.0],steps,10);
	BezConic([32.5, 9.0], [32, 7], [31.0, 5.5],steps,10);
	BezConic([31.0, 5.5], [30, 4], [27.5, 2.5],steps,10);
	BezConic([27.5, 2.5], [25, 1], [22, 1],steps,10);
}
}

module UbuntuB_contour00x24(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x24_skeleton();
			UbuntuB_contour00x24_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x24_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x24(steps=2) {
	difference() {
		UbuntuB_contour00x24(steps);
		
	}
}

UbuntuB_bbox0x24=[[2, -7], [33, 50]];

module UbuntuB_letter0x24(detail=2) {
	UbuntuB_chunk10x24(steps=detail);
} //end skeleton

module UbuntuB_contour00x25_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[25, 33], [25, 27], [22.0, 24.0], 
		[19, 21], [14, 21], [8, 21], 
		[5.0, 24.0], [2, 27], [2, 33], 
		[2, 39], [5.0, 42.0], [8, 45], 
		[14, 45], [19, 45], [22.0, 42.0], 
		[25, 39], ]);
}

module UbuntuB_contour00x25_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x25_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([25, 33], [25, 27], [22.0, 24.0],steps,10);
	BezConic([22.0, 24.0], [19, 21], [14, 21],steps,10);
	BezConic([14, 21], [8, 21], [5.0, 24.0],steps,10);
	BezConic([5.0, 24.0], [2, 27], [2, 33],steps,10);
	BezConic([2, 33], [2, 39], [5.0, 42.0],steps,10);
	BezConic([5.0, 42.0], [8, 45], [14, 45],steps,10);
	BezConic([14, 45], [19, 45], [22.0, 42.0],steps,10);
	BezConic([22.0, 42.0], [25, 39], [25, 33],steps,10);
}
}

module UbuntuB_contour00x25(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x25_skeleton();
			UbuntuB_contour00x25_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x25_subtractive_curves(steps);
	}
}

module UbuntuB_contour10x25_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[18, 33], [18, 36], [16.5, 37.5], 
		[15, 39], [14, 39], [12, 39], 
		[10.5, 37.5], [9, 36], [9, 33], 
		[9, 30], [10.5, 28.5], [12, 27], 
		[14, 27], [15, 27], [16.5, 28.5], 
		[18, 30], ]);
}

module UbuntuB_contour10x25_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([18, 33], [18, 36], [16.5, 37.5],steps,10);
	BezConic([16.5, 37.5], [15, 39], [14, 39],steps,10);
	BezConic([14, 39], [12, 39], [10.5, 37.5],steps,10);
	BezConic([10.5, 37.5], [9, 36], [9, 33],steps,10);
	BezConic([9, 33], [9, 30], [10.5, 28.5],steps,10);
	BezConic([10.5, 28.5], [12, 27], [14, 27],steps,10);
	BezConic([14, 27], [15, 27], [16.5, 28.5],steps,10);
	BezConic([16.5, 28.5], [18, 30], [18, 33],steps,10);
}
}

module UbuntuB_contour10x25_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour10x25(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x25_skeleton();
			UbuntuB_contour10x25_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x25_additive_curves(steps);
	}
}

module UbuntuB_contour20x25_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[37, 44], [41.5, 44.0], [46, 44], 
		[33.5, 22.0], [21, 0], [16.5, 0.0], 
		[12, 0],[24.5, 22.0], ]);
}

module UbuntuB_contour20x25_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour20x25_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour20x25(steps=2) {
	difference() {
		union() {
			UbuntuB_contour20x25_skeleton();
			UbuntuB_contour20x25_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour20x25_subtractive_curves(steps);
	}
}

module UbuntuB_contour30x25_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[57, 11], [57, 5], [53.5, 2.0], 
		[50, -1], [45, -1], [40, -1], 
		[37.0, 2.0], [34, 5], [34, 11], 
		[34, 17], [37.0, 20.5], [40, 24], 
		[45, 24], [50, 24], [53.5, 20.5], 
		[57, 17], ]);
}

module UbuntuB_contour30x25_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour30x25_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([57, 11], [57, 5], [53.5, 2.0],steps,10);
	BezConic([53.5, 2.0], [50, -1], [45, -1],steps,10);
	BezConic([45, -1], [40, -1], [37.0, 2.0],steps,10);
	BezConic([37.0, 2.0], [34, 5], [34, 11],steps,10);
	BezConic([34, 11], [34, 17], [37.0, 20.5],steps,10);
	BezConic([37.0, 20.5], [40, 24], [45, 24],steps,10);
	BezConic([45, 24], [50, 24], [53.5, 20.5],steps,10);
	BezConic([53.5, 20.5], [57, 17], [57, 11],steps,10);
}
}

module UbuntuB_contour30x25(steps=2) {
	difference() {
		union() {
			UbuntuB_contour30x25_skeleton();
			UbuntuB_contour30x25_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour30x25_subtractive_curves(steps);
	}
}

module UbuntuB_contour40x25_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[49, 11], [49, 15], [48.0, 16.5], 
		[47, 18], [45, 18], [43, 18], 
		[42.0, 16.5], [41, 15], [41, 11], 
		[41, 8], [42.0, 6.5], [43, 5], 
		[45, 5], [47, 5], [48.0, 6.5], 
		[49, 8], ]);
}

module UbuntuB_contour40x25_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([49, 11], [49, 15], [48.0, 16.5],steps,10);
	BezConic([48.0, 16.5], [47, 18], [45, 18],steps,10);
	BezConic([45, 18], [43, 18], [42.0, 16.5],steps,10);
	BezConic([42.0, 16.5], [41, 15], [41, 11],steps,10);
	BezConic([41, 11], [41, 8], [42.0, 6.5],steps,10);
	BezConic([42.0, 6.5], [43, 5], [45, 5],steps,10);
	BezConic([45, 5], [47, 5], [48.0, 6.5],steps,10);
	BezConic([48.0, 6.5], [49, 8], [49, 11],steps,10);
}
}

module UbuntuB_contour40x25_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour40x25(steps=2) {
	difference() {
		union() {
			UbuntuB_contour40x25_skeleton();
			UbuntuB_contour40x25_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour40x25_additive_curves(steps);
	}
}

module UbuntuB_chunk10x25(steps=2) {
	difference() {
		UbuntuB_contour00x25(steps);
		scale([1,1,1.1]) UbuntuB_contour10x25(steps);
	}
}

module UbuntuB_chunk20x25(steps=2) {
	difference() {
		UbuntuB_contour20x25(steps);
		
	}
}

module UbuntuB_chunk30x25(steps=2) {
	difference() {
		UbuntuB_contour30x25(steps);
		scale([1,1,1.1]) UbuntuB_contour40x25(steps);
	}
}

UbuntuB_bbox0x25=[[2, -1], [57, 45]];

module UbuntuB_letter0x25(detail=2) {
	UbuntuB_chunk10x25(steps=detail);
	UbuntuB_chunk20x25(steps=detail);
	UbuntuB_chunk30x25(steps=detail);
} //end skeleton

module UbuntuB_contour00x26_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[2, 12], [2, 14], [3.0, 16.0], 
		[4, 18], [5.0, 20.0], [6, 22], 
		[7.5, 23.0], [9, 24], [11, 25], 
		[9, 27], [8.0, 29.0], [7, 31], 
		[7, 34], [7, 39], [10.5, 42.0], 
		[14, 45], [20, 45], [23, 45], 
		[25.0, 44.5], [27, 44], [28.5, 42.5], 
		[30, 41], [31.0, 39.0], [32, 37], 
		[32, 35], [32, 31], [29.5, 28.0], 
		[27, 25], [24, 23], [27.5, 19.5], 
		[31, 16], [32, 17], [32.5, 19.0], 
		[33, 21], [33, 23], [37.0, 22.5], 
		[41, 22], [41, 20], [40.5, 19.0], 
		[40, 18], [39.5, 16.5], [39, 15], 
		[38.5, 13.5], [38, 12], [37, 10], 
		[39, 8], [41.0, 5.5], [43, 3], 
		[44, 0], [39.5, 0.0], [35, 0], 
		[34, 1], [33.0, 2.0], [32, 3], 
		[31, 4], [29, 2], [25.5, 0.5], 
		[22, -1], [18, -1], [13, -1], 
		[10.0, 0.5], [7, 2], [5.5, 3.5], 
		[4, 5], [3.0, 7.5], [2, 10], 
		 ]);
}

module UbuntuB_contour00x26_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([31, 16], [32, 17], [32.5, 19.0],steps,10);
	BezConic([32.5, 19.0], [33, 21], [33, 23],steps,10);
	BezConic([40.5, 19.0], [40, 18], [39.5, 16.5],steps,10);
	BezConic([39.5, 16.5], [39, 15], [38.5, 13.5],steps,10);
	BezConic([35, 0], [34, 1], [33.0, 2.0],steps,10);
	BezConic([33.0, 2.0], [32, 3], [31, 4],steps,10);
}
}

module UbuntuB_contour00x26_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([2, 12], [2, 14], [3.0, 16.0],steps,10);
	BezConic([3.0, 16.0], [4, 18], [5.0, 20.0],steps,10);
	BezConic([5.0, 20.0], [6, 22], [7.5, 23.0],steps,10);
	BezConic([7.5, 23.0], [9, 24], [11, 25],steps,10);
	BezConic([11, 25], [9, 27], [8.0, 29.0],steps,10);
	BezConic([8.0, 29.0], [7, 31], [7, 34],steps,10);
	BezConic([7, 34], [7, 39], [10.5, 42.0],steps,10);
	BezConic([10.5, 42.0], [14, 45], [20, 45],steps,10);
	BezConic([20, 45], [23, 45], [25.0, 44.5],steps,10);
	BezConic([25.0, 44.5], [27, 44], [28.5, 42.5],steps,10);
	BezConic([28.5, 42.5], [30, 41], [31.0, 39.0],steps,10);
	BezConic([31.0, 39.0], [32, 37], [32, 35],steps,10);
	BezConic([32, 35], [32, 31], [29.5, 28.0],steps,10);
	BezConic([29.5, 28.0], [27, 25], [24, 23],steps,10);
	BezConic([41, 22], [41, 20], [40.5, 19.0],steps,10);
	BezConic([38.5, 13.5], [38, 12], [37, 10],steps,10);
	BezConic([37, 10], [39, 8], [41.0, 5.5],steps,10);
	BezConic([41.0, 5.5], [43, 3], [44, 0],steps,10);
	BezConic([31, 4], [29, 2], [25.5, 0.5],steps,10);
	BezConic([25.5, 0.5], [22, -1], [18, -1],steps,10);
	BezConic([18, -1], [13, -1], [10.0, 0.5],steps,10);
	BezConic([10.0, 0.5], [7, 2], [5.5, 3.5],steps,10);
	BezConic([5.5, 3.5], [4, 5], [3.0, 7.5],steps,10);
	BezConic([3.0, 7.5], [2, 10], [2, 12],steps,10);
}
}

module UbuntuB_contour00x26(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x26_skeleton();
			UbuntuB_contour00x26_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x26_subtractive_curves(steps);
	}
}

module UbuntuB_contour10x26_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[11, 13], [11, 12], [11.5, 11.0], 
		[12, 10], [13.0, 9.0], [14, 8], 
		[15.0, 7.5], [16, 7], [18, 7], 
		[21, 7], [23.0, 7.5], [25, 8], 
		[26, 9], [21.0, 14.5], [16, 20], 
		[15, 19], [14.0, 18.5], [13, 18], 
		[12.5, 17.0], [12, 16], [11.5, 15.0], 
		[11, 14], ]);
}

module UbuntuB_contour10x26_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([11, 13], [11, 12], [11.5, 11.0],steps,10);
	BezConic([11.5, 11.0], [12, 10], [13.0, 9.0],steps,10);
	BezConic([13.0, 9.0], [14, 8], [15.0, 7.5],steps,10);
	BezConic([15.0, 7.5], [16, 7], [18, 7],steps,10);
	BezConic([18, 7], [21, 7], [23.0, 7.5],steps,10);
	BezConic([23.0, 7.5], [25, 8], [26, 9],steps,10);
	BezConic([14.0, 18.5], [13, 18], [12.5, 17.0],steps,10);
	BezConic([12.5, 17.0], [12, 16], [11.5, 15.0],steps,10);
	BezConic([11.5, 15.0], [11, 14], [11, 13],steps,10);
}
}

module UbuntuB_contour10x26_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([16, 20], [15, 19], [14.0, 18.5],steps,10);
}
}

module UbuntuB_contour10x26(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x26_skeleton();
			UbuntuB_contour10x26_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x26_additive_curves(steps);
	}
}

module UbuntuB_contour20x26_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[24, 35], [24, 36], [23.0, 37.5], 
		[22, 39], [19, 39], [17, 39], 
		[16.0, 37.5], [15, 36], [15, 34], 
		[15, 32], [16.0, 30.5], [17, 29], 
		[19, 28], [21, 29], [22.5, 30.5], 
		[24, 32], ]);
}

module UbuntuB_contour20x26_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([24, 35], [24, 36], [23.0, 37.5],steps,10);
	BezConic([23.0, 37.5], [22, 39], [19, 39],steps,10);
	BezConic([19, 39], [17, 39], [16.0, 37.5],steps,10);
	BezConic([16.0, 37.5], [15, 36], [15, 34],steps,10);
	BezConic([15, 34], [15, 32], [16.0, 30.5],steps,10);
	BezConic([16.0, 30.5], [17, 29], [19, 28],steps,10);
	BezConic([19, 28], [21, 29], [22.5, 30.5],steps,10);
	BezConic([22.5, 30.5], [24, 32], [24, 35],steps,10);
}
}

module UbuntuB_contour20x26_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour20x26(steps=2) {
	difference() {
		union() {
			UbuntuB_contour20x26_skeleton();
			UbuntuB_contour20x26_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour20x26_additive_curves(steps);
	}
}

module UbuntuB_chunk10x26(steps=2) {
	difference() {
		UbuntuB_contour00x26(steps);
		scale([1,1,1.1]) UbuntuB_contour10x26(steps);
	scale([1,1,1.1]) UbuntuB_contour20x26(steps);
	}
}

UbuntuB_bbox0x26=[[2, -1], [44, 45]];

module UbuntuB_letter0x26(detail=2) {
	UbuntuB_chunk10x26(steps=detail);
} //end skeleton

module UbuntuB_contour00x27_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[13, 49], [13.0, 46.5], [13, 44], 
		[13, 41], [12.5, 37.5], [12, 34], 
		[11, 30], [8.0, 30.0], [5, 30], 
		[4, 34], [3.5, 37.5], [3, 41], 
		[3, 44], [3.0, 46.5], [3, 49], 
		[8.0, 49.0], ]);
}

module UbuntuB_contour00x27_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x27_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([13, 44], [13, 41], [12.5, 37.5],steps,10);
	BezConic([12.5, 37.5], [12, 34], [11, 30],steps,10);
	BezConic([5, 30], [4, 34], [3.5, 37.5],steps,10);
	BezConic([3.5, 37.5], [3, 41], [3, 44],steps,10);
}
}

module UbuntuB_contour00x27(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x27_skeleton();
			UbuntuB_contour00x27_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x27_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x27(steps=2) {
	difference() {
		UbuntuB_contour00x27(steps);
		
	}
}

UbuntuB_bbox0x27=[[3, 30], [13, 49]];

module UbuntuB_letter0x27(detail=2) {
	UbuntuB_chunk10x27(steps=detail);
} //end skeleton

module UbuntuB_contour00x28_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[14, 19], [14, 12], [16.5, 5.0], 
		[19, -2], [22, -8], [19.0, -10.0], 
		[16, -12], [10, -6], [7.0, 2.0], 
		[4, 10], [4, 19], [4, 28], 
		[7.0, 36.0], [10, 44], [16, 50], 
		[19.0, 48.0], [22, 46], [19, 40], 
		[16.5, 33.5],[14, 27], ]);
}

module UbuntuB_contour00x28_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 19], [14, 12], [16.5, 5.0],steps,10);
	BezConic([16.5, 5.0], [19, -2], [22, -8],steps,10);
	BezConic([22, 46], [19, 40], [16.5, 33.5],steps,10);
	BezConic([16.5, 33.5], [14, 27], [14, 19],steps,10);
}
}

module UbuntuB_contour00x28_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([16, -12], [10, -6], [7.0, 2.0],steps,10);
	BezConic([7.0, 2.0], [4, 10], [4, 19],steps,10);
	BezConic([4, 19], [4, 28], [7.0, 36.0],steps,10);
	BezConic([7.0, 36.0], [10, 44], [16, 50],steps,10);
}
}

module UbuntuB_contour00x28(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x28_skeleton();
			UbuntuB_contour00x28_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x28_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x28(steps=2) {
	difference() {
		UbuntuB_contour00x28(steps);
		
	}
}

UbuntuB_bbox0x28=[[4, -12], [22, 50]];

module UbuntuB_letter0x28(detail=2) {
	UbuntuB_chunk10x28(steps=detail);
} //end skeleton

module UbuntuB_contour00x29_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[9, 19], [9, 27], [6.5, 33.5], 
		[4, 40], [0, 46], [3.5, 48.0], 
		[7, 50], [12, 44], [15.0, 36.0], 
		[18, 28], [18, 19], [18, 10], 
		[15.0, 2.0], [12, -6], [7, -12], 
		[3.5, -10.0], [0, -8], [4, -2], 
		[6.5, 5.0],[9, 12], ]);
}

module UbuntuB_contour00x29_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([9, 19], [9, 27], [6.5, 33.5],steps,10);
	BezConic([6.5, 33.5], [4, 40], [0, 46],steps,10);
	BezConic([0, -8], [4, -2], [6.5, 5.0],steps,10);
	BezConic([6.5, 5.0], [9, 12], [9, 19],steps,10);
}
}

module UbuntuB_contour00x29_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([7, 50], [12, 44], [15.0, 36.0],steps,10);
	BezConic([15.0, 36.0], [18, 28], [18, 19],steps,10);
	BezConic([18, 19], [18, 10], [15.0, 2.0],steps,10);
	BezConic([15.0, 2.0], [12, -6], [7, -12],steps,10);
}
}

module UbuntuB_contour00x29(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x29_skeleton();
			UbuntuB_contour00x29_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x29_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x29(steps=2) {
	difference() {
		UbuntuB_contour00x29(steps);
		
	}
}

UbuntuB_bbox0x29=[[0, -12], [18, 50]];

module UbuntuB_letter0x29(detail=2) {
	UbuntuB_chunk10x29(steps=detail);
} //end skeleton

module UbuntuB_contour00x2a_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[18, 34], [19, 35], [20.0, 35.5], 
		[21, 36], [22.0, 37.0], [23, 38], 
		[24.0, 38.5], [25, 39], [25, 39], 
		[26.0, 39.0], [27, 39], [28.5, 35.0], 
		[30, 31], [29.0, 31.0], [28, 31], 
		[27, 31], [26.0, 30.5], [25, 30], 
		[24.0, 30.0], [23, 30], [21.5, 30.0], 
		[20, 30], [19, 30], [20, 30], 
		[21.0, 29.5], [22, 29], [23.0, 28.0], 
		[24, 27], [25.0, 26.5], [26, 26], 
		[26, 25], [26.5, 24.0], [27, 23], 
		[23.5, 21.0], [20, 19], [19.5, 19.5], 
		[19, 20], [19, 21], [18.5, 22.0], 
		[18, 23], [17.5, 24.0], [17, 25], 
		[16.5, 26.0], [16, 27], [16, 28], 
		[16, 27], [15.5, 26.0], [15, 25], 
		[14.5, 24.0], [14, 23], [13.5, 22.0], 
		[13, 21], [13, 20], [12.5, 19.5], 
		[12, 19], [8.5, 21.0], [5, 23], 
		[5.5, 24.0], [6, 25], [7, 26], 
		[7.5, 26.5], [8, 27], [9.0, 28.0], 
		[10, 29], [11.0, 29.5], [12, 30], 
		[13, 30], [12, 30], [11.0, 30.0], 
		[10, 30], [8.5, 30.0], [7, 30], 
		[6.0, 30.5], [5, 31], [4, 31], 
		[3.5, 31.0], [3, 31], [4.0, 35.0], 
		[5, 39], [6.0, 39.0], [7, 39], 
		[7, 39], [8.0, 38.5], [9, 38], 
		[10.0, 37.0], [11, 36], [12.0, 35.5], 
		[13, 35], [14, 34], [14, 35], 
		[13.5, 36.0], [13, 37], [12.5, 38.5], 
		[12, 40], [12.0, 41.0], [12, 42], 
		[12, 43], [12.0, 43.5], [12, 44], 
		[16.0, 44.0], [20, 44], [20.0, 43.5], 
		[20, 43], [20, 42], [20.0, 41.0], 
		[20, 40], [19.5, 38.5], [19, 37], 
		[18.5, 36.0],[18, 35], ]);
}

module UbuntuB_contour00x2a_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([20.0, 35.5], [21, 36], [22.0, 37.0],steps,10);
	BezConic([24.0, 38.5], [25, 39], [25, 39],steps,10);
	BezConic([28, 31], [27, 31], [26.0, 30.5],steps,10);
	BezConic([24.0, 30.0], [23, 30], [21.5, 30.0],steps,10);
	BezConic([21.5, 30.0], [20, 30], [19, 30],steps,10);
	BezConic([23.0, 28.0], [24, 27], [25.0, 26.5],steps,10);
	BezConic([19, 20], [19, 21], [18.5, 22.0],steps,10);
	BezConic([18.5, 22.0], [18, 23], [17.5, 24.0],steps,10);
	BezConic([17.5, 24.0], [17, 25], [16.5, 26.0],steps,10);
	BezConic([15.5, 26.0], [15, 25], [14.5, 24.0],steps,10);
	BezConic([14.5, 24.0], [14, 23], [13.5, 22.0],steps,10);
	BezConic([13.5, 22.0], [13, 21], [13, 20],steps,10);
	BezConic([13, 30], [12, 30], [11.0, 30.0],steps,10);
	BezConic([11.0, 30.0], [10, 30], [8.5, 30.0],steps,10);
	BezConic([6.0, 30.5], [5, 31], [4, 31],steps,10);
	BezConic([10.0, 37.0], [11, 36], [12.0, 35.5],steps,10);
	BezConic([14, 34], [14, 35], [13.5, 36.0],steps,10);
	BezConic([12.0, 41.0], [12, 42], [12, 43],steps,10);
	BezConic([20, 43], [20, 42], [20.0, 41.0],steps,10);
	BezConic([18.5, 36.0], [18, 35], [18, 34],steps,10);
}
}

module UbuntuB_contour00x2a_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([18, 34], [19, 35], [20.0, 35.5],steps,10);
	BezConic([22.0, 37.0], [23, 38], [24.0, 38.5],steps,10);
	BezConic([26.0, 30.5], [25, 30], [24.0, 30.0],steps,10);
	BezConic([19, 30], [20, 30], [21.0, 29.5],steps,10);
	BezConic([21.0, 29.5], [22, 29], [23.0, 28.0],steps,10);
	BezConic([25.0, 26.5], [26, 26], [26, 25],steps,10);
	BezConic([16.5, 26.0], [16, 27], [16, 28],steps,10);
	BezConic([16, 28], [16, 27], [15.5, 26.0],steps,10);
	BezConic([6, 25], [7, 26], [7.5, 26.5],steps,10);
	BezConic([7.5, 26.5], [8, 27], [9.0, 28.0],steps,10);
	BezConic([9.0, 28.0], [10, 29], [11.0, 29.5],steps,10);
	BezConic([11.0, 29.5], [12, 30], [13, 30],steps,10);
	BezConic([8.5, 30.0], [7, 30], [6.0, 30.5],steps,10);
	BezConic([7, 39], [7, 39], [8.0, 38.5],steps,10);
	BezConic([8.0, 38.5], [9, 38], [10.0, 37.0],steps,10);
	BezConic([12.0, 35.5], [13, 35], [14, 34],steps,10);
	BezConic([13.5, 36.0], [13, 37], [12.5, 38.5],steps,10);
	BezConic([12.5, 38.5], [12, 40], [12.0, 41.0],steps,10);
	BezConic([20.0, 41.0], [20, 40], [19.5, 38.5],steps,10);
	BezConic([19.5, 38.5], [19, 37], [18.5, 36.0],steps,10);
}
}

module UbuntuB_contour00x2a(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x2a_skeleton();
			UbuntuB_contour00x2a_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x2a_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x2a(steps=2) {
	difference() {
		UbuntuB_contour00x2a(steps);
		
	}
}

UbuntuB_bbox0x2a=[[3, 19], [30, 44]];

module UbuntuB_letter0x2a(detail=2) {
	UbuntuB_chunk10x2a(steps=detail);
} //end skeleton

module UbuntuB_contour00x2b_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[3, 23], [8.5, 23.0], [14, 23], 
		[14.0, 29.0], [14, 35], [18.5, 35.0], 
		[23, 35], [23.0, 29.0], [23, 23], 
		[28.0, 23.0], [33, 23], [33.0, 19.0], 
		[33, 15], [28.0, 15.0], [23, 15], 
		[23.0, 9.0], [23, 3], [18.5, 3.0], 
		[14, 3], [14.0, 9.0], [14, 15], 
		[8.5, 15.0], [3, 15], [3.0, 19.0], 
		 ]);
}

module UbuntuB_contour00x2b_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x2b_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x2b(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x2b_skeleton();
			UbuntuB_contour00x2b_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x2b_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x2b(steps=2) {
	difference() {
		UbuntuB_contour00x2b(steps);
		
	}
}

UbuntuB_bbox0x2b=[[3, 3], [33, 35]];

module UbuntuB_letter0x2b(detail=2) {
	UbuntuB_chunk10x2b(steps=detail);
} //end skeleton

module UbuntuB_contour00x2c_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[14, 10], [14, 8], [14.0, 7.5], 
		[14, 7], [14, 6], [14, 5], 
		[13.5, 2.5], [13, 0], [12.5, -2.0], 
		[12, -4], [11.0, -6.0], [10, -8], 
		[9, -10], [5.0, -9.5], [1, -9], 
		[3, -4], [3.5, -0.5], [4, 3], 
		[4, 6], [4, 6], [4.0, 6.5], 
		[4, 7], [4.0, 7.5], [4, 8], 
		[4.0, 9.0], [4, 10], [4, 10], 
		[9.0, 10.0], ]);
}

module UbuntuB_contour00x2c_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 10], [14, 8], [14.0, 7.5],steps,10);
	BezConic([14.0, 7.5], [14, 7], [14, 6],steps,10);
	BezConic([11.0, -6.0], [10, -8], [9, -10],steps,10);
	BezConic([1, -9], [3, -4], [3.5, -0.5],steps,10);
	BezConic([3.5, -0.5], [4, 3], [4, 6],steps,10);
	BezConic([4, 6], [4, 6], [4.0, 6.5],steps,10);
	BezConic([4.0, 6.5], [4, 7], [4.0, 7.5],steps,10);
	BezConic([4.0, 7.5], [4, 8], [4.0, 9.0],steps,10);
	BezConic([4.0, 9.0], [4, 10], [4, 10],steps,10);
}
}

module UbuntuB_contour00x2c_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 6], [14, 5], [13.5, 2.5],steps,10);
	BezConic([13.5, 2.5], [13, 0], [12.5, -2.0],steps,10);
	BezConic([12.5, -2.0], [12, -4], [11.0, -6.0],steps,10);
}
}

module UbuntuB_contour00x2c(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x2c_skeleton();
			UbuntuB_contour00x2c_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x2c_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x2c(steps=2) {
	difference() {
		UbuntuB_contour00x2c(steps);
		
	}
}

UbuntuB_bbox0x2c=[[1, -10], [14, 10]];

module UbuntuB_letter0x2c(detail=2) {
	UbuntuB_chunk10x2c(steps=detail);
} //end skeleton

module UbuntuB_contour00x2d_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[2, 23], [11.0, 23.0], [20, 23], 
		[20.0, 19.0], [20, 15], [11.0, 15.0], 
		[2, 15],[2.0, 19.0], ]);
}

module UbuntuB_contour00x2d_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x2d_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x2d(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x2d_skeleton();
			UbuntuB_contour00x2d_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x2d_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x2d(steps=2) {
	difference() {
		UbuntuB_contour00x2d(steps);
		
	}
}

UbuntuB_bbox0x2d=[[2, 15], [20, 23]];

module UbuntuB_letter0x2d(detail=2) {
	UbuntuB_chunk10x2d(steps=detail);
} //end skeleton

module UbuntuB_contour00x2e_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[14, 5], [14, 2], [12.0, 0.5], 
		[10, -1], [8, -1], [6, -1], 
		[4.0, 0.5], [2, 2], [2, 5], 
		[2, 8], [4.0, 9.5], [6, 11], 
		[8, 11], [10, 11], [12.0, 9.5], 
		[14, 8], ]);
}

module UbuntuB_contour00x2e_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x2e_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 5], [14, 2], [12.0, 0.5],steps,10);
	BezConic([12.0, 0.5], [10, -1], [8, -1],steps,10);
	BezConic([8, -1], [6, -1], [4.0, 0.5],steps,10);
	BezConic([4.0, 0.5], [2, 2], [2, 5],steps,10);
	BezConic([2, 5], [2, 8], [4.0, 9.5],steps,10);
	BezConic([4.0, 9.5], [6, 11], [8, 11],steps,10);
	BezConic([8, 11], [10, 11], [12.0, 9.5],steps,10);
	BezConic([12.0, 9.5], [14, 8], [14, 5],steps,10);
}
}

module UbuntuB_contour00x2e(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x2e_skeleton();
			UbuntuB_contour00x2e_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x2e_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x2e(steps=2) {
	difference() {
		UbuntuB_contour00x2e(steps);
		
	}
}

UbuntuB_bbox0x2e=[[2, -1], [14, 11]];

module UbuntuB_letter0x2e(detail=2) {
	UbuntuB_chunk10x2e(steps=detail);
} //end skeleton

module UbuntuB_contour00x2f_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[8, -12], [3.0, -12.0], [-2, -12], 
		[9.0, 19.0], [20, 50], [25.0, 50.0], 
		[30, 50],[19.0, 19.0], ]);
}

module UbuntuB_contour00x2f_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x2f_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x2f(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x2f_skeleton();
			UbuntuB_contour00x2f_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x2f_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x2f(steps=2) {
	difference() {
		UbuntuB_contour00x2f(steps);
		
	}
}

UbuntuB_bbox0x2f=[[-2, -12], [30, 50]];

module UbuntuB_letter0x2f(detail=2) {
	UbuntuB_chunk10x2f(steps=detail);
} //end skeleton

module UbuntuB_contour00x30_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[34, 22], [34, 11], [30.0, 5.0], 
		[26, -1], [18, -1], [11, -1], 
		[6.5, 5.0], [2, 11], [2, 22], 
		[2, 28], [3.0, 32.0], [4, 36], 
		[6.5, 39.0], [9, 42], [12.0, 43.5], 
		[15, 45], [18, 45], [26, 45], 
		[30.0, 39.0],[34, 33], ]);
}

module UbuntuB_contour00x30_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x30_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([34, 22], [34, 11], [30.0, 5.0],steps,10);
	BezConic([30.0, 5.0], [26, -1], [18, -1],steps,10);
	BezConic([18, -1], [11, -1], [6.5, 5.0],steps,10);
	BezConic([6.5, 5.0], [2, 11], [2, 22],steps,10);
	BezConic([2, 22], [2, 28], [3.0, 32.0],steps,10);
	BezConic([3.0, 32.0], [4, 36], [6.5, 39.0],steps,10);
	BezConic([6.5, 39.0], [9, 42], [12.0, 43.5],steps,10);
	BezConic([12.0, 43.5], [15, 45], [18, 45],steps,10);
	BezConic([18, 45], [26, 45], [30.0, 39.0],steps,10);
	BezConic([30.0, 39.0], [34, 33], [34, 22],steps,10);
}
}

module UbuntuB_contour00x30(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x30_skeleton();
			UbuntuB_contour00x30_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x30_subtractive_curves(steps);
	}
}

module UbuntuB_contour10x30_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[24, 22], [24, 26], [24.0, 28.5], 
		[24, 31], [23.0, 33.0], [22, 35], 
		[21.0, 36.0], [20, 37], [18, 37], 
		[16, 37], [15.0, 36.0], [14, 35], 
		[13.5, 33.0], [13, 31], [12.5, 28.5], 
		[12, 26], [12, 22], [12, 19], 
		[12.5, 16.0], [13, 13], [13.5, 11.0], 
		[14, 9], [15.0, 8.0], [16, 7], 
		[18, 7], [20, 7], [21.0, 8.0], 
		[22, 9], [23.0, 11.0], [24, 13], 
		[24.0, 16.0],[24, 19], ]);
}

module UbuntuB_contour10x30_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([24, 22], [24, 26], [24.0, 28.5],steps,10);
	BezConic([24.0, 28.5], [24, 31], [23.0, 33.0],steps,10);
	BezConic([23.0, 33.0], [22, 35], [21.0, 36.0],steps,10);
	BezConic([21.0, 36.0], [20, 37], [18, 37],steps,10);
	BezConic([18, 37], [16, 37], [15.0, 36.0],steps,10);
	BezConic([15.0, 36.0], [14, 35], [13.5, 33.0],steps,10);
	BezConic([13.5, 33.0], [13, 31], [12.5, 28.5],steps,10);
	BezConic([12.5, 28.5], [12, 26], [12, 22],steps,10);
	BezConic([12, 22], [12, 19], [12.5, 16.0],steps,10);
	BezConic([12.5, 16.0], [13, 13], [13.5, 11.0],steps,10);
	BezConic([13.5, 11.0], [14, 9], [15.0, 8.0],steps,10);
	BezConic([15.0, 8.0], [16, 7], [18, 7],steps,10);
	BezConic([18, 7], [20, 7], [21.0, 8.0],steps,10);
	BezConic([21.0, 8.0], [22, 9], [23.0, 11.0],steps,10);
	BezConic([23.0, 11.0], [24, 13], [24.0, 16.0],steps,10);
	BezConic([24.0, 16.0], [24, 19], [24, 22],steps,10);
}
}

module UbuntuB_contour10x30_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour10x30(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x30_skeleton();
			UbuntuB_contour10x30_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x30_additive_curves(steps);
	}
}

module UbuntuB_chunk10x30(steps=2) {
	difference() {
		UbuntuB_contour00x30(steps);
		scale([1,1,1.1]) UbuntuB_contour10x30(steps);
	}
}

UbuntuB_bbox0x30=[[2, -1], [34, 45]];

module UbuntuB_letter0x30(detail=2) {
	UbuntuB_chunk10x30(steps=detail);
} //end skeleton

module UbuntuB_contour00x31_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[4, 35], [6, 36], [8.0, 37.0], 
		[10, 38], [12.0, 39.0], [14, 40], 
		[16.0, 41.5], [18, 43], [19, 44], 
		[22.5, 44.0], [26, 44], [26.0, 22.0], 
		[26, 0], [21.0, 0.0], [16, 0], 
		[16.0, 16.0], [16, 32], [14, 31], 
		[12.0, 30.0], [10, 29], [7, 28], 
		[5.5, 31.5], ]);
}

module UbuntuB_contour00x31_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([12.0, 39.0], [14, 40], [16.0, 41.5],steps,10);
	BezConic([16.0, 41.5], [18, 43], [19, 44],steps,10);
	BezConic([16, 32], [14, 31], [12.0, 30.0],steps,10);
}
}

module UbuntuB_contour00x31_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([4, 35], [6, 36], [8.0, 37.0],steps,10);
	BezConic([8.0, 37.0], [10, 38], [12.0, 39.0],steps,10);
	BezConic([12.0, 30.0], [10, 29], [7, 28],steps,10);
}
}

module UbuntuB_contour00x31(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x31_skeleton();
			UbuntuB_contour00x31_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x31_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x31(steps=2) {
	difference() {
		UbuntuB_contour00x31(steps);
		
	}
}

UbuntuB_bbox0x31=[[4, 0], [26, 44]];

module UbuntuB_letter0x31(detail=2) {
	UbuntuB_chunk10x31(steps=detail);
} //end skeleton

module UbuntuB_contour00x32_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[32, 33], [32, 30], [31.0, 28.0], 
		[30, 26], [28.5, 24.0], [27, 22], 
		[25.0, 20.0], [23, 18], [21, 16], 
		[20, 15], [19.0, 14.0], [18, 13], 
		[17.0, 12.0], [16, 11], [15.0, 10.0], 
		[14, 9], [14, 8], [23.5, 8.0], 
		[33, 8], [33.0, 4.0], [33, 0], 
		[18.5, 0.0], [4, 0], [3, 1], 
		[3.0, 2.0], [3, 3], [3, 3], 
		[3, 6], [4.0, 9.0], [5, 12], 
		[7.0, 14.0], [9, 16], [11.0, 18.0], 
		[13, 20], [15, 22], [16, 23], 
		[17.5, 24.5], [19, 26], [20.0, 27.0], 
		[21, 28], [21.5, 29.5], [22, 31], 
		[22, 32], [22, 35], [20.5, 36.0], 
		[19, 37], [16, 37], [15, 37], 
		[13.5, 36.5], [12, 36], [10.5, 35.5], 
		[9, 35], [8.0, 34.0], [7, 33], 
		[7, 33], [4.5, 36.0], [2, 39], 
		[5, 42], [9.0, 43.5], [13, 45], 
		[17, 45], [21, 45], [23.5, 44.5], 
		[26, 44], [28.0, 42.0], [30, 40], 
		[31.0, 38.0],[32, 36], ]);
}

module UbuntuB_contour00x32_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([25.0, 20.0], [23, 18], [21, 16],steps,10);
	BezConic([21, 16], [20, 15], [19.0, 14.0],steps,10);
	BezConic([19.0, 14.0], [18, 13], [17.0, 12.0],steps,10);
	BezConic([15.0, 10.0], [14, 9], [14, 8],steps,10);
	BezConic([3.0, 2.0], [3, 3], [3, 3],steps,10);
	BezConic([7.0, 14.0], [9, 16], [11.0, 18.0],steps,10);
	BezConic([11.0, 18.0], [13, 20], [15, 22],steps,10);
	BezConic([15, 22], [16, 23], [17.5, 24.5],steps,10);
	BezConic([20.0, 27.0], [21, 28], [21.5, 29.5],steps,10);
	BezConic([21.5, 29.5], [22, 31], [22, 32],steps,10);
	BezConic([22, 32], [22, 35], [20.5, 36.0],steps,10);
	BezConic([20.5, 36.0], [19, 37], [16, 37],steps,10);
	BezConic([16, 37], [15, 37], [13.5, 36.5],steps,10);
	BezConic([13.5, 36.5], [12, 36], [10.5, 35.5],steps,10);
	BezConic([10.5, 35.5], [9, 35], [8.0, 34.0],steps,10);
	BezConic([8.0, 34.0], [7, 33], [7, 33],steps,10);
}
}

module UbuntuB_contour00x32_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([32, 33], [32, 30], [31.0, 28.0],steps,10);
	BezConic([31.0, 28.0], [30, 26], [28.5, 24.0],steps,10);
	BezConic([28.5, 24.0], [27, 22], [25.0, 20.0],steps,10);
	BezConic([17.0, 12.0], [16, 11], [15.0, 10.0],steps,10);
	BezConic([4, 0], [3, 1], [3.0, 2.0],steps,10);
	BezConic([3, 3], [3, 6], [4.0, 9.0],steps,10);
	BezConic([4.0, 9.0], [5, 12], [7.0, 14.0],steps,10);
	BezConic([17.5, 24.5], [19, 26], [20.0, 27.0],steps,10);
	BezConic([2, 39], [5, 42], [9.0, 43.5],steps,10);
	BezConic([9.0, 43.5], [13, 45], [17, 45],steps,10);
	BezConic([17, 45], [21, 45], [23.5, 44.5],steps,10);
	BezConic([23.5, 44.5], [26, 44], [28.0, 42.0],steps,10);
	BezConic([28.0, 42.0], [30, 40], [31.0, 38.0],steps,10);
	BezConic([31.0, 38.0], [32, 36], [32, 33],steps,10);
}
}

module UbuntuB_contour00x32(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x32_skeleton();
			UbuntuB_contour00x32_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x32_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x32(steps=2) {
	difference() {
		UbuntuB_contour00x32(steps);
		
	}
}

UbuntuB_bbox0x32=[[2, 0], [33, 45]];

module UbuntuB_letter0x32(detail=2) {
	UbuntuB_chunk10x32(steps=detail);
} //end skeleton

module UbuntuB_contour00x33_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[15, -1], [13, -1], [11.0, -1.0], 
		[9, -1], [7.0, -0.5], [5, 0], 
		[3.5, 0.5], [2, 1], [2, 2], 
		[3.0, 5.5], [4, 9], [5, 9], 
		[7.5, 8.0], [10, 7], [14, 7], 
		[19, 7], [21.0, 8.5], [23, 10], 
		[23, 13], [23, 15], [22.0, 16.0], 
		[21, 17], [20.0, 18.0], [19, 19], 
		[17.0, 19.0], [15, 19], [13, 19], 
		[11.0, 19.0], [9, 19], [9.0, 23.0], 
		[9, 27], [11.5, 27.0], [14, 27], 
		[15, 27], [16.5, 27.5], [18, 28], 
		[19.0, 28.5], [20, 29], [20.5, 30.0], 
		[21, 31], [21, 33], [21, 34], 
		[20.5, 35.0], [20, 36], [19.0, 36.5], 
		[18, 37], [17.0, 37.0], [16, 37], 
		[15, 37], [12, 37], [10.0, 36.5], 
		[8, 36], [6, 34], [4.0, 37.5], 
		[2, 41], [3, 42], [4.5, 42.5], 
		[6, 43], [8.0, 44.0], [10, 45], 
		[11.5, 45.0], [13, 45], [15, 45], 
		[19, 45], [22.0, 44.5], [25, 44], 
		[27.0, 42.0], [29, 40], [30.0, 38.0], 
		[31, 36], [31, 33], [31, 30], 
		[29.5, 27.5], [28, 25], [25, 24], 
		[29, 23], [30.5, 20.0], [32, 17], 
		[32, 13], [32, 10], [31.0, 7.5], 
		[30, 5], [28.0, 3.0], [26, 1], 
		[22.5, 0.0],[19, -1], ]);
}

module UbuntuB_contour00x33_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([15, -1], [13, -1], [11.0, -1.0],steps,10);
	BezConic([7.5, 8.0], [10, 7], [14, 7],steps,10);
	BezConic([14, 7], [19, 7], [21.0, 8.5],steps,10);
	BezConic([21.0, 8.5], [23, 10], [23, 13],steps,10);
	BezConic([23, 13], [23, 15], [22.0, 16.0],steps,10);
	BezConic([22.0, 16.0], [21, 17], [20.0, 18.0],steps,10);
	BezConic([20.0, 18.0], [19, 19], [17.0, 19.0],steps,10);
	BezConic([17.0, 19.0], [15, 19], [13, 19],steps,10);
	BezConic([14, 27], [15, 27], [16.5, 27.5],steps,10);
	BezConic([16.5, 27.5], [18, 28], [19.0, 28.5],steps,10);
	BezConic([19.0, 28.5], [20, 29], [20.5, 30.0],steps,10);
	BezConic([20.5, 30.0], [21, 31], [21, 33],steps,10);
	BezConic([21, 33], [21, 34], [20.5, 35.0],steps,10);
	BezConic([20.5, 35.0], [20, 36], [19.0, 36.5],steps,10);
	BezConic([19.0, 36.5], [18, 37], [17.0, 37.0],steps,10);
	BezConic([17.0, 37.0], [16, 37], [15, 37],steps,10);
	BezConic([15, 37], [12, 37], [10.0, 36.5],steps,10);
	BezConic([10.0, 36.5], [8, 36], [6, 34],steps,10);
	BezConic([4.5, 42.5], [6, 43], [8.0, 44.0],steps,10);
	BezConic([11.5, 45.0], [13, 45], [15, 45],steps,10);
}
}

module UbuntuB_contour00x33_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([11.0, -1.0], [9, -1], [7.0, -0.5],steps,10);
	BezConic([7.0, -0.5], [5, 0], [3.5, 0.5],steps,10);
	BezConic([3.5, 0.5], [2, 1], [2, 2],steps,10);
	BezConic([4, 9], [5, 9], [7.5, 8.0],steps,10);
	BezConic([2, 41], [3, 42], [4.5, 42.5],steps,10);
	BezConic([8.0, 44.0], [10, 45], [11.5, 45.0],steps,10);
	BezConic([15, 45], [19, 45], [22.0, 44.5],steps,10);
	BezConic([22.0, 44.5], [25, 44], [27.0, 42.0],steps,10);
	BezConic([27.0, 42.0], [29, 40], [30.0, 38.0],steps,10);
	BezConic([30.0, 38.0], [31, 36], [31, 33],steps,10);
	BezConic([31, 33], [31, 30], [29.5, 27.5],steps,10);
	BezConic([29.5, 27.5], [28, 25], [25, 24],steps,10);
	BezConic([25, 24], [29, 23], [30.5, 20.0],steps,10);
	BezConic([30.5, 20.0], [32, 17], [32, 13],steps,10);
	BezConic([32, 13], [32, 10], [31.0, 7.5],steps,10);
	BezConic([31.0, 7.5], [30, 5], [28.0, 3.0],steps,10);
	BezConic([28.0, 3.0], [26, 1], [22.5, 0.0],steps,10);
	BezConic([22.5, 0.0], [19, -1], [15, -1],steps,10);
}
}

module UbuntuB_contour00x33(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x33_skeleton();
			UbuntuB_contour00x33_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x33_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x33(steps=2) {
	difference() {
		UbuntuB_contour00x33(steps);
		
	}
}

UbuntuB_bbox0x33=[[2, -1], [32, 45]];

module UbuntuB_letter0x33(detail=2) {
	UbuntuB_chunk10x33(steps=detail);
} //end skeleton

module UbuntuB_contour00x34_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[20, 33], [18, 29], [15.0, 25.5], 
		[12, 22], [10, 18], [15.0, 18.0], 
		[20, 18],[20.0, 25.5], ]);
}

module UbuntuB_contour00x34_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([15.0, 25.5], [12, 22], [10, 18],steps,10);
}
}

module UbuntuB_contour00x34_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([20, 33], [18, 29], [15.0, 25.5],steps,10);
}
}

module UbuntuB_contour00x34(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x34_skeleton();
			UbuntuB_contour00x34_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x34_additive_curves(steps);
	}
}

module UbuntuB_contour10x34_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[30, 44], [30.0, 31.0], [30, 18], 
		[32.0, 18.0], [34, 18], [34.0, 14.0], 
		[34, 10], [32.0, 10.0], [30, 10], 
		[30.0, 5.0], [30, 0], [25.0, 0.0], 
		[20, 0], [20.0, 5.0], [20, 10], 
		[10.5, 10.0], [1, 10], [1.0, 13.5], 
		[1, 17], [3, 20], [5.0, 23.5], 
		[7, 27], [9.5, 30.5], [12, 34], 
		[15.0, 37.5], [18, 41], [21, 44], 
		[25.5, 44.0], ]);
}

module UbuntuB_contour10x34_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([1, 17], [3, 20], [5.0, 23.5],steps,10);
}
}

module UbuntuB_contour10x34_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([5.0, 23.5], [7, 27], [9.5, 30.5],steps,10);
	BezConic([9.5, 30.5], [12, 34], [15.0, 37.5],steps,10);
	BezConic([15.0, 37.5], [18, 41], [21, 44],steps,10);
}
}

module UbuntuB_contour10x34(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x34_skeleton();
			UbuntuB_contour10x34_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x34_subtractive_curves(steps);
	}
}

module UbuntuB_chunk00x34(steps=2) {
	difference() {
		
		scale([1,1,1.1]) UbuntuB_contour00x34(steps);
	}
}

module UbuntuB_chunk10x34(steps=2) {
	difference() {
		UbuntuB_contour10x34(steps);
		
	}
}

UbuntuB_bbox0x34=[[1, 0], [34, 44]];

module UbuntuB_letter0x34(detail=2) {
	UbuntuB_chunk00x34(steps=detail);
	UbuntuB_chunk10x34(steps=detail);
} //end skeleton

module UbuntuB_contour00x35_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[23, 13], [23, 15], [22.0, 16.5], 
		[21, 18], [19.0, 19.0], [17, 20], 
		[13.5, 20.5], [10, 21], [5, 21], 
		[6, 27], [6.5, 33.0], [7, 39], 
		[7, 44], [19.0, 44.0], [31, 44], 
		[31.0, 40.0], [31, 36], [23.0, 36.0], 
		[15, 36], [15, 34], [15.0, 32.0], 
		[15, 30], [14, 28], [24, 28], 
		[28.5, 24.0], [33, 20], [33, 13], 
		[33, 10], [31.5, 7.5], [30, 5], 
		[28.0, 3.0], [26, 1], [22.5, 0.0], 
		[19, -1], [15, -1], [13, -1], 
		[11.5, -1.0], [10, -1], [8.0, -0.5], 
		[6, 0], [4.5, 0.5], [3, 1], 
		[2, 1], [3.0, 5.0], [4, 9], 
		[6, 9], [8.5, 8.0], [11, 7], 
		[15, 7], [19, 7], [21.0, 9.0], 
		[23, 11], ]);
}

module UbuntuB_contour00x35_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([23, 13], [23, 15], [22.0, 16.5],steps,10);
	BezConic([22.0, 16.5], [21, 18], [19.0, 19.0],steps,10);
	BezConic([19.0, 19.0], [17, 20], [13.5, 20.5],steps,10);
	BezConic([13.5, 20.5], [10, 21], [5, 21],steps,10);
	BezConic([5, 21], [6, 27], [6.5, 33.0],steps,10);
	BezConic([6.5, 33.0], [7, 39], [7, 44],steps,10);
	BezConic([15, 36], [15, 34], [15.0, 32.0],steps,10);
	BezConic([15, -1], [13, -1], [11.5, -1.0],steps,10);
	BezConic([4.5, 0.5], [3, 1], [2, 1],steps,10);
	BezConic([8.5, 8.0], [11, 7], [15, 7],steps,10);
	BezConic([15, 7], [19, 7], [21.0, 9.0],steps,10);
	BezConic([21.0, 9.0], [23, 11], [23, 13],steps,10);
}
}

module UbuntuB_contour00x35_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([15.0, 32.0], [15, 30], [14, 28],steps,10);
	BezConic([14, 28], [24, 28], [28.5, 24.0],steps,10);
	BezConic([28.5, 24.0], [33, 20], [33, 13],steps,10);
	BezConic([33, 13], [33, 10], [31.5, 7.5],steps,10);
	BezConic([31.5, 7.5], [30, 5], [28.0, 3.0],steps,10);
	BezConic([28.0, 3.0], [26, 1], [22.5, 0.0],steps,10);
	BezConic([22.5, 0.0], [19, -1], [15, -1],steps,10);
	BezConic([11.5, -1.0], [10, -1], [8.0, -0.5],steps,10);
	BezConic([8.0, -0.5], [6, 0], [4.5, 0.5],steps,10);
	BezConic([4, 9], [6, 9], [8.5, 8.0],steps,10);
}
}

module UbuntuB_contour00x35(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x35_skeleton();
			UbuntuB_contour00x35_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x35_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x35(steps=2) {
	difference() {
		UbuntuB_contour00x35(steps);
		
	}
}

UbuntuB_bbox0x35=[[2, -1], [33, 44]];

module UbuntuB_letter0x35(detail=2) {
	UbuntuB_chunk10x35(steps=detail);
} //end skeleton

module UbuntuB_contour00x36_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[18, 21], [16, 21], [14.5, 20.5], 
		[13, 20], [12, 20], [12, 20], 
		[12.0, 19.5], [12, 19], [12, 18], 
		[12, 16], [12.5, 14.0], [13, 12], 
		[13.5, 10.5], [14, 9], [15.5, 8.0], 
		[17, 7], [19, 7], [20, 7], 
		[21.0, 7.5], [22, 8], [23.0, 9.0], 
		[24, 10], [24.5, 11.5], [25, 13], 
		[25, 14], [25, 17], [23.0, 19.0], 
		[21, 21], ]);
}

module UbuntuB_contour00x36_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([18, 21], [16, 21], [14.5, 20.5],steps,10);
	BezConic([12.0, 19.5], [12, 19], [12, 18],steps,10);
	BezConic([12, 18], [12, 16], [12.5, 14.0],steps,10);
	BezConic([12.5, 14.0], [13, 12], [13.5, 10.5],steps,10);
	BezConic([13.5, 10.5], [14, 9], [15.5, 8.0],steps,10);
	BezConic([15.5, 8.0], [17, 7], [19, 7],steps,10);
	BezConic([19, 7], [20, 7], [21.0, 7.5],steps,10);
	BezConic([21.0, 7.5], [22, 8], [23.0, 9.0],steps,10);
	BezConic([23.0, 9.0], [24, 10], [24.5, 11.5],steps,10);
	BezConic([24.5, 11.5], [25, 13], [25, 14],steps,10);
	BezConic([25, 14], [25, 17], [23.0, 19.0],steps,10);
	BezConic([23.0, 19.0], [21, 21], [18, 21],steps,10);
}
}

module UbuntuB_contour00x36_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14.5, 20.5], [13, 20], [12, 20],steps,10);
	BezConic([12, 20], [12, 20], [12.0, 19.5],steps,10);
}
}

module UbuntuB_contour00x36(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x36_skeleton();
			UbuntuB_contour00x36_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x36_additive_curves(steps);
	}
}

module UbuntuB_contour10x36_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[19, 28], [23, 28], [26.0, 27.0], 
		[29, 26], [30.5, 24.0], [32, 22], 
		[33.0, 19.5], [34, 17], [34, 14], 
		[34, 12], [33.0, 9.0], [32, 6], 
		[30.0, 4.0], [28, 2], [25.5, 0.5], 
		[23, -1], [19, -1], [11, -1], 
		[6.5, 4.0], [2, 9], [2, 18], 
		[2, 25], [4.0, 29.5], [6, 34], 
		[10.0, 37.5], [14, 41], [19.0, 43.0], 
		[24, 45], [31, 45], [31, 43], 
		[31.0, 41.0], [31, 39], [31, 37], 
		[28, 37], [25.0, 36.5], [22, 36], 
		[20.0, 34.5], [18, 33], [16.0, 31.5], 
		[14, 30], [13, 27], [15, 28], 
		[16.0, 28.0],[17, 28], ]);
}

module UbuntuB_contour10x36_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([31, 45], [31, 43], [31.0, 41.0],steps,10);
	BezConic([31.0, 41.0], [31, 39], [31, 37],steps,10);
	BezConic([31, 37], [28, 37], [25.0, 36.5],steps,10);
	BezConic([25.0, 36.5], [22, 36], [20.0, 34.5],steps,10);
	BezConic([20.0, 34.5], [18, 33], [16.0, 31.5],steps,10);
	BezConic([16.0, 31.5], [14, 30], [13, 27],steps,10);
	BezConic([16.0, 28.0], [17, 28], [19, 28],steps,10);
}
}

module UbuntuB_contour10x36_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([19, 28], [23, 28], [26.0, 27.0],steps,10);
	BezConic([26.0, 27.0], [29, 26], [30.5, 24.0],steps,10);
	BezConic([30.5, 24.0], [32, 22], [33.0, 19.5],steps,10);
	BezConic([33.0, 19.5], [34, 17], [34, 14],steps,10);
	BezConic([34, 14], [34, 12], [33.0, 9.0],steps,10);
	BezConic([33.0, 9.0], [32, 6], [30.0, 4.0],steps,10);
	BezConic([30.0, 4.0], [28, 2], [25.5, 0.5],steps,10);
	BezConic([25.5, 0.5], [23, -1], [19, -1],steps,10);
	BezConic([19, -1], [11, -1], [6.5, 4.0],steps,10);
	BezConic([6.5, 4.0], [2, 9], [2, 18],steps,10);
	BezConic([2, 18], [2, 25], [4.0, 29.5],steps,10);
	BezConic([4.0, 29.5], [6, 34], [10.0, 37.5],steps,10);
	BezConic([10.0, 37.5], [14, 41], [19.0, 43.0],steps,10);
	BezConic([19.0, 43.0], [24, 45], [31, 45],steps,10);
	BezConic([13, 27], [15, 28], [16.0, 28.0],steps,10);
}
}

module UbuntuB_contour10x36(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x36_skeleton();
			UbuntuB_contour10x36_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x36_subtractive_curves(steps);
	}
}

module UbuntuB_chunk00x36(steps=2) {
	difference() {
		
		scale([1,1,1.1]) UbuntuB_contour00x36(steps);
	}
}

module UbuntuB_chunk10x36(steps=2) {
	difference() {
		UbuntuB_contour10x36(steps);
		
	}
}

UbuntuB_bbox0x36=[[2, -1], [34, 45]];

module UbuntuB_letter0x36(detail=2) {
	UbuntuB_chunk00x36(steps=detail);
	UbuntuB_chunk10x36(steps=detail);
} //end skeleton

module UbuntuB_contour00x37_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[9, 0], [9, 5], [10.5, 10.0], 
		[12, 15], [13.5, 20.0], [15, 25], 
		[17.5, 29.0], [20, 33], [22, 36], 
		[12.5, 36.0], [3, 36], [3.0, 40.0], 
		[3, 44], [18.5, 44.0], [34, 44], 
		[34.0, 41.0], [34, 38], [32, 35], 
		[29.5, 31.0], [27, 27], [24.5, 22.0], 
		[22, 17], [20.5, 11.5], [19, 6], 
		[19, 0],[14.0, 0.0], ]);
}

module UbuntuB_contour00x37_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([10.5, 10.0], [12, 15], [13.5, 20.0],steps,10);
	BezConic([34, 38], [32, 35], [29.5, 31.0],steps,10);
	BezConic([29.5, 31.0], [27, 27], [24.5, 22.0],steps,10);
	BezConic([24.5, 22.0], [22, 17], [20.5, 11.5],steps,10);
	BezConic([20.5, 11.5], [19, 6], [19, 0],steps,10);
}
}

module UbuntuB_contour00x37_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([9, 0], [9, 5], [10.5, 10.0],steps,10);
	BezConic([13.5, 20.0], [15, 25], [17.5, 29.0],steps,10);
	BezConic([17.5, 29.0], [20, 33], [22, 36],steps,10);
}
}

module UbuntuB_contour00x37(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x37_skeleton();
			UbuntuB_contour00x37_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x37_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x37(steps=2) {
	difference() {
		UbuntuB_contour00x37(steps);
		
	}
}

UbuntuB_bbox0x37=[[3, 0], [34, 44]];

module UbuntuB_letter0x37(detail=2) {
	UbuntuB_chunk10x37(steps=detail);
} //end skeleton

module UbuntuB_contour00x38_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[34, 12], [34, 9], [33.0, 7.0], 
		[32, 5], [30.0, 3.0], [28, 1], 
		[25.0, 0.0], [22, -1], [18, -1], 
		[14, -1], [11.0, 0.5], [8, 2], 
		[6.0, 3.5], [4, 5], [3.0, 7.5], 
		[2, 10], [2, 12], [2, 14], 
		[3.0, 15.5], [4, 17], [4.5, 18.0], 
		[5, 19], [6.5, 20.5], [8, 22], 
		[9, 22], [6, 25], [4.5, 27.0], 
		[3, 29], [3, 32], [3, 35], 
		[4.5, 37.5], [6, 40], [7.5, 41.5], 
		[9, 43], [12.0, 44.0], [15, 45], 
		[18, 45], [22, 45], [25.0, 44.0], 
		[28, 43], [29.5, 41.5], [31, 40], 
		[32.0, 37.5], [33, 35], [33, 33], 
		[33, 30], [31.5, 27.5], [30, 25], 
		[27, 23], [31, 21], [32.5, 18.5], 
		[34, 16], ]);
}

module UbuntuB_contour00x38_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([3.0, 15.5], [4, 17], [4.5, 18.0],steps,10);
}
}

module UbuntuB_contour00x38_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([34, 12], [34, 9], [33.0, 7.0],steps,10);
	BezConic([33.0, 7.0], [32, 5], [30.0, 3.0],steps,10);
	BezConic([30.0, 3.0], [28, 1], [25.0, 0.0],steps,10);
	BezConic([25.0, 0.0], [22, -1], [18, -1],steps,10);
	BezConic([18, -1], [14, -1], [11.0, 0.5],steps,10);
	BezConic([11.0, 0.5], [8, 2], [6.0, 3.5],steps,10);
	BezConic([6.0, 3.5], [4, 5], [3.0, 7.5],steps,10);
	BezConic([3.0, 7.5], [2, 10], [2, 12],steps,10);
	BezConic([2, 12], [2, 14], [3.0, 15.5],steps,10);
	BezConic([4.5, 18.0], [5, 19], [6.5, 20.5],steps,10);
	BezConic([6.5, 20.5], [8, 22], [9, 22],steps,10);
	BezConic([9, 22], [6, 25], [4.5, 27.0],steps,10);
	BezConic([4.5, 27.0], [3, 29], [3, 32],steps,10);
	BezConic([3, 32], [3, 35], [4.5, 37.5],steps,10);
	BezConic([4.5, 37.5], [6, 40], [7.5, 41.5],steps,10);
	BezConic([7.5, 41.5], [9, 43], [12.0, 44.0],steps,10);
	BezConic([12.0, 44.0], [15, 45], [18, 45],steps,10);
	BezConic([18, 45], [22, 45], [25.0, 44.0],steps,10);
	BezConic([25.0, 44.0], [28, 43], [29.5, 41.5],steps,10);
	BezConic([29.5, 41.5], [31, 40], [32.0, 37.5],steps,10);
	BezConic([32.0, 37.5], [33, 35], [33, 33],steps,10);
	BezConic([33, 33], [33, 30], [31.5, 27.5],steps,10);
	BezConic([31.5, 27.5], [30, 25], [27, 23],steps,10);
	BezConic([27, 23], [31, 21], [32.5, 18.5],steps,10);
	BezConic([32.5, 18.5], [34, 16], [34, 12],steps,10);
}
}

module UbuntuB_contour00x38(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x38_skeleton();
			UbuntuB_contour00x38_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x38_subtractive_curves(steps);
	}
}

module UbuntuB_contour10x38_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[12, 12], [12, 11], [12.0, 10.0], 
		[12, 9], [13.0, 8.5], [14, 8], 
		[15.0, 7.5], [16, 7], [18, 7], 
		[22, 7], [23.5, 8.5], [25, 10], 
		[25, 12], [25, 13], [24.0, 14.5], 
		[23, 16], [22.0, 16.5], [21, 17], 
		[19.5, 18.0], [18, 19], [16, 19], 
		[14, 18], [13.0, 16.0], [12, 14], 
		 ]);
}

module UbuntuB_contour10x38_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([12, 12], [12, 11], [12.0, 10.0],steps,10);
	BezConic([12.0, 10.0], [12, 9], [13.0, 8.5],steps,10);
	BezConic([13.0, 8.5], [14, 8], [15.0, 7.5],steps,10);
	BezConic([15.0, 7.5], [16, 7], [18, 7],steps,10);
	BezConic([18, 7], [22, 7], [23.5, 8.5],steps,10);
	BezConic([23.5, 8.5], [25, 10], [25, 12],steps,10);
	BezConic([25, 12], [25, 13], [24.0, 14.5],steps,10);
	BezConic([24.0, 14.5], [23, 16], [22.0, 16.5],steps,10);
	BezConic([19.5, 18.0], [18, 19], [16, 19],steps,10);
	BezConic([16, 19], [14, 18], [13.0, 16.0],steps,10);
	BezConic([13.0, 16.0], [12, 14], [12, 12],steps,10);
}
}

module UbuntuB_contour10x38_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([22.0, 16.5], [21, 17], [19.5, 18.0],steps,10);
}
}

module UbuntuB_contour10x38(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x38_skeleton();
			UbuntuB_contour10x38_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x38_additive_curves(steps);
	}
}

module UbuntuB_contour20x38_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[24, 33], [24, 34], [23.5, 34.5], 
		[23, 35], [22.5, 36.0], [22, 37], 
		[21.0, 37.5], [20, 38], [18, 38], 
		[17, 38], [16.0, 37.5], [15, 37], 
		[14.0, 36.0], [13, 35], [13.0, 34.5], 
		[13, 34], [13, 33], [13, 31], 
		[14.5, 29.0], [16, 27], [19, 26], 
		[21, 27], [22.5, 29.0], [24, 31], 
		 ]);
}

module UbuntuB_contour20x38_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([24, 33], [24, 34], [23.5, 34.5],steps,10);
	BezConic([22.5, 36.0], [22, 37], [21.0, 37.5],steps,10);
	BezConic([21.0, 37.5], [20, 38], [18, 38],steps,10);
	BezConic([18, 38], [17, 38], [16.0, 37.5],steps,10);
	BezConic([16.0, 37.5], [15, 37], [14.0, 36.0],steps,10);
	BezConic([14.0, 36.0], [13, 35], [13.0, 34.5],steps,10);
	BezConic([13.0, 34.5], [13, 34], [13, 33],steps,10);
	BezConic([13, 33], [13, 31], [14.5, 29.0],steps,10);
	BezConic([14.5, 29.0], [16, 27], [19, 26],steps,10);
	BezConic([19, 26], [21, 27], [22.5, 29.0],steps,10);
	BezConic([22.5, 29.0], [24, 31], [24, 33],steps,10);
}
}

module UbuntuB_contour20x38_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([23.5, 34.5], [23, 35], [22.5, 36.0],steps,10);
}
}

module UbuntuB_contour20x38(steps=2) {
	difference() {
		union() {
			UbuntuB_contour20x38_skeleton();
			UbuntuB_contour20x38_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour20x38_additive_curves(steps);
	}
}

module UbuntuB_chunk10x38(steps=2) {
	difference() {
		UbuntuB_contour00x38(steps);
		scale([1,1,1.1]) UbuntuB_contour10x38(steps);
	scale([1,1,1.1]) UbuntuB_contour20x38(steps);
	}
}

UbuntuB_bbox0x38=[[2, -1], [34, 45]];

module UbuntuB_letter0x38(detail=2) {
	UbuntuB_chunk10x38(steps=detail);
} //end skeleton

module UbuntuB_contour00x39_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[18, 24], [20, 24], [21.5, 24.0], 
		[23, 24], [24, 25], [24.0, 25.0], 
		[24, 25], [24, 26], [24.0, 26.0], 
		[24, 26], [24, 26], [24, 29], 
		[23.5, 31.0], [23, 33], [22.5, 34.5], 
		[22, 36], [20.5, 37.0], [19, 38], 
		[17, 38], [16, 38], [14.5, 37.0], 
		[13, 36], [12.5, 35.0], [12, 34], 
		[11.5, 33.0], [11, 32], [11, 31], 
		[11, 27], [13.0, 25.5], [15, 24], 
		 ]);
}

module UbuntuB_contour00x39_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([18, 24], [20, 24], [21.5, 24.0],steps,10);
	BezConic([21.5, 24.0], [23, 24], [24, 25],steps,10);
	BezConic([24, 25], [24, 26], [24.0, 26.0],steps,10);
	BezConic([24.0, 26.0], [24, 26], [24, 26],steps,10);
	BezConic([24, 26], [24, 29], [23.5, 31.0],steps,10);
	BezConic([23.5, 31.0], [23, 33], [22.5, 34.5],steps,10);
	BezConic([22.5, 34.5], [22, 36], [20.5, 37.0],steps,10);
	BezConic([20.5, 37.0], [19, 38], [17, 38],steps,10);
	BezConic([17, 38], [16, 38], [14.5, 37.0],steps,10);
	BezConic([14.5, 37.0], [13, 36], [12.5, 35.0],steps,10);
	BezConic([12.5, 35.0], [12, 34], [11.5, 33.0],steps,10);
	BezConic([11.5, 33.0], [11, 32], [11, 31],steps,10);
	BezConic([11, 31], [11, 27], [13.0, 25.5],steps,10);
	BezConic([13.0, 25.5], [15, 24], [18, 24],steps,10);
}
}

module UbuntuB_contour00x39_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x39(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x39_skeleton();
			UbuntuB_contour00x39_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x39_additive_curves(steps);
	}
}

module UbuntuB_contour10x39_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[23, 18], [22, 17], [20.5, 16.5], 
		[19, 16], [17, 16], [13, 16], 
		[10.0, 17.0], [7, 18], [5.5, 20.0], 
		[4, 22], [3.0, 24.5], [2, 27], 
		[2, 30], [2, 33], [3.0, 35.5], 
		[4, 38], [5.5, 40.5], [7, 43], 
		[10.0, 44.0], [13, 45], [17, 45], 
		[25, 45], [29.5, 40.0], [34, 35], 
		[34, 26], [34, 19], [32.0, 14.5], 
		[30, 10], [26.5, 6.5], [23, 3], 
		[18.0, 1.5], [13, 0], [6, 0], 
		[6, 2], [5.5, 4.0], [5, 6], 
		[5, 8], [9, 8], [12.0, 8.5], 
		[15, 9], [17.0, 10.0], [19, 11], 
		[20.5, 13.0],[22, 15], ]);
}

module UbuntuB_contour10x39_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([6, 0], [6, 2], [5.5, 4.0],steps,10);
	BezConic([5, 8], [9, 8], [12.0, 8.5],steps,10);
	BezConic([12.0, 8.5], [15, 9], [17.0, 10.0],steps,10);
	BezConic([17.0, 10.0], [19, 11], [20.5, 13.0],steps,10);
	BezConic([20.5, 13.0], [22, 15], [23, 18],steps,10);
}
}

module UbuntuB_contour10x39_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([23, 18], [22, 17], [20.5, 16.5],steps,10);
	BezConic([20.5, 16.5], [19, 16], [17, 16],steps,10);
	BezConic([17, 16], [13, 16], [10.0, 17.0],steps,10);
	BezConic([10.0, 17.0], [7, 18], [5.5, 20.0],steps,10);
	BezConic([5.5, 20.0], [4, 22], [3.0, 24.5],steps,10);
	BezConic([3.0, 24.5], [2, 27], [2, 30],steps,10);
	BezConic([2, 30], [2, 33], [3.0, 35.5],steps,10);
	BezConic([3.0, 35.5], [4, 38], [5.5, 40.5],steps,10);
	BezConic([5.5, 40.5], [7, 43], [10.0, 44.0],steps,10);
	BezConic([10.0, 44.0], [13, 45], [17, 45],steps,10);
	BezConic([17, 45], [25, 45], [29.5, 40.0],steps,10);
	BezConic([29.5, 40.0], [34, 35], [34, 26],steps,10);
	BezConic([34, 26], [34, 19], [32.0, 14.5],steps,10);
	BezConic([32.0, 14.5], [30, 10], [26.5, 6.5],steps,10);
	BezConic([26.5, 6.5], [23, 3], [18.0, 1.5],steps,10);
	BezConic([18.0, 1.5], [13, 0], [6, 0],steps,10);
	BezConic([5.5, 4.0], [5, 6], [5, 8],steps,10);
}
}

module UbuntuB_contour10x39(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x39_skeleton();
			UbuntuB_contour10x39_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x39_subtractive_curves(steps);
	}
}

module UbuntuB_chunk00x39(steps=2) {
	difference() {
		
		scale([1,1,1.1]) UbuntuB_contour00x39(steps);
	}
}

module UbuntuB_chunk10x39(steps=2) {
	difference() {
		UbuntuB_contour10x39(steps);
		
	}
}

UbuntuB_bbox0x39=[[2, 0], [34, 45]];

module UbuntuB_letter0x39(detail=2) {
	UbuntuB_chunk00x39(steps=detail);
	UbuntuB_chunk10x39(steps=detail);
} //end skeleton

module UbuntuB_contour00x3a_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[14, 5], [14, 2], [12.0, 0.5], 
		[10, -1], [8, -1], [6, -1], 
		[4.0, 0.5], [2, 2], [2, 5], 
		[2, 8], [4.0, 9.5], [6, 11], 
		[8, 11], [10, 11], [12.0, 9.5], 
		[14, 8], ]);
}

module UbuntuB_contour00x3a_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x3a_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 5], [14, 2], [12.0, 0.5],steps,10);
	BezConic([12.0, 0.5], [10, -1], [8, -1],steps,10);
	BezConic([8, -1], [6, -1], [4.0, 0.5],steps,10);
	BezConic([4.0, 0.5], [2, 2], [2, 5],steps,10);
	BezConic([2, 5], [2, 8], [4.0, 9.5],steps,10);
	BezConic([4.0, 9.5], [6, 11], [8, 11],steps,10);
	BezConic([8, 11], [10, 11], [12.0, 9.5],steps,10);
	BezConic([12.0, 9.5], [14, 8], [14, 5],steps,10);
}
}

module UbuntuB_contour00x3a(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x3a_skeleton();
			UbuntuB_contour00x3a_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x3a_subtractive_curves(steps);
	}
}

module UbuntuB_contour10x3a_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[14, 5], [14, 2], [12.0, 0.5], 
		[10, -1], [8, -1], [6, -1], 
		[4.0, 0.5], [2, 2], [2, 5], 
		[2, 8], [4.0, 9.5], [6, 11], 
		[8, 11], [10, 11], [12.0, 9.5], 
		[14, 8], ]);
}

module UbuntuB_contour10x3a_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour10x3a_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 5], [14, 2], [12.0, 0.5],steps,10);
	BezConic([12.0, 0.5], [10, -1], [8, -1],steps,10);
	BezConic([8, -1], [6, -1], [4.0, 0.5],steps,10);
	BezConic([4.0, 0.5], [2, 2], [2, 5],steps,10);
	BezConic([2, 5], [2, 8], [4.0, 9.5],steps,10);
	BezConic([4.0, 9.5], [6, 11], [8, 11],steps,10);
	BezConic([8, 11], [10, 11], [12.0, 9.5],steps,10);
	BezConic([12.0, 9.5], [14, 8], [14, 5],steps,10);
}
}

module UbuntuB_contour10x3a(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x3a_skeleton();
			UbuntuB_contour10x3a_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x3a_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x3a(steps=2) {
	difference() {
		UbuntuB_contour00x3a(steps);
		
	}
}

module UbuntuB_chunk20x3a(steps=2) {
	difference() {
		UbuntuB_contour10x3a(steps);
		
	}
}

UbuntuB_bbox0x3a=[[2, -1], [14, 11]];

module UbuntuB_letter0x3a(detail=2) {
	UbuntuB_chunk10x3a(steps=detail);
	UbuntuB_chunk20x3a(steps=detail);
} //end skeleton

module UbuntuB_contour00x3b_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[14, 5], [14, 2], [12.0, 0.5], 
		[10, -1], [8, -1], [6, -1], 
		[4.0, 0.5], [2, 2], [2, 5], 
		[2, 8], [4.0, 9.5], [6, 11], 
		[8, 11], [10, 11], [12.0, 9.5], 
		[14, 8], ]);
}

module UbuntuB_contour00x3b_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x3b_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 5], [14, 2], [12.0, 0.5],steps,10);
	BezConic([12.0, 0.5], [10, -1], [8, -1],steps,10);
	BezConic([8, -1], [6, -1], [4.0, 0.5],steps,10);
	BezConic([4.0, 0.5], [2, 2], [2, 5],steps,10);
	BezConic([2, 5], [2, 8], [4.0, 9.5],steps,10);
	BezConic([4.0, 9.5], [6, 11], [8, 11],steps,10);
	BezConic([8, 11], [10, 11], [12.0, 9.5],steps,10);
	BezConic([12.0, 9.5], [14, 8], [14, 5],steps,10);
}
}

module UbuntuB_contour00x3b(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x3b_skeleton();
			UbuntuB_contour00x3b_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x3b_subtractive_curves(steps);
	}
}

module UbuntuB_contour10x3b_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[14, 10], [14, 8], [14.0, 7.5], 
		[14, 7], [14, 6], [14, 5], 
		[13.5, 2.5], [13, 0], [12.5, -2.0], 
		[12, -4], [11.0, -6.0], [10, -8], 
		[9, -10], [5.0, -9.5], [1, -9], 
		[3, -4], [3.5, -0.5], [4, 3], 
		[4, 6], [4, 6], [4.0, 6.5], 
		[4, 7], [4.0, 7.5], [4, 8], 
		[4.0, 9.0], [4, 10], [4, 10], 
		[9.0, 10.0], ]);
}

module UbuntuB_contour10x3b_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 10], [14, 8], [14.0, 7.5],steps,10);
	BezConic([14.0, 7.5], [14, 7], [14, 6],steps,10);
	BezConic([11.0, -6.0], [10, -8], [9, -10],steps,10);
	BezConic([1, -9], [3, -4], [3.5, -0.5],steps,10);
	BezConic([3.5, -0.5], [4, 3], [4, 6],steps,10);
	BezConic([4, 6], [4, 6], [4.0, 6.5],steps,10);
	BezConic([4.0, 6.5], [4, 7], [4.0, 7.5],steps,10);
	BezConic([4.0, 7.5], [4, 8], [4.0, 9.0],steps,10);
	BezConic([4.0, 9.0], [4, 10], [4, 10],steps,10);
}
}

module UbuntuB_contour10x3b_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 6], [14, 5], [13.5, 2.5],steps,10);
	BezConic([13.5, 2.5], [13, 0], [12.5, -2.0],steps,10);
	BezConic([12.5, -2.0], [12, -4], [11.0, -6.0],steps,10);
}
}

module UbuntuB_contour10x3b(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x3b_skeleton();
			UbuntuB_contour10x3b_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x3b_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x3b(steps=2) {
	difference() {
		UbuntuB_contour00x3b(steps);
		
	}
}

module UbuntuB_chunk20x3b(steps=2) {
	difference() {
		UbuntuB_contour10x3b(steps);
		
	}
}

UbuntuB_bbox0x3b=[[1, -10], [14, 11]];

module UbuntuB_letter0x3b(detail=2) {
	UbuntuB_chunk10x3b(steps=detail);
	UbuntuB_chunk20x3b(steps=detail);
} //end skeleton

module UbuntuB_contour00x3c_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[3, 23], [17.0, 29.0], [31, 35], 
		[32.0, 31.0], [33, 27], [23.0, 23.0], 
		[13, 19], [23.0, 15.0], [33, 11], 
		[32.0, 7.5], [31, 4], [17.0, 9.5], 
		[3, 15],[3.0, 19.0], ]);
}

module UbuntuB_contour00x3c_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x3c_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x3c(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x3c_skeleton();
			UbuntuB_contour00x3c_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x3c_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x3c(steps=2) {
	difference() {
		UbuntuB_contour00x3c(steps);
		
	}
}

UbuntuB_bbox0x3c=[[3, 4], [33, 35]];

module UbuntuB_letter0x3c(detail=2) {
	UbuntuB_chunk10x3c(steps=detail);
} //end skeleton

module UbuntuB_contour00x3d_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[3, 16], [18.0, 16.0], [33, 16], 
		[33.0, 12.0], [33, 8], [18.0, 8.0], 
		[3, 8],[3.0, 12.0], ]);
}

module UbuntuB_contour00x3d_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x3d_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x3d(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x3d_skeleton();
			UbuntuB_contour00x3d_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x3d_subtractive_curves(steps);
	}
}

module UbuntuB_contour10x3d_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[3, 30], [18.0, 30.0], [33, 30], 
		[33.0, 26.0], [33, 22], [18.0, 22.0], 
		[3, 22],[3.0, 26.0], ]);
}

module UbuntuB_contour10x3d_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour10x3d_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour10x3d(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x3d_skeleton();
			UbuntuB_contour10x3d_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x3d_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x3d(steps=2) {
	difference() {
		UbuntuB_contour00x3d(steps);
		
	}
}

module UbuntuB_chunk20x3d(steps=2) {
	difference() {
		UbuntuB_contour10x3d(steps);
		
	}
}

UbuntuB_bbox0x3d=[[3, 8], [33, 30]];

module UbuntuB_letter0x3d(detail=2) {
	UbuntuB_chunk10x3d(steps=detail);
	UbuntuB_chunk20x3d(steps=detail);
} //end skeleton

module UbuntuB_contour00x3e_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[33, 15], [19.5, 9.5], [6, 4], 
		[4.5, 7.5], [3, 11], [13.0, 15.0], 
		[23, 19], [13.0, 23.0], [3, 27], 
		[4.5, 31.0], [6, 35], [19.5, 29.0], 
		[33, 23],[33.0, 19.0], ]);
}

module UbuntuB_contour00x3e_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x3e_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x3e(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x3e_skeleton();
			UbuntuB_contour00x3e_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x3e_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x3e(steps=2) {
	difference() {
		UbuntuB_contour00x3e(steps);
		
	}
}

UbuntuB_bbox0x3e=[[3, 4], [33, 35]];

module UbuntuB_letter0x3e(detail=2) {
	UbuntuB_chunk10x3e(steps=detail);
} //end skeleton

module UbuntuB_contour00x3f_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[13, 37], [11, 37], [8.5, 36.5], 
		[6, 36], [4, 35], [2.5, 38.5], 
		[1, 42], [4, 44], [7.5, 44.5], 
		[11, 45], [14, 45], [18, 45], 
		[20.5, 44.0], [23, 43], [24.5, 41.5], 
		[26, 40], [27.0, 38.0], [28, 36], 
		[28, 34], [28, 32], [27.0, 30.5], 
		[26, 29], [25.5, 28.0], [25, 27], 
		[24.0, 25.5], [23, 24], [22, 23], 
		[21, 23], [20.0, 22.0], [19, 21], 
		[18.5, 20.0], [18, 19], [17.5, 18.0], 
		[17, 17], [17, 16], [17, 16], 
		[17.0, 15.5], [17, 15], [17, 14], 
		[13.0, 14.0], [9, 14], [8, 15], 
		[8.0, 15.5], [8, 16], [8, 17], 
		[8, 19], [8.5, 20.5], [9, 22], 
		[10.0, 23.0], [11, 24], [12.0, 25.0], 
		[13, 26], [14, 27], [15, 29], 
		[16.5, 30.5], [18, 32], [18, 34], 
		[18, 35], [16.5, 36.0], [15, 37], 
		 ]);
}

module UbuntuB_contour00x3f_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([13, 37], [11, 37], [8.5, 36.5],steps,10);
	BezConic([8.5, 36.5], [6, 36], [4, 35],steps,10);
	BezConic([27.0, 30.5], [26, 29], [25.5, 28.0],steps,10);
	BezConic([22, 23], [21, 23], [20.0, 22.0],steps,10);
	BezConic([20.0, 22.0], [19, 21], [18.5, 20.0],steps,10);
	BezConic([18.5, 20.0], [18, 19], [17.5, 18.0],steps,10);
	BezConic([17.5, 18.0], [17, 17], [17, 16],steps,10);
	BezConic([17.0, 15.5], [17, 15], [17, 14],steps,10);
	BezConic([8.0, 15.5], [8, 16], [8, 17],steps,10);
	BezConic([12.0, 25.0], [13, 26], [14, 27],steps,10);
	BezConic([16.5, 30.5], [18, 32], [18, 34],steps,10);
	BezConic([18, 34], [18, 35], [16.5, 36.0],steps,10);
	BezConic([16.5, 36.0], [15, 37], [13, 37],steps,10);
}
}

module UbuntuB_contour00x3f_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([1, 42], [4, 44], [7.5, 44.5],steps,10);
	BezConic([7.5, 44.5], [11, 45], [14, 45],steps,10);
	BezConic([14, 45], [18, 45], [20.5, 44.0],steps,10);
	BezConic([20.5, 44.0], [23, 43], [24.5, 41.5],steps,10);
	BezConic([24.5, 41.5], [26, 40], [27.0, 38.0],steps,10);
	BezConic([27.0, 38.0], [28, 36], [28, 34],steps,10);
	BezConic([28, 34], [28, 32], [27.0, 30.5],steps,10);
	BezConic([25.5, 28.0], [25, 27], [24.0, 25.5],steps,10);
	BezConic([24.0, 25.5], [23, 24], [22, 23],steps,10);
	BezConic([17, 16], [17, 16], [17.0, 15.5],steps,10);
	BezConic([9, 14], [8, 15], [8.0, 15.5],steps,10);
	BezConic([8, 17], [8, 19], [8.5, 20.5],steps,10);
	BezConic([8.5, 20.5], [9, 22], [10.0, 23.0],steps,10);
	BezConic([10.0, 23.0], [11, 24], [12.0, 25.0],steps,10);
	BezConic([14, 27], [15, 29], [16.5, 30.5],steps,10);
}
}

module UbuntuB_contour00x3f(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x3f_skeleton();
			UbuntuB_contour00x3f_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x3f_subtractive_curves(steps);
	}
}

module UbuntuB_contour10x3f_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[19, 5], [19, 2], [17.0, 0.5], 
		[15, -1], [13, -1], [11, -1], 
		[9.0, 0.5], [7, 2], [7, 5], 
		[7, 8], [9.0, 9.5], [11, 11], 
		[13, 11], [15, 11], [17.0, 9.5], 
		[19, 8], ]);
}

module UbuntuB_contour10x3f_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour10x3f_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([19, 5], [19, 2], [17.0, 0.5],steps,10);
	BezConic([17.0, 0.5], [15, -1], [13, -1],steps,10);
	BezConic([13, -1], [11, -1], [9.0, 0.5],steps,10);
	BezConic([9.0, 0.5], [7, 2], [7, 5],steps,10);
	BezConic([7, 5], [7, 8], [9.0, 9.5],steps,10);
	BezConic([9.0, 9.5], [11, 11], [13, 11],steps,10);
	BezConic([13, 11], [15, 11], [17.0, 9.5],steps,10);
	BezConic([17.0, 9.5], [19, 8], [19, 5],steps,10);
}
}

module UbuntuB_contour10x3f(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x3f_skeleton();
			UbuntuB_contour10x3f_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x3f_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x3f(steps=2) {
	difference() {
		UbuntuB_contour00x3f(steps);
		
	}
}

module UbuntuB_chunk20x3f(steps=2) {
	difference() {
		UbuntuB_contour10x3f(steps);
		
	}
}

UbuntuB_bbox0x3f=[[1, -1], [28, 45]];

module UbuntuB_letter0x3f(detail=2) {
	UbuntuB_chunk10x3f(steps=detail);
	UbuntuB_chunk20x3f(steps=detail);
} //end skeleton

module UbuntuB_contour00x40_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[45, 2], [43, 2], [41.0, 2.5], 
		[39, 3], [38, 4], [35, 2], 
		[31, 2], [28, 2], [25.0, 3.0], 
		[22, 4], [20.5, 6.0], [19, 8], 
		[18.0, 11.0], [17, 14], [17, 17], 
		[17, 21], [18.0, 23.5], [19, 26], 
		[21.0, 28.5], [23, 31], [26.0, 32.0], 
		[29, 33], [33, 33], [36, 33], 
		[39.0, 32.5], [42, 32], [44, 31], 
		[44.0, 21.0], [44, 11], [44, 9], 
		[44.5, 8.5], [45, 8], [46, 8], 
		[47, 8], [48.0, 8.5], [49, 9], 
		[50.0, 10.5], [51, 12], [51.5, 15.0], 
		[52, 18], [52, 22], [52, 26], 
		[50.5, 29.0], [49, 32], [46.5, 34.5], 
		[44, 37], [40.0, 38.0], [36, 39], 
		[32, 39], [27, 39], [23.0, 37.5], 
		[19, 36], [16.5, 33.5], [14, 31], 
		[12.5, 27.0], [11, 23], [11, 17], 
		[11, 12], [12.5, 8.0], [14, 4], 
		[16.5, 1.5], [19, -1], [23.5, -2.5], 
		[28, -4], [33, -4], [36, -4], 
		[39.0, -3.5], [42, -3], [44, -3], 
		[44.0, -6.0], [44, -9], [43, -9], 
		[39.5, -9.5], [36, -10], [33, -10], 
		[27, -10], [21.5, -8.5], [16, -7], 
		[12.0, -4.0], [8, -1], [5.5, 4.5], 
		[3, 10], [3, 17], [3, 25], 
		[5.5, 30.0], [8, 35], [12.0, 38.5], 
		[16, 42], [21.0, 44.0], [26, 46], 
		[32, 46], [37, 46], [42.5, 44.5], 
		[48, 43], [51.5, 39.5], [55, 36], 
		[57.0, 31.5], [59, 27], [59, 21], 
		[59, 16], [58.0, 12.5], [57, 9], 
		[55.0, 6.5], [53, 4], [50.5, 3.0], 
		[48, 2], ]);
}

module UbuntuB_contour00x40_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([44, 11], [44, 9], [44.5, 8.5],steps,10);
	BezConic([44.5, 8.5], [45, 8], [46, 8],steps,10);
	BezConic([46, 8], [47, 8], [48.0, 8.5],steps,10);
	BezConic([48.0, 8.5], [49, 9], [50.0, 10.5],steps,10);
	BezConic([50.0, 10.5], [51, 12], [51.5, 15.0],steps,10);
	BezConic([51.5, 15.0], [52, 18], [52, 22],steps,10);
	BezConic([52, 22], [52, 26], [50.5, 29.0],steps,10);
	BezConic([50.5, 29.0], [49, 32], [46.5, 34.5],steps,10);
	BezConic([46.5, 34.5], [44, 37], [40.0, 38.0],steps,10);
	BezConic([40.0, 38.0], [36, 39], [32, 39],steps,10);
	BezConic([32, 39], [27, 39], [23.0, 37.5],steps,10);
	BezConic([23.0, 37.5], [19, 36], [16.5, 33.5],steps,10);
	BezConic([16.5, 33.5], [14, 31], [12.5, 27.0],steps,10);
	BezConic([12.5, 27.0], [11, 23], [11, 17],steps,10);
	BezConic([11, 17], [11, 12], [12.5, 8.0],steps,10);
	BezConic([12.5, 8.0], [14, 4], [16.5, 1.5],steps,10);
	BezConic([16.5, 1.5], [19, -1], [23.5, -2.5],steps,10);
	BezConic([23.5, -2.5], [28, -4], [33, -4],steps,10);
	BezConic([33, -4], [36, -4], [39.0, -3.5],steps,10);
	BezConic([44, -9], [43, -9], [39.5, -9.5],steps,10);
}
}

module UbuntuB_contour00x40_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([45, 2], [43, 2], [41.0, 2.5],steps,10);
	BezConic([41.0, 2.5], [39, 3], [38, 4],steps,10);
	BezConic([38, 4], [35, 2], [31, 2],steps,10);
	BezConic([31, 2], [28, 2], [25.0, 3.0],steps,10);
	BezConic([25.0, 3.0], [22, 4], [20.5, 6.0],steps,10);
	BezConic([20.5, 6.0], [19, 8], [18.0, 11.0],steps,10);
	BezConic([18.0, 11.0], [17, 14], [17, 17],steps,10);
	BezConic([17, 17], [17, 21], [18.0, 23.5],steps,10);
	BezConic([18.0, 23.5], [19, 26], [21.0, 28.5],steps,10);
	BezConic([21.0, 28.5], [23, 31], [26.0, 32.0],steps,10);
	BezConic([26.0, 32.0], [29, 33], [33, 33],steps,10);
	BezConic([33, 33], [36, 33], [39.0, 32.5],steps,10);
	BezConic([39.0, 32.5], [42, 32], [44, 31],steps,10);
	BezConic([39.0, -3.5], [42, -3], [44, -3],steps,10);
	BezConic([39.5, -9.5], [36, -10], [33, -10],steps,10);
	BezConic([33, -10], [27, -10], [21.5, -8.5],steps,10);
	BezConic([21.5, -8.5], [16, -7], [12.0, -4.0],steps,10);
	BezConic([12.0, -4.0], [8, -1], [5.5, 4.5],steps,10);
	BezConic([5.5, 4.5], [3, 10], [3, 17],steps,10);
	BezConic([3, 17], [3, 25], [5.5, 30.0],steps,10);
	BezConic([5.5, 30.0], [8, 35], [12.0, 38.5],steps,10);
	BezConic([12.0, 38.5], [16, 42], [21.0, 44.0],steps,10);
	BezConic([21.0, 44.0], [26, 46], [32, 46],steps,10);
	BezConic([32, 46], [37, 46], [42.5, 44.5],steps,10);
	BezConic([42.5, 44.5], [48, 43], [51.5, 39.5],steps,10);
	BezConic([51.5, 39.5], [55, 36], [57.0, 31.5],steps,10);
	BezConic([57.0, 31.5], [59, 27], [59, 21],steps,10);
	BezConic([59, 21], [59, 16], [58.0, 12.5],steps,10);
	BezConic([58.0, 12.5], [57, 9], [55.0, 6.5],steps,10);
	BezConic([55.0, 6.5], [53, 4], [50.5, 3.0],steps,10);
	BezConic([50.5, 3.0], [48, 2], [45, 2],steps,10);
}
}

module UbuntuB_contour00x40(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x40_skeleton();
			UbuntuB_contour00x40_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x40_subtractive_curves(steps);
	}
}

module UbuntuB_contour10x40_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[36, 9], [36, 10], [36.0, 11.0], 
		[36, 12], [36, 13], [36.0, 19.5], 
		[36, 26], [34, 26], [33, 26], 
		[31, 26], [29.5, 25.5], [28, 25], 
		[27.0, 23.5], [26, 22], [25.5, 20.5], 
		[25, 19], [25, 17], [25, 16], 
		[25.5, 14.0], [26, 12], [26.5, 11.0], 
		[27, 10], [28.5, 9.5], [30, 9], 
		[32, 9], [33, 9], [34.0, 9.0], 
		[35, 9], ]);
}

module UbuntuB_contour10x40_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([36, 9], [36, 10], [36.0, 11.0],steps,10);
	BezConic([36.0, 11.0], [36, 12], [36, 13],steps,10);
	BezConic([36, 26], [34, 26], [33, 26],steps,10);
	BezConic([33, 26], [31, 26], [29.5, 25.5],steps,10);
	BezConic([29.5, 25.5], [28, 25], [27.0, 23.5],steps,10);
	BezConic([27.0, 23.5], [26, 22], [25.5, 20.5],steps,10);
	BezConic([25.5, 20.5], [25, 19], [25, 17],steps,10);
	BezConic([25, 17], [25, 16], [25.5, 14.0],steps,10);
	BezConic([25.5, 14.0], [26, 12], [26.5, 11.0],steps,10);
	BezConic([26.5, 11.0], [27, 10], [28.5, 9.5],steps,10);
	BezConic([28.5, 9.5], [30, 9], [32, 9],steps,10);
	BezConic([32, 9], [33, 9], [34.0, 9.0],steps,10);
	BezConic([34.0, 9.0], [35, 9], [36, 9],steps,10);
}
}

module UbuntuB_contour10x40_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour10x40(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x40_skeleton();
			UbuntuB_contour10x40_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x40_additive_curves(steps);
	}
}

module UbuntuB_chunk10x40(steps=2) {
	difference() {
		UbuntuB_contour00x40(steps);
		scale([1,1,1.1]) UbuntuB_contour10x40(steps);
	}
}

UbuntuB_bbox0x40=[[3, -10], [59, 46]];

module UbuntuB_letter0x40(detail=2) {
	UbuntuB_chunk10x40(steps=detail);
} //end skeleton

module UbuntuB_contour00x41_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[35, 0], [34, 2], [33.0, 4.5], 
		[32, 7], [32, 10], [23.0, 10.0], 
		[14, 10], [13, 7], [12.5, 4.5], 
		[12, 2], [11, 0], [6.0, 0.0], 
		[1, 0], [3, 7], [5.5, 13.0], 
		[8, 19], [10.0, 24.5], [12, 30], 
		[14.0, 35.0], [16, 40], [18, 44], 
		[23.0, 44.0], [28, 44], [30, 40], 
		[32.0, 35.0], [34, 30], [36.5, 24.5], 
		[39, 19], [41.0, 13.0], [43, 7], 
		[46, 0],[40.5, 0.0], ]);
}

module UbuntuB_contour00x41_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 10], [13, 7], [12.5, 4.5],steps,10);
	BezConic([5.5, 13.0], [8, 19], [10.0, 24.5],steps,10);
	BezConic([32.0, 35.0], [34, 30], [36.5, 24.5],steps,10);
	BezConic([41.0, 13.0], [43, 7], [46, 0],steps,10);
}
}

module UbuntuB_contour00x41_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([35, 0], [34, 2], [33.0, 4.5],steps,10);
	BezConic([33.0, 4.5], [32, 7], [32, 10],steps,10);
	BezConic([12.5, 4.5], [12, 2], [11, 0],steps,10);
	BezConic([1, 0], [3, 7], [5.5, 13.0],steps,10);
	BezConic([10.0, 24.5], [12, 30], [14.0, 35.0],steps,10);
	BezConic([14.0, 35.0], [16, 40], [18, 44],steps,10);
	BezConic([28, 44], [30, 40], [32.0, 35.0],steps,10);
	BezConic([36.5, 24.5], [39, 19], [41.0, 13.0],steps,10);
}
}

module UbuntuB_contour00x41(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x41_skeleton();
			UbuntuB_contour00x41_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x41_subtractive_curves(steps);
	}
}

module UbuntuB_contour10x41_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[23, 34], [23, 33], [22.0, 31.5], 
		[21, 30], [20.5, 28.0], [20, 26], 
		[19.0, 23.0], [18, 20], [17, 18], 
		[23.0, 18.0], [29, 18], [28, 20], 
		[27.0, 23.0], [26, 26], [25.5, 28.0], 
		[25, 30], [24.0, 31.5], [23, 33], 
		 ]);
}

module UbuntuB_contour10x41_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([22.0, 31.5], [21, 30], [20.5, 28.0],steps,10);
	BezConic([25.5, 28.0], [25, 30], [24.0, 31.5],steps,10);
}
}

module UbuntuB_contour10x41_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([23, 34], [23, 33], [22.0, 31.5],steps,10);
	BezConic([20.5, 28.0], [20, 26], [19.0, 23.0],steps,10);
	BezConic([19.0, 23.0], [18, 20], [17, 18],steps,10);
	BezConic([29, 18], [28, 20], [27.0, 23.0],steps,10);
	BezConic([27.0, 23.0], [26, 26], [25.5, 28.0],steps,10);
	BezConic([24.0, 31.5], [23, 33], [23, 34],steps,10);
}
}

module UbuntuB_contour10x41(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x41_skeleton();
			UbuntuB_contour10x41_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x41_additive_curves(steps);
	}
}

module UbuntuB_chunk10x41(steps=2) {
	difference() {
		UbuntuB_contour00x41(steps);
		scale([1,1,1.1]) UbuntuB_contour10x41(steps);
	}
}

UbuntuB_bbox0x41=[[1, 0], [46, 44]];

module UbuntuB_letter0x41(detail=2) {
	UbuntuB_chunk10x41(steps=detail);
} //end skeleton

module UbuntuB_contour00x42_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[20, -1], [16, -1], [12.5, -0.5], 
		[9, 0], [5, 1], [5.0, 22.5], 
		[5, 44], [8, 44], [11.5, 44.5], 
		[15, 45], [19, 45], [23, 45], 
		[26.5, 44.5], [30, 44], [32.5, 42.5], 
		[35, 41], [36.5, 38.5], [38, 36], 
		[38, 32], [38, 27], [33, 24], 
		[37, 22], [38.5, 19.5], [40, 17], 
		[40, 13], [40, 6], [35.0, 2.5], 
		[30, -1], ]);
}

module UbuntuB_contour00x42_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([5, 44], [8, 44], [11.5, 44.5],steps,10);
}
}

module UbuntuB_contour00x42_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([20, -1], [16, -1], [12.5, -0.5],steps,10);
	BezConic([12.5, -0.5], [9, 0], [5, 1],steps,10);
	BezConic([11.5, 44.5], [15, 45], [19, 45],steps,10);
	BezConic([19, 45], [23, 45], [26.5, 44.5],steps,10);
	BezConic([26.5, 44.5], [30, 44], [32.5, 42.5],steps,10);
	BezConic([32.5, 42.5], [35, 41], [36.5, 38.5],steps,10);
	BezConic([36.5, 38.5], [38, 36], [38, 32],steps,10);
	BezConic([38, 32], [38, 27], [33, 24],steps,10);
	BezConic([33, 24], [37, 22], [38.5, 19.5],steps,10);
	BezConic([38.5, 19.5], [40, 17], [40, 13],steps,10);
	BezConic([40, 13], [40, 6], [35.0, 2.5],steps,10);
	BezConic([35.0, 2.5], [30, -1], [20, -1],steps,10);
}
}

module UbuntuB_contour00x42(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x42_skeleton();
			UbuntuB_contour00x42_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x42_subtractive_curves(steps);
	}
}

module UbuntuB_contour10x42_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[15, 19], [15.0, 13.5], [15, 8], 
		[16, 8], [17.0, 8.0], [18, 8], 
		[20, 8], [25, 8], [27.5, 9.0], 
		[30, 10], [30, 14], [30, 17], 
		[27.5, 18.0], [25, 19], [21, 19], 
		[18.0, 19.0], ]);
}

module UbuntuB_contour10x42_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([15, 8], [16, 8], [17.0, 8.0],steps,10);
	BezConic([17.0, 8.0], [18, 8], [20, 8],steps,10);
	BezConic([20, 8], [25, 8], [27.5, 9.0],steps,10);
	BezConic([27.5, 9.0], [30, 10], [30, 14],steps,10);
	BezConic([30, 14], [30, 17], [27.5, 18.0],steps,10);
	BezConic([27.5, 18.0], [25, 19], [21, 19],steps,10);
}
}

module UbuntuB_contour10x42_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour10x42(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x42_skeleton();
			UbuntuB_contour10x42_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x42_additive_curves(steps);
	}
}

module UbuntuB_contour20x42_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[15, 27], [17.5, 27.0], [20, 27], 
		[24, 27], [26.0, 28.0], [28, 29], 
		[28, 32], [28, 35], [26.0, 36.0], 
		[24, 37], [20, 37], [19, 37], 
		[17.5, 37.0], [16, 37], [15, 37], 
		[15.0, 32.0], ]);
}

module UbuntuB_contour20x42_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([20, 27], [24, 27], [26.0, 28.0],steps,10);
	BezConic([26.0, 28.0], [28, 29], [28, 32],steps,10);
	BezConic([28, 32], [28, 35], [26.0, 36.0],steps,10);
	BezConic([26.0, 36.0], [24, 37], [20, 37],steps,10);
	BezConic([20, 37], [19, 37], [17.5, 37.0],steps,10);
	BezConic([17.5, 37.0], [16, 37], [15, 37],steps,10);
}
}

module UbuntuB_contour20x42_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour20x42(steps=2) {
	difference() {
		union() {
			UbuntuB_contour20x42_skeleton();
			UbuntuB_contour20x42_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour20x42_additive_curves(steps);
	}
}

module UbuntuB_chunk10x42(steps=2) {
	difference() {
		UbuntuB_contour00x42(steps);
		scale([1,1,1.1]) UbuntuB_contour10x42(steps);
	scale([1,1,1.1]) UbuntuB_contour20x42(steps);
	}
}

UbuntuB_bbox0x42=[[5, -1], [40, 45]];

module UbuntuB_letter0x42(detail=2) {
	UbuntuB_chunk10x42(steps=detail);
} //end skeleton

module UbuntuB_contour00x43_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[25, -1], [15, -1], [9.0, 5.0], 
		[3, 11], [3, 22], [3, 28], 
		[5.0, 32.0], [7, 36], [10.0, 39.0], 
		[13, 42], [17.0, 43.5], [21, 45], 
		[26, 45], [29, 45], [31.0, 45.0], 
		[33, 45], [35.0, 44.0], [37, 43], 
		[38.0, 42.5], [39, 42], [40, 42], 
		[38.5, 38.0], [37, 34], [35, 35], 
		[32.0, 36.0], [29, 37], [26, 37], 
		[23, 37], [21.0, 36.0], [19, 35], 
		[17.5, 33.5], [16, 32], [15.0, 29.0], 
		[14, 26], [14, 22], [14, 19], 
		[14.5, 16.5], [15, 14], [16.5, 12.0], 
		[18, 10], [20.5, 9.0], [23, 8], 
		[26, 8], [28, 8], [30.0, 8.0], 
		[32, 8], [33.5, 8.5], [35, 9], 
		[36.0, 9.5], [37, 10], [37, 10], 
		[38.5, 6.0], [40, 2], [38, 1], 
		[34.0, 0.0],[30, -1], ]);
}

module UbuntuB_contour00x43_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([26, 45], [29, 45], [31.0, 45.0],steps,10);
	BezConic([38.0, 42.5], [39, 42], [40, 42],steps,10);
	BezConic([37, 34], [35, 35], [32.0, 36.0],steps,10);
	BezConic([32.0, 36.0], [29, 37], [26, 37],steps,10);
	BezConic([26, 37], [23, 37], [21.0, 36.0],steps,10);
	BezConic([21.0, 36.0], [19, 35], [17.5, 33.5],steps,10);
	BezConic([17.5, 33.5], [16, 32], [15.0, 29.0],steps,10);
	BezConic([15.0, 29.0], [14, 26], [14, 22],steps,10);
	BezConic([14, 22], [14, 19], [14.5, 16.5],steps,10);
	BezConic([14.5, 16.5], [15, 14], [16.5, 12.0],steps,10);
	BezConic([16.5, 12.0], [18, 10], [20.5, 9.0],steps,10);
	BezConic([20.5, 9.0], [23, 8], [26, 8],steps,10);
	BezConic([26, 8], [28, 8], [30.0, 8.0],steps,10);
	BezConic([30.0, 8.0], [32, 8], [33.5, 8.5],steps,10);
	BezConic([33.5, 8.5], [35, 9], [36.0, 9.5],steps,10);
	BezConic([36.0, 9.5], [37, 10], [37, 10],steps,10);
}
}

module UbuntuB_contour00x43_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([25, -1], [15, -1], [9.0, 5.0],steps,10);
	BezConic([9.0, 5.0], [3, 11], [3, 22],steps,10);
	BezConic([3, 22], [3, 28], [5.0, 32.0],steps,10);
	BezConic([5.0, 32.0], [7, 36], [10.0, 39.0],steps,10);
	BezConic([10.0, 39.0], [13, 42], [17.0, 43.5],steps,10);
	BezConic([17.0, 43.5], [21, 45], [26, 45],steps,10);
	BezConic([31.0, 45.0], [33, 45], [35.0, 44.0],steps,10);
	BezConic([35.0, 44.0], [37, 43], [38.0, 42.5],steps,10);
	BezConic([40, 2], [38, 1], [34.0, 0.0],steps,10);
	BezConic([34.0, 0.0], [30, -1], [25, -1],steps,10);
}
}

module UbuntuB_contour00x43(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x43_skeleton();
			UbuntuB_contour00x43_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x43_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x43(steps=2) {
	difference() {
		UbuntuB_contour00x43(steps);
		
	}
}

UbuntuB_bbox0x43=[[3, -1], [40, 45]];

module UbuntuB_letter0x43(detail=2) {
	UbuntuB_chunk10x43(steps=detail);
} //end skeleton

module UbuntuB_contour00x44_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[15, 8], [16, 8], [17.0, 8.0], 
		[18, 8], [19, 8], [26, 8], 
		[30.0, 12.0], [34, 16], [34, 22], 
		[34, 29], [30.5, 32.5], [27, 36], 
		[19, 36], [18, 36], [17.0, 36.0], 
		[16, 36], [15, 36], [15.0, 22.0], 
		 ]);
}

module UbuntuB_contour00x44_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([15, 8], [16, 8], [17.0, 8.0],steps,10);
	BezConic([17.0, 8.0], [18, 8], [19, 8],steps,10);
	BezConic([19, 8], [26, 8], [30.0, 12.0],steps,10);
	BezConic([30.0, 12.0], [34, 16], [34, 22],steps,10);
	BezConic([34, 22], [34, 29], [30.5, 32.5],steps,10);
	BezConic([30.5, 32.5], [27, 36], [19, 36],steps,10);
	BezConic([19, 36], [18, 36], [17.0, 36.0],steps,10);
	BezConic([17.0, 36.0], [16, 36], [15, 36],steps,10);
}
}

module UbuntuB_contour00x44_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x44(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x44_skeleton();
			UbuntuB_contour00x44_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x44_additive_curves(steps);
	}
}

module UbuntuB_contour10x44_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[44, 22], [44, 16], [42.0, 12.0], 
		[40, 8], [37.0, 5.0], [34, 2], 
		[29.0, 0.5], [24, -1], [18, -1], 
		[16, -1], [12.5, -0.5], [9, 0], 
		[5, 1], [5.0, 22.5], [5, 44], 
		[9, 44], [12.5, 44.5], [16, 45], 
		[19, 45], [24, 45], [29.0, 43.5], 
		[34, 42], [37.0, 39.5], [40, 37], 
		[42.0, 32.5],[44, 28], ]);
}

module UbuntuB_contour10x44_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([5, 44], [9, 44], [12.5, 44.5],steps,10);
}
}

module UbuntuB_contour10x44_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([44, 22], [44, 16], [42.0, 12.0],steps,10);
	BezConic([42.0, 12.0], [40, 8], [37.0, 5.0],steps,10);
	BezConic([37.0, 5.0], [34, 2], [29.0, 0.5],steps,10);
	BezConic([29.0, 0.5], [24, -1], [18, -1],steps,10);
	BezConic([18, -1], [16, -1], [12.5, -0.5],steps,10);
	BezConic([12.5, -0.5], [9, 0], [5, 1],steps,10);
	BezConic([12.5, 44.5], [16, 45], [19, 45],steps,10);
	BezConic([19, 45], [24, 45], [29.0, 43.5],steps,10);
	BezConic([29.0, 43.5], [34, 42], [37.0, 39.5],steps,10);
	BezConic([37.0, 39.5], [40, 37], [42.0, 32.5],steps,10);
	BezConic([42.0, 32.5], [44, 28], [44, 22],steps,10);
}
}

module UbuntuB_contour10x44(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x44_skeleton();
			UbuntuB_contour10x44_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x44_subtractive_curves(steps);
	}
}

module UbuntuB_chunk00x44(steps=2) {
	difference() {
		
		scale([1,1,1.1]) UbuntuB_contour00x44(steps);
	}
}

module UbuntuB_chunk10x44(steps=2) {
	difference() {
		UbuntuB_contour10x44(steps);
		
	}
}

UbuntuB_bbox0x44=[[5, -1], [44, 45]];

module UbuntuB_letter0x44(detail=2) {
	UbuntuB_chunk00x44(steps=detail);
	UbuntuB_chunk10x44(steps=detail);
} //end skeleton

module UbuntuB_contour00x45_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[5, 0], [5.0, 22.0], [5, 44], 
		[20.0, 44.0], [35, 44], [35.0, 40.0], 
		[35, 36], [25.0, 36.0], [15, 36], 
		[15.0, 31.5], [15, 27], [24.0, 27.0], 
		[33, 27], [33.0, 23.0], [33, 19], 
		[24.0, 19.0], [15, 19], [15.0, 13.5], 
		[15, 8], [26.0, 8.0], [37, 8], 
		[37.0, 4.0], [37, 0], [21.0, 0.0], 
		 ]);
}

module UbuntuB_contour00x45_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x45_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x45(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x45_skeleton();
			UbuntuB_contour00x45_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x45_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x45(steps=2) {
	difference() {
		UbuntuB_contour00x45(steps);
		
	}
}

UbuntuB_bbox0x45=[[5, 0], [37, 44]];

module UbuntuB_letter0x45(detail=2) {
	UbuntuB_chunk10x45(steps=detail);
} //end skeleton

module UbuntuB_contour00x46_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[5, 0], [5.0, 22.0], [5, 44], 
		[20.0, 44.0], [35, 44], [35.0, 40.0], 
		[35, 36], [25.0, 36.0], [15, 36], 
		[15.0, 31.5], [15, 27], [24.0, 27.0], 
		[33, 27], [33.0, 22.5], [33, 18], 
		[24.0, 18.0], [15, 18], [15.0, 9.0], 
		[15, 0],[10.0, 0.0], ]);
}

module UbuntuB_contour00x46_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x46_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x46(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x46_skeleton();
			UbuntuB_contour00x46_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x46_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x46(steps=2) {
	difference() {
		UbuntuB_contour00x46(steps);
		
	}
}

UbuntuB_bbox0x46=[[5, 0], [35, 44]];

module UbuntuB_letter0x46(detail=2) {
	UbuntuB_chunk10x46(steps=detail);
} //end skeleton

module UbuntuB_contour00x47_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[27, 37], [20, 37], [17.0, 33.0], 
		[14, 29], [14, 22], [14, 19], 
		[14.5, 16.5], [15, 14], [16.5, 12.0], 
		[18, 10], [20.5, 9.0], [23, 8], 
		[26, 8], [28, 8], [29.0, 8.0], 
		[30, 8], [31, 8], [31.0, 15.5], 
		[31, 23], [36.0, 23.0], [41, 23], 
		[41.0, 12.0], [41, 1], [39, 1], 
		[35.0, 0.0], [31, -1], [25, -1], 
		[20, -1], [16.0, 0.5], [12, 2], 
		[9.0, 5.0], [6, 8], [4.5, 12.5], 
		[3, 17], [3, 22], [3, 28], 
		[5.0, 32.0], [7, 36], [10.0, 39.0], 
		[13, 42], [17.0, 43.5], [21, 45], 
		[25, 45], [29, 45], [31.5, 45.0], 
		[34, 45], [35.5, 44.0], [37, 43], 
		[38.5, 42.5], [40, 42], [40, 42], 
		[38.5, 38.0], [37, 34], [35, 35], 
		[32.5, 36.0],[30, 37], ]);
}

module UbuntuB_contour00x47_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([27, 37], [20, 37], [17.0, 33.0],steps,10);
	BezConic([17.0, 33.0], [14, 29], [14, 22],steps,10);
	BezConic([14, 22], [14, 19], [14.5, 16.5],steps,10);
	BezConic([14.5, 16.5], [15, 14], [16.5, 12.0],steps,10);
	BezConic([16.5, 12.0], [18, 10], [20.5, 9.0],steps,10);
	BezConic([20.5, 9.0], [23, 8], [26, 8],steps,10);
	BezConic([26, 8], [28, 8], [29.0, 8.0],steps,10);
	BezConic([29.0, 8.0], [30, 8], [31, 8],steps,10);
	BezConic([41, 1], [39, 1], [35.0, 0.0],steps,10);
	BezConic([25, 45], [29, 45], [31.5, 45.0],steps,10);
	BezConic([35.5, 44.0], [37, 43], [38.5, 42.5],steps,10);
	BezConic([38.5, 42.5], [40, 42], [40, 42],steps,10);
	BezConic([37, 34], [35, 35], [32.5, 36.0],steps,10);
	BezConic([32.5, 36.0], [30, 37], [27, 37],steps,10);
}
}

module UbuntuB_contour00x47_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([35.0, 0.0], [31, -1], [25, -1],steps,10);
	BezConic([25, -1], [20, -1], [16.0, 0.5],steps,10);
	BezConic([16.0, 0.5], [12, 2], [9.0, 5.0],steps,10);
	BezConic([9.0, 5.0], [6, 8], [4.5, 12.5],steps,10);
	BezConic([4.5, 12.5], [3, 17], [3, 22],steps,10);
	BezConic([3, 22], [3, 28], [5.0, 32.0],steps,10);
	BezConic([5.0, 32.0], [7, 36], [10.0, 39.0],steps,10);
	BezConic([10.0, 39.0], [13, 42], [17.0, 43.5],steps,10);
	BezConic([17.0, 43.5], [21, 45], [25, 45],steps,10);
	BezConic([31.5, 45.0], [34, 45], [35.5, 44.0],steps,10);
}
}

module UbuntuB_contour00x47(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x47_skeleton();
			UbuntuB_contour00x47_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x47_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x47(steps=2) {
	difference() {
		UbuntuB_contour00x47(steps);
		
	}
}

UbuntuB_bbox0x47=[[3, -1], [41, 45]];

module UbuntuB_letter0x47(detail=2) {
	UbuntuB_chunk10x47(steps=detail);
} //end skeleton

module UbuntuB_contour00x48_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[32, 44], [37.0, 44.0], [42, 44], 
		[42.0, 22.0], [42, 0], [37.0, 0.0], 
		[32, 0], [32.0, 9.5], [32, 19], 
		[23.5, 19.0], [15, 19], [15.0, 9.5], 
		[15, 0], [10.0, 0.0], [5, 0], 
		[5.0, 22.0], [5, 44], [10.0, 44.0], 
		[15, 44], [15.0, 35.5], [15, 27], 
		[23.5, 27.0], [32, 27], [32.0, 35.5], 
		 ]);
}

module UbuntuB_contour00x48_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x48_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x48(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x48_skeleton();
			UbuntuB_contour00x48_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x48_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x48(steps=2) {
	difference() {
		UbuntuB_contour00x48(steps);
		
	}
}

UbuntuB_bbox0x48=[[5, 0], [42, 44]];

module UbuntuB_letter0x48(detail=2) {
	UbuntuB_chunk10x48(steps=detail);
} //end skeleton

module UbuntuB_contour00x49_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[5, 44], [10.0, 44.0], [15, 44], 
		[15.0, 22.0], [15, 0], [10.0, 0.0], 
		[5, 0],[5.0, 22.0], ]);
}

module UbuntuB_contour00x49_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x49_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x49(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x49_skeleton();
			UbuntuB_contour00x49_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x49_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x49(steps=2) {
	difference() {
		UbuntuB_contour00x49(steps);
		
	}
}

UbuntuB_bbox0x49=[[5, 0], [15, 44]];

module UbuntuB_letter0x49(detail=2) {
	UbuntuB_chunk10x49(steps=detail);
} //end skeleton

module UbuntuB_contour00x4a_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[29, 15], [29, 12], [28.5, 9.0], 
		[28, 6], [26.0, 4.0], [24, 2], 
		[21.0, 0.5], [18, -1], [13, -1], 
		[9, -1], [6.0, 0.0], [3, 1], 
		[1, 3], [2.5, 6.5], [4, 10], 
		[6, 9], [8.0, 8.5], [10, 8], 
		[13, 8], [16, 8], [17.5, 9.5], 
		[19, 11], [19, 15], [19.0, 29.5], 
		[19, 44], [24.0, 44.0], [29, 44], 
		[29.0, 29.5], ]);
}

module UbuntuB_contour00x4a_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([4, 10], [6, 9], [8.0, 8.5],steps,10);
	BezConic([8.0, 8.5], [10, 8], [13, 8],steps,10);
	BezConic([13, 8], [16, 8], [17.5, 9.5],steps,10);
	BezConic([17.5, 9.5], [19, 11], [19, 15],steps,10);
}
}

module UbuntuB_contour00x4a_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([29, 15], [29, 12], [28.5, 9.0],steps,10);
	BezConic([28.5, 9.0], [28, 6], [26.0, 4.0],steps,10);
	BezConic([26.0, 4.0], [24, 2], [21.0, 0.5],steps,10);
	BezConic([21.0, 0.5], [18, -1], [13, -1],steps,10);
	BezConic([13, -1], [9, -1], [6.0, 0.0],steps,10);
	BezConic([6.0, 0.0], [3, 1], [1, 3],steps,10);
}
}

module UbuntuB_contour00x4a(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x4a_skeleton();
			UbuntuB_contour00x4a_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x4a_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x4a(steps=2) {
	difference() {
		UbuntuB_contour00x4a(steps);
		
	}
}

UbuntuB_bbox0x4a=[[1, -1], [29, 44]];

module UbuntuB_letter0x4a(detail=2) {
	UbuntuB_chunk10x4a(steps=detail);
} //end skeleton

module UbuntuB_contour00x4b_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[31, 0], [30, 2], [28.0, 4.5], 
		[26, 7], [24.0, 9.5], [22, 12], 
		[19.5, 14.5], [17, 17], [15, 19], 
		[15.0, 9.5], [15, 0], [10.0, 0.0], 
		[5, 0], [5.0, 22.0], [5, 44], 
		[10.0, 44.0], [15, 44], [15.0, 36.0], 
		[15, 28], [19, 32], [23.0, 36.5], 
		[27, 41], [30, 44], [36.0, 44.0], 
		[42, 44], [38, 39], [33.0, 34.0], 
		[28, 29], [23, 24], [29, 20], 
		[34.0, 13.5], [39, 7], [43, 0], 
		[37.0, 0.0], ]);
}

module UbuntuB_contour00x4b_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([31, 0], [30, 2], [28.0, 4.5],steps,10);
	BezConic([28.0, 4.5], [26, 7], [24.0, 9.5],steps,10);
	BezConic([24.0, 9.5], [22, 12], [19.5, 14.5],steps,10);
	BezConic([19.5, 14.5], [17, 17], [15, 19],steps,10);
	BezConic([15, 28], [19, 32], [23.0, 36.5],steps,10);
	BezConic([33.0, 34.0], [28, 29], [23, 24],steps,10);
}
}

module UbuntuB_contour00x4b_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([23.0, 36.5], [27, 41], [30, 44],steps,10);
	BezConic([42, 44], [38, 39], [33.0, 34.0],steps,10);
	BezConic([23, 24], [29, 20], [34.0, 13.5],steps,10);
	BezConic([34.0, 13.5], [39, 7], [43, 0],steps,10);
}
}

module UbuntuB_contour00x4b(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x4b_skeleton();
			UbuntuB_contour00x4b_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x4b_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x4b(steps=2) {
	difference() {
		UbuntuB_contour00x4b(steps);
		
	}
}

UbuntuB_bbox0x4b=[[5, 0], [43, 44]];

module UbuntuB_letter0x4b(detail=2) {
	UbuntuB_chunk10x4b(steps=detail);
} //end skeleton

module UbuntuB_contour00x4c_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[35, 9], [35.0, 4.5], [35, 0], 
		[20.0, 0.0], [5, 0], [5.0, 22.0], 
		[5, 44], [10.0, 44.0], [15, 44], 
		[15.0, 26.5], [15, 9], [25.0, 9.0], 
		 ]);
}

module UbuntuB_contour00x4c_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x4c_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x4c(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x4c_skeleton();
			UbuntuB_contour00x4c_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x4c_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x4c(steps=2) {
	difference() {
		UbuntuB_contour00x4c(steps);
		
	}
}

UbuntuB_bbox0x4c=[[5, 0], [35, 44]];

module UbuntuB_letter0x4c(detail=2) {
	UbuntuB_chunk10x4c(steps=detail);
} //end skeleton

module UbuntuB_contour00x4d_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[17, 44], [18, 42], [19.5, 39.0], 
		[21, 36], [22.5, 32.5], [24, 29], 
		[26.0, 25.0], [28, 21], [29, 18], 
		[30, 21], [32.0, 25.0], [34, 29], 
		[35.5, 32.5], [37, 36], [38.5, 39.0], 
		[40, 42], [41, 44], [45.5, 44.0], 
		[50, 44], [51, 40], [51.5, 34.5], 
		[52, 29], [52.5, 23.0], [53, 17], 
		[53.0, 11.0], [53, 5], [54, 0], 
		[49.0, 0.0], [44, 0], [44, 6], 
		[43.5, 14.0], [43, 22], [42, 29], 
		[41, 27], [39.5, 23.5], [38, 20], 
		[37.0, 17.0], [36, 14], [34.5, 11.0], 
		[33, 8], [32, 6], [28.5, 6.0], 
		[25, 6], [24, 8], [23.0, 11.0], 
		[22, 14], [20.5, 17.0], [19, 20], 
		[17.5, 23.5], [16, 27], [15, 29], 
		[14, 22], [14.0, 14.0], [14, 6], 
		[14, 0], [9.0, 0.0], [4, 0], 
		[4, 5], [4.5, 11.0], [5, 17], 
		[5.5, 23.0], [6, 29], [6.5, 34.5], 
		[7, 40], [7, 44], [12.0, 44.0], 
		 ]);
}

module UbuntuB_contour00x4d_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([17, 44], [18, 42], [19.5, 39.0],steps,10);
	BezConic([22.5, 32.5], [24, 29], [26.0, 25.0],steps,10);
	BezConic([32.0, 25.0], [34, 29], [35.5, 32.5],steps,10);
	BezConic([53.0, 11.0], [53, 5], [54, 0],steps,10);
	BezConic([44, 0], [44, 6], [43.5, 14.0],steps,10);
	BezConic([43.5, 14.0], [43, 22], [42, 29],steps,10);
	BezConic([42, 29], [41, 27], [39.5, 23.5],steps,10);
	BezConic([39.5, 23.5], [38, 20], [37.0, 17.0],steps,10);
	BezConic([34.5, 11.0], [33, 8], [32, 6],steps,10);
	BezConic([23.0, 11.0], [22, 14], [20.5, 17.0],steps,10);
	BezConic([17.5, 23.5], [16, 27], [15, 29],steps,10);
	BezConic([15, 29], [14, 22], [14.0, 14.0],steps,10);
	BezConic([14.0, 14.0], [14, 6], [14, 0],steps,10);
	BezConic([4.5, 11.0], [5, 17], [5.5, 23.0],steps,10);
	BezConic([6.5, 34.5], [7, 40], [7, 44],steps,10);
}
}

module UbuntuB_contour00x4d_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([19.5, 39.0], [21, 36], [22.5, 32.5],steps,10);
	BezConic([26.0, 25.0], [28, 21], [29, 18],steps,10);
	BezConic([29, 18], [30, 21], [32.0, 25.0],steps,10);
	BezConic([35.5, 32.5], [37, 36], [38.5, 39.0],steps,10);
	BezConic([38.5, 39.0], [40, 42], [41, 44],steps,10);
	BezConic([50, 44], [51, 40], [51.5, 34.5],steps,10);
	BezConic([51.5, 34.5], [52, 29], [52.5, 23.0],steps,10);
	BezConic([52.5, 23.0], [53, 17], [53.0, 11.0],steps,10);
	BezConic([37.0, 17.0], [36, 14], [34.5, 11.0],steps,10);
	BezConic([25, 6], [24, 8], [23.0, 11.0],steps,10);
	BezConic([20.5, 17.0], [19, 20], [17.5, 23.5],steps,10);
	BezConic([4, 0], [4, 5], [4.5, 11.0],steps,10);
	BezConic([5.5, 23.0], [6, 29], [6.5, 34.5],steps,10);
}
}

module UbuntuB_contour00x4d(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x4d_skeleton();
			UbuntuB_contour00x4d_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x4d_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x4d(steps=2) {
	difference() {
		UbuntuB_contour00x4d(steps);
		
	}
}

UbuntuB_bbox0x4d=[[4, 0], [54, 44]];

module UbuntuB_letter0x4d(detail=2) {
	UbuntuB_chunk10x4d(steps=detail);
} //end skeleton

module UbuntuB_contour00x4e_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[35, 0], [31, 8], [26.0, 15.0], 
		[21, 22], [15, 29], [15.0, 14.5], 
		[15, 0], [10.0, 0.0], [5, 0], 
		[5.0, 22.0], [5, 44], [9.0, 44.0], 
		[13, 44], [15, 42], [17.5, 39.0], 
		[20, 36], [23.0, 32.5], [26, 29], 
		[28.5, 25.5], [31, 22], [33, 18], 
		[33.0, 31.0], [33, 44], [38.0, 44.0], 
		[43, 44], [43.0, 22.0], [43, 0], 
		[39.0, 0.0], ]);
}

module UbuntuB_contour00x4e_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([35, 0], [31, 8], [26.0, 15.0],steps,10);
	BezConic([26.0, 15.0], [21, 22], [15, 29],steps,10);
	BezConic([17.5, 39.0], [20, 36], [23.0, 32.5],steps,10);
}
}

module UbuntuB_contour00x4e_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([13, 44], [15, 42], [17.5, 39.0],steps,10);
	BezConic([23.0, 32.5], [26, 29], [28.5, 25.5],steps,10);
	BezConic([28.5, 25.5], [31, 22], [33, 18],steps,10);
}
}

module UbuntuB_contour00x4e(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x4e_skeleton();
			UbuntuB_contour00x4e_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x4e_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x4e(steps=2) {
	difference() {
		UbuntuB_contour00x4e(steps);
		
	}
}

UbuntuB_bbox0x4e=[[5, 0], [43, 44]];

module UbuntuB_letter0x4e(detail=2) {
	UbuntuB_chunk10x4e(steps=detail);
} //end skeleton

module UbuntuB_contour00x4f_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[14, 22], [14, 19], [14.5, 16.5], 
		[15, 14], [16.5, 12.0], [18, 10], 
		[20.0, 9.0], [22, 8], [25, 8], 
		[28, 8], [30.0, 9.0], [32, 10], 
		[33.5, 12.0], [35, 14], [36.0, 16.5], 
		[37, 19], [37, 22], [37, 25], 
		[36.0, 28.0], [35, 31], [33.5, 33.0], 
		[32, 35], [30.0, 36.0], [28, 37], 
		[25, 37], [22, 37], [20.0, 35.5], 
		[18, 34], [16.5, 32.5], [15, 31], 
		[14.5, 28.0],[14, 25], ]);
}

module UbuntuB_contour00x4f_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 22], [14, 19], [14.5, 16.5],steps,10);
	BezConic([14.5, 16.5], [15, 14], [16.5, 12.0],steps,10);
	BezConic([16.5, 12.0], [18, 10], [20.0, 9.0],steps,10);
	BezConic([20.0, 9.0], [22, 8], [25, 8],steps,10);
	BezConic([25, 8], [28, 8], [30.0, 9.0],steps,10);
	BezConic([30.0, 9.0], [32, 10], [33.5, 12.0],steps,10);
	BezConic([33.5, 12.0], [35, 14], [36.0, 16.5],steps,10);
	BezConic([36.0, 16.5], [37, 19], [37, 22],steps,10);
	BezConic([37, 22], [37, 25], [36.0, 28.0],steps,10);
	BezConic([36.0, 28.0], [35, 31], [33.5, 33.0],steps,10);
	BezConic([33.5, 33.0], [32, 35], [30.0, 36.0],steps,10);
	BezConic([30.0, 36.0], [28, 37], [25, 37],steps,10);
	BezConic([25, 37], [22, 37], [20.0, 35.5],steps,10);
	BezConic([20.0, 35.5], [18, 34], [16.5, 32.5],steps,10);
	BezConic([16.5, 32.5], [15, 31], [14.5, 28.0],steps,10);
	BezConic([14.5, 28.0], [14, 25], [14, 22],steps,10);
}
}

module UbuntuB_contour00x4f_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x4f(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x4f_skeleton();
			UbuntuB_contour00x4f_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x4f_additive_curves(steps);
	}
}

module UbuntuB_contour10x4f_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[47, 22], [47, 17], [45.5, 12.5], 
		[44, 8], [41.0, 5.0], [38, 2], 
		[34.0, 0.5], [30, -1], [25, -1], 
		[21, -1], [17.0, 0.5], [13, 2], 
		[10.0, 5.0], [7, 8], [5.0, 12.5], 
		[3, 17], [3, 22], [3, 28], 
		[5.0, 32.5], [7, 37], [10.0, 39.5], 
		[13, 42], [17.0, 43.5], [21, 45], 
		[25, 45], [30, 45], [34.0, 43.5], 
		[38, 42], [41.0, 39.5], [44, 37], 
		[45.5, 32.5],[47, 28], ]);
}

module UbuntuB_contour10x4f_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour10x4f_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([47, 22], [47, 17], [45.5, 12.5],steps,10);
	BezConic([45.5, 12.5], [44, 8], [41.0, 5.0],steps,10);
	BezConic([41.0, 5.0], [38, 2], [34.0, 0.5],steps,10);
	BezConic([34.0, 0.5], [30, -1], [25, -1],steps,10);
	BezConic([25, -1], [21, -1], [17.0, 0.5],steps,10);
	BezConic([17.0, 0.5], [13, 2], [10.0, 5.0],steps,10);
	BezConic([10.0, 5.0], [7, 8], [5.0, 12.5],steps,10);
	BezConic([5.0, 12.5], [3, 17], [3, 22],steps,10);
	BezConic([3, 22], [3, 28], [5.0, 32.5],steps,10);
	BezConic([5.0, 32.5], [7, 37], [10.0, 39.5],steps,10);
	BezConic([10.0, 39.5], [13, 42], [17.0, 43.5],steps,10);
	BezConic([17.0, 43.5], [21, 45], [25, 45],steps,10);
	BezConic([25, 45], [30, 45], [34.0, 43.5],steps,10);
	BezConic([34.0, 43.5], [38, 42], [41.0, 39.5],steps,10);
	BezConic([41.0, 39.5], [44, 37], [45.5, 32.5],steps,10);
	BezConic([45.5, 32.5], [47, 28], [47, 22],steps,10);
}
}

module UbuntuB_contour10x4f(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x4f_skeleton();
			UbuntuB_contour10x4f_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x4f_subtractive_curves(steps);
	}
}

module UbuntuB_chunk00x4f(steps=2) {
	difference() {
		
		scale([1,1,1.1]) UbuntuB_contour00x4f(steps);
	}
}

module UbuntuB_chunk10x4f(steps=2) {
	difference() {
		UbuntuB_contour10x4f(steps);
		
	}
}

UbuntuB_bbox0x4f=[[3, -1], [47, 45]];

module UbuntuB_letter0x4f(detail=2) {
	UbuntuB_chunk00x4f(steps=detail);
	UbuntuB_chunk10x4f(steps=detail);
} //end skeleton

module UbuntuB_contour00x50_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[18, 45], [28, 45], [33.5, 41.5], 
		[39, 38], [39, 30], [39, 22], 
		[33.5, 18.5], [28, 15], [18, 15], 
		[16.5, 15.0], [15, 15], [15.0, 7.5], 
		[15, 0], [10.0, 0.0], [5, 0], 
		[5.0, 22.0], [5, 44], [8, 44], 
		[12.0, 44.5],[16, 45], ]);
}

module UbuntuB_contour00x50_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([5, 44], [8, 44], [12.0, 44.5],steps,10);
}
}

module UbuntuB_contour00x50_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([18, 45], [28, 45], [33.5, 41.5],steps,10);
	BezConic([33.5, 41.5], [39, 38], [39, 30],steps,10);
	BezConic([39, 30], [39, 22], [33.5, 18.5],steps,10);
	BezConic([33.5, 18.5], [28, 15], [18, 15],steps,10);
	BezConic([12.0, 44.5], [16, 45], [18, 45],steps,10);
}
}

module UbuntuB_contour00x50(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x50_skeleton();
			UbuntuB_contour00x50_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x50_subtractive_curves(steps);
	}
}

module UbuntuB_contour10x50_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[19, 36], [18, 36], [17.0, 36.0], 
		[16, 36], [15, 36], [15.0, 29.5], 
		[15, 23], [16.5, 23.0], [18, 23], 
		[23, 23], [26.0, 24.5], [29, 26], 
		[29, 30], [29, 32], [28.0, 33.0], 
		[27, 34], [26.0, 35.0], [25, 36], 
		[23.0, 36.0],[21, 36], ]);
}

module UbuntuB_contour10x50_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([19, 36], [18, 36], [17.0, 36.0],steps,10);
	BezConic([17.0, 36.0], [16, 36], [15, 36],steps,10);
	BezConic([18, 23], [23, 23], [26.0, 24.5],steps,10);
	BezConic([26.0, 24.5], [29, 26], [29, 30],steps,10);
	BezConic([29, 30], [29, 32], [28.0, 33.0],steps,10);
	BezConic([28.0, 33.0], [27, 34], [26.0, 35.0],steps,10);
	BezConic([26.0, 35.0], [25, 36], [23.0, 36.0],steps,10);
	BezConic([23.0, 36.0], [21, 36], [19, 36],steps,10);
}
}

module UbuntuB_contour10x50_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour10x50(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x50_skeleton();
			UbuntuB_contour10x50_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x50_additive_curves(steps);
	}
}

module UbuntuB_chunk10x50(steps=2) {
	difference() {
		UbuntuB_contour00x50(steps);
		scale([1,1,1.1]) UbuntuB_contour10x50(steps);
	}
}

UbuntuB_bbox0x50=[[5, 0], [39, 45]];

module UbuntuB_letter0x50(detail=2) {
	UbuntuB_chunk10x50(steps=detail);
} //end skeleton

module UbuntuB_contour00x51_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[14, 22], [14, 19], [14.5, 16.5], 
		[15, 14], [16.5, 12.0], [18, 10], 
		[20.0, 9.0], [22, 8], [25, 8], 
		[28, 8], [30.0, 9.0], [32, 10], 
		[33.5, 12.0], [35, 14], [36.0, 16.5], 
		[37, 19], [37, 22], [37, 25], 
		[36.0, 28.0], [35, 31], [33.5, 33.0], 
		[32, 35], [30.0, 36.0], [28, 37], 
		[25, 37], [22, 37], [20.0, 35.5], 
		[18, 34], [16.5, 32.5], [15, 31], 
		[14.5, 28.0],[14, 25], ]);
}

module UbuntuB_contour00x51_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 22], [14, 19], [14.5, 16.5],steps,10);
	BezConic([14.5, 16.5], [15, 14], [16.5, 12.0],steps,10);
	BezConic([16.5, 12.0], [18, 10], [20.0, 9.0],steps,10);
	BezConic([20.0, 9.0], [22, 8], [25, 8],steps,10);
	BezConic([25, 8], [28, 8], [30.0, 9.0],steps,10);
	BezConic([30.0, 9.0], [32, 10], [33.5, 12.0],steps,10);
	BezConic([33.5, 12.0], [35, 14], [36.0, 16.5],steps,10);
	BezConic([36.0, 16.5], [37, 19], [37, 22],steps,10);
	BezConic([37, 22], [37, 25], [36.0, 28.0],steps,10);
	BezConic([36.0, 28.0], [35, 31], [33.5, 33.0],steps,10);
	BezConic([33.5, 33.0], [32, 35], [30.0, 36.0],steps,10);
	BezConic([30.0, 36.0], [28, 37], [25, 37],steps,10);
	BezConic([25, 37], [22, 37], [20.0, 35.5],steps,10);
	BezConic([20.0, 35.5], [18, 34], [16.5, 32.5],steps,10);
	BezConic([16.5, 32.5], [15, 31], [14.5, 28.0],steps,10);
	BezConic([14.5, 28.0], [14, 25], [14, 22],steps,10);
}
}

module UbuntuB_contour00x51_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x51(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x51_skeleton();
			UbuntuB_contour00x51_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x51_additive_curves(steps);
	}
}

module UbuntuB_contour10x51_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[47, 22], [47, 18], [46.0, 14.0], 
		[45, 10], [43.0, 7.0], [41, 4], 
		[38.0, 2.5], [35, 1], [32, 0], 
		[32, -1], [33.0, -2.0], [34, -3], 
		[36.0, -3.5], [38, -4], [40.0, -4.5], 
		[42, -5], [44, -5], [43.0, -8.5], 
		[42, -12], [37, -12], [33.5, -11.0], 
		[30, -10], [27.5, -8.5], [25, -7], 
		[24.0, -5.0], [23, -3], [22, -1], 
		[18, 0], [14.5, 1.5], [11, 3], 
		[8.5, 6.0], [6, 9], [4.5, 13.0], 
		[3, 17], [3, 22], [3, 28], 
		[5.0, 32.5], [7, 37], [10.0, 39.5], 
		[13, 42], [17.0, 43.5], [21, 45], 
		[25, 45], [30, 45], [34.0, 43.5], 
		[38, 42], [41.0, 39.5], [44, 37], 
		[45.5, 32.5],[47, 28], ]);
}

module UbuntuB_contour10x51_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([32, 0], [32, -1], [33.0, -2.0],steps,10);
	BezConic([33.0, -2.0], [34, -3], [36.0, -3.5],steps,10);
	BezConic([36.0, -3.5], [38, -4], [40.0, -4.5],steps,10);
	BezConic([40.0, -4.5], [42, -5], [44, -5],steps,10);
	BezConic([24.0, -5.0], [23, -3], [22, -1],steps,10);
}
}

module UbuntuB_contour10x51_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([47, 22], [47, 18], [46.0, 14.0],steps,10);
	BezConic([46.0, 14.0], [45, 10], [43.0, 7.0],steps,10);
	BezConic([43.0, 7.0], [41, 4], [38.0, 2.5],steps,10);
	BezConic([38.0, 2.5], [35, 1], [32, 0],steps,10);
	BezConic([42, -12], [37, -12], [33.5, -11.0],steps,10);
	BezConic([33.5, -11.0], [30, -10], [27.5, -8.5],steps,10);
	BezConic([27.5, -8.5], [25, -7], [24.0, -5.0],steps,10);
	BezConic([22, -1], [18, 0], [14.5, 1.5],steps,10);
	BezConic([14.5, 1.5], [11, 3], [8.5, 6.0],steps,10);
	BezConic([8.5, 6.0], [6, 9], [4.5, 13.0],steps,10);
	BezConic([4.5, 13.0], [3, 17], [3, 22],steps,10);
	BezConic([3, 22], [3, 28], [5.0, 32.5],steps,10);
	BezConic([5.0, 32.5], [7, 37], [10.0, 39.5],steps,10);
	BezConic([10.0, 39.5], [13, 42], [17.0, 43.5],steps,10);
	BezConic([17.0, 43.5], [21, 45], [25, 45],steps,10);
	BezConic([25, 45], [30, 45], [34.0, 43.5],steps,10);
	BezConic([34.0, 43.5], [38, 42], [41.0, 39.5],steps,10);
	BezConic([41.0, 39.5], [44, 37], [45.5, 32.5],steps,10);
	BezConic([45.5, 32.5], [47, 28], [47, 22],steps,10);
}
}

module UbuntuB_contour10x51(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x51_skeleton();
			UbuntuB_contour10x51_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x51_subtractive_curves(steps);
	}
}

module UbuntuB_chunk00x51(steps=2) {
	difference() {
		
		scale([1,1,1.1]) UbuntuB_contour00x51(steps);
	}
}

module UbuntuB_chunk10x51(steps=2) {
	difference() {
		UbuntuB_contour10x51(steps);
		
	}
}

UbuntuB_bbox0x51=[[3, -12], [47, 45]];

module UbuntuB_letter0x51(detail=2) {
	UbuntuB_chunk00x51(steps=detail);
	UbuntuB_chunk10x51(steps=detail);
} //end skeleton

module UbuntuB_contour00x52_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[18, 45], [28, 45], [33.5, 41.5], 
		[39, 38], [39, 30], [39, 26], 
		[36.5, 23.0], [34, 20], [30, 18], 
		[32, 16], [33.5, 14.0], [35, 12], 
		[36.5, 9.5], [38, 7], [39.0, 4.5], 
		[40, 2], [41, 0], [35.5, 0.0], 
		[30, 0], [29, 2], [27.5, 4.5], 
		[26, 7], [25.0, 9.0], [24, 11], 
		[22.5, 13.0], [21, 15], [20, 16], 
		[17.5, 16.0], [15, 16], [15.0, 8.0], 
		[15, 0], [10.0, 0.0], [5, 0], 
		[5.0, 22.0], [5, 44], [8, 44], 
		[11.5, 44.5],[15, 45], ]);
}

module UbuntuB_contour00x52_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([39.0, 4.5], [40, 2], [41, 0],steps,10);
	BezConic([30, 0], [29, 2], [27.5, 4.5],steps,10);
	BezConic([25.0, 9.0], [24, 11], [22.5, 13.0],steps,10);
	BezConic([22.5, 13.0], [21, 15], [20, 16],steps,10);
	BezConic([5, 44], [8, 44], [11.5, 44.5],steps,10);
}
}

module UbuntuB_contour00x52_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([18, 45], [28, 45], [33.5, 41.5],steps,10);
	BezConic([33.5, 41.5], [39, 38], [39, 30],steps,10);
	BezConic([39, 30], [39, 26], [36.5, 23.0],steps,10);
	BezConic([36.5, 23.0], [34, 20], [30, 18],steps,10);
	BezConic([30, 18], [32, 16], [33.5, 14.0],steps,10);
	BezConic([33.5, 14.0], [35, 12], [36.5, 9.5],steps,10);
	BezConic([36.5, 9.5], [38, 7], [39.0, 4.5],steps,10);
	BezConic([27.5, 4.5], [26, 7], [25.0, 9.0],steps,10);
	BezConic([11.5, 44.5], [15, 45], [18, 45],steps,10);
}
}

module UbuntuB_contour00x52(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x52_skeleton();
			UbuntuB_contour00x52_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x52_subtractive_curves(steps);
	}
}

module UbuntuB_contour10x52_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[19, 36], [18, 36], [17.0, 36.0], 
		[16, 36], [15, 36], [15.0, 30.0], 
		[15, 24], [16.5, 24.0], [18, 24], 
		[24, 24], [26.0, 25.5], [28, 27], 
		[28, 30], [28, 34], [25.5, 35.0], 
		[23, 36], ]);
}

module UbuntuB_contour10x52_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([19, 36], [18, 36], [17.0, 36.0],steps,10);
	BezConic([17.0, 36.0], [16, 36], [15, 36],steps,10);
	BezConic([18, 24], [24, 24], [26.0, 25.5],steps,10);
	BezConic([26.0, 25.5], [28, 27], [28, 30],steps,10);
	BezConic([28, 30], [28, 34], [25.5, 35.0],steps,10);
	BezConic([25.5, 35.0], [23, 36], [19, 36],steps,10);
}
}

module UbuntuB_contour10x52_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour10x52(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x52_skeleton();
			UbuntuB_contour10x52_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x52_additive_curves(steps);
	}
}

module UbuntuB_chunk10x52(steps=2) {
	difference() {
		UbuntuB_contour00x52(steps);
		scale([1,1,1.1]) UbuntuB_contour10x52(steps);
	}
}

UbuntuB_bbox0x52=[[5, 0], [41, 45]];

module UbuntuB_letter0x52(detail=2) {
	UbuntuB_chunk10x52(steps=detail);
} //end skeleton

module UbuntuB_contour00x53_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[17, 8], [19, 8], [20.5, 8.0], 
		[22, 8], [23.0, 9.0], [24, 10], 
		[24.0, 10.5], [24, 11], [24, 12], 
		[24, 14], [22.0, 15.5], [20, 17], 
		[15, 19], [13, 20], [11.0, 21.0], 
		[9, 22], [7.0, 23.5], [5, 25], 
		[4.0, 27.0], [3, 29], [3, 32], 
		[3, 35], [4.0, 37.5], [5, 40], 
		[7.5, 42.0], [10, 44], [13.0, 44.5], 
		[16, 45], [19, 45], [24, 45], 
		[27.0, 44.0], [30, 43], [33, 42], 
		[31.5, 38.0], [30, 34], [28, 35], 
		[25.5, 36.0], [23, 37], [20, 37], 
		[17, 37], [15.0, 36.0], [13, 35], 
		[13, 33], [13, 32], [14.0, 31.0], 
		[15, 30], [16.0, 29.5], [17, 29], 
		[18.0, 28.5], [19, 28], [21, 27], 
		[25, 26], [27.5, 24.5], [30, 23], 
		[31.5, 21.5], [33, 20], [34.0, 17.5], 
		[35, 15], [35, 12], [35, 6], 
		[30.5, 2.5], [26, -1], [17, -1], 
		[14, -1], [12.0, -0.5], [10, 0], 
		[8.0, 0.5], [6, 1], [4.5, 1.5], 
		[3, 2], [2, 2], [3.5, 6.0], 
		[5, 10], [7, 9], [10.0, 8.5], 
		[13, 8], ]);
}

module UbuntuB_contour00x53_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([17, 8], [19, 8], [20.5, 8.0],steps,10);
	BezConic([20.5, 8.0], [22, 8], [23.0, 9.0],steps,10);
	BezConic([23.0, 9.0], [24, 10], [24.0, 10.5],steps,10);
	BezConic([24.0, 10.5], [24, 11], [24, 12],steps,10);
	BezConic([24, 12], [24, 14], [22.0, 15.5],steps,10);
	BezConic([22.0, 15.5], [20, 17], [15, 19],steps,10);
	BezConic([15, 19], [13, 20], [11.0, 21.0],steps,10);
	BezConic([27.0, 44.0], [30, 43], [33, 42],steps,10);
	BezConic([30, 34], [28, 35], [25.5, 36.0],steps,10);
	BezConic([25.5, 36.0], [23, 37], [20, 37],steps,10);
	BezConic([20, 37], [17, 37], [15.0, 36.0],steps,10);
	BezConic([15.0, 36.0], [13, 35], [13, 33],steps,10);
	BezConic([13, 33], [13, 32], [14.0, 31.0],steps,10);
	BezConic([14.0, 31.0], [15, 30], [16.0, 29.5],steps,10);
	BezConic([18.0, 28.5], [19, 28], [21, 27],steps,10);
	BezConic([12.0, -0.5], [10, 0], [8.0, 0.5],steps,10);
	BezConic([4.5, 1.5], [3, 2], [2, 2],steps,10);
	BezConic([5, 10], [7, 9], [10.0, 8.5],steps,10);
	BezConic([10.0, 8.5], [13, 8], [17, 8],steps,10);
}
}

module UbuntuB_contour00x53_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([11.0, 21.0], [9, 22], [7.0, 23.5],steps,10);
	BezConic([7.0, 23.5], [5, 25], [4.0, 27.0],steps,10);
	BezConic([4.0, 27.0], [3, 29], [3, 32],steps,10);
	BezConic([3, 32], [3, 35], [4.0, 37.5],steps,10);
	BezConic([4.0, 37.5], [5, 40], [7.5, 42.0],steps,10);
	BezConic([7.5, 42.0], [10, 44], [13.0, 44.5],steps,10);
	BezConic([13.0, 44.5], [16, 45], [19, 45],steps,10);
	BezConic([19, 45], [24, 45], [27.0, 44.0],steps,10);
	BezConic([16.0, 29.5], [17, 29], [18.0, 28.5],steps,10);
	BezConic([21, 27], [25, 26], [27.5, 24.5],steps,10);
	BezConic([27.5, 24.5], [30, 23], [31.5, 21.5],steps,10);
	BezConic([31.5, 21.5], [33, 20], [34.0, 17.5],steps,10);
	BezConic([34.0, 17.5], [35, 15], [35, 12],steps,10);
	BezConic([35, 12], [35, 6], [30.5, 2.5],steps,10);
	BezConic([30.5, 2.5], [26, -1], [17, -1],steps,10);
	BezConic([17, -1], [14, -1], [12.0, -0.5],steps,10);
	BezConic([8.0, 0.5], [6, 1], [4.5, 1.5],steps,10);
}
}

module UbuntuB_contour00x53(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x53_skeleton();
			UbuntuB_contour00x53_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x53_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x53(steps=2) {
	difference() {
		UbuntuB_contour00x53(steps);
		
	}
}

UbuntuB_bbox0x53=[[2, -1], [35, 45]];

module UbuntuB_letter0x53(detail=2) {
	UbuntuB_chunk10x53(steps=detail);
} //end skeleton

module UbuntuB_contour00x54_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[38, 44], [38.0, 40.0], [38, 36], 
		[31.5, 36.0], [25, 36], [25.0, 18.0], 
		[25, 0], [20.0, 0.0], [15, 0], 
		[15.0, 18.0], [15, 36], [8.0, 36.0], 
		[1, 36], [1.0, 40.0], [1, 44], 
		[19.5, 44.0], ]);
}

module UbuntuB_contour00x54_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x54_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x54(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x54_skeleton();
			UbuntuB_contour00x54_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x54_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x54(steps=2) {
	difference() {
		UbuntuB_contour00x54(steps);
		
	}
}

UbuntuB_bbox0x54=[[1, 0], [38, 44]];

module UbuntuB_letter0x54(detail=2) {
	UbuntuB_chunk10x54(steps=detail);
} //end skeleton

module UbuntuB_contour00x55_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[22, -1], [18, -1], [14.5, 0.5], 
		[11, 2], [9.0, 4.0], [7, 6], 
		[5.5, 9.5], [4, 13], [4, 17], 
		[4.0, 30.5], [4, 44], [9.0, 44.0], 
		[14, 44], [14.0, 31.0], [14, 18], 
		[14, 15], [15.0, 13.0], [16, 11], 
		[17.0, 10.0], [18, 9], [19.5, 8.5], 
		[21, 8], [23, 8], [26, 8], 
		[28.5, 10.0], [31, 12], [31, 18], 
		[31.0, 31.0], [31, 44], [36.0, 44.0], 
		[41, 44], [41.0, 30.5], [41, 17], 
		[41, 13], [40.0, 9.5], [39, 6], 
		[36.5, 4.0], [34, 2], [30.5, 0.5], 
		[27, -1], ]);
}

module UbuntuB_contour00x55_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 18], [14, 15], [15.0, 13.0],steps,10);
	BezConic([15.0, 13.0], [16, 11], [17.0, 10.0],steps,10);
	BezConic([17.0, 10.0], [18, 9], [19.5, 8.5],steps,10);
	BezConic([19.5, 8.5], [21, 8], [23, 8],steps,10);
	BezConic([23, 8], [26, 8], [28.5, 10.0],steps,10);
	BezConic([28.5, 10.0], [31, 12], [31, 18],steps,10);
}
}

module UbuntuB_contour00x55_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([22, -1], [18, -1], [14.5, 0.5],steps,10);
	BezConic([14.5, 0.5], [11, 2], [9.0, 4.0],steps,10);
	BezConic([9.0, 4.0], [7, 6], [5.5, 9.5],steps,10);
	BezConic([5.5, 9.5], [4, 13], [4, 17],steps,10);
	BezConic([41, 17], [41, 13], [40.0, 9.5],steps,10);
	BezConic([40.0, 9.5], [39, 6], [36.5, 4.0],steps,10);
	BezConic([36.5, 4.0], [34, 2], [30.5, 0.5],steps,10);
	BezConic([30.5, 0.5], [27, -1], [22, -1],steps,10);
}
}

module UbuntuB_contour00x55(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x55_skeleton();
			UbuntuB_contour00x55_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x55_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x55(steps=2) {
	difference() {
		UbuntuB_contour00x55(steps);
		
	}
}

UbuntuB_bbox0x55=[[4, -1], [41, 44]];

module UbuntuB_letter0x55(detail=2) {
	UbuntuB_chunk10x55(steps=detail);
} //end skeleton

module UbuntuB_contour00x56_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[18, 0], [16, 6], [13.5, 12.0], 
		[11, 18], [8.5, 23.5], [6, 29], 
		[4.0, 34.5], [2, 40], [1, 44], 
		[6.5, 44.0], [12, 44], [13, 41], 
		[14.5, 36.5], [16, 32], [17.5, 27.5], 
		[19, 23], [20.5, 19.0], [22, 15], 
		[23, 12], [25, 15], [26.5, 19.0], 
		[28, 23], [29.5, 27.5], [31, 32], 
		[32.5, 36.5], [34, 41], [35, 44], 
		[40.5, 44.0], [46, 44], [44, 40], 
		[42.0, 34.5], [40, 29], [38.0, 23.5], 
		[36, 18], [33.5, 12.0], [31, 6], 
		[28, 0],[23.0, 0.0], ]);
}

module UbuntuB_contour00x56_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([18, 0], [16, 6], [13.5, 12.0],steps,10);
	BezConic([13.5, 12.0], [11, 18], [8.5, 23.5],steps,10);
	BezConic([12, 44], [13, 41], [14.5, 36.5],steps,10);
	BezConic([14.5, 36.5], [16, 32], [17.5, 27.5],steps,10);
	BezConic([17.5, 27.5], [19, 23], [20.5, 19.0],steps,10);
	BezConic([23, 12], [25, 15], [26.5, 19.0],steps,10);
	BezConic([26.5, 19.0], [28, 23], [29.5, 27.5],steps,10);
	BezConic([29.5, 27.5], [31, 32], [32.5, 36.5],steps,10);
	BezConic([32.5, 36.5], [34, 41], [35, 44],steps,10);
	BezConic([46, 44], [44, 40], [42.0, 34.5],steps,10);
	BezConic([42.0, 34.5], [40, 29], [38.0, 23.5],steps,10);
}
}

module UbuntuB_contour00x56_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([8.5, 23.5], [6, 29], [4.0, 34.5],steps,10);
	BezConic([4.0, 34.5], [2, 40], [1, 44],steps,10);
	BezConic([20.5, 19.0], [22, 15], [23, 12],steps,10);
	BezConic([38.0, 23.5], [36, 18], [33.5, 12.0],steps,10);
	BezConic([33.5, 12.0], [31, 6], [28, 0],steps,10);
}
}

module UbuntuB_contour00x56(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x56_skeleton();
			UbuntuB_contour00x56_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x56_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x56(steps=2) {
	difference() {
		UbuntuB_contour00x56(steps);
		
	}
}

UbuntuB_bbox0x56=[[1, 0], [46, 44]];

module UbuntuB_letter0x56(detail=2) {
	UbuntuB_chunk10x56(steps=detail);
} //end skeleton

module UbuntuB_contour00x57_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[35, 40], [36, 37], [37.0, 33.5], 
		[38, 30], [39.0, 26.5], [40, 23], 
		[41.0, 19.5], [42, 16], [43, 13], 
		[44, 17], [44.5, 20.5], [45, 24], 
		[46.0, 28.0], [47, 32], [47.5, 36.5], 
		[48, 41], [49, 44], [54.0, 44.0], 
		[59, 44], [57, 33], [54.0, 21.5], 
		[51, 10], [48, 0], [43.5, 0.0], 
		[39, 0], [37, 6], [34.5, 13.0], 
		[32, 20], [30, 26], [28, 20], 
		[26.0, 13.0], [24, 6], [22, 0], 
		[17.5, 0.0], [13, 0], [9, 10], 
		[6.5, 21.5], [4, 33], [1, 44], 
		[6.5, 44.0], [12, 44], [13, 41], 
		[13.5, 36.5], [14, 32], [15.0, 28.0], 
		[16, 24], [17.0, 20.5], [18, 17], 
		[19, 13], [20, 16], [21.0, 19.5], 
		[22, 23], [23.0, 27.0], [24, 31], 
		[25.0, 34.0], [26, 37], [26, 40], 
		[30.5, 40.0], ]);
}

module UbuntuB_contour00x57_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([37.0, 33.5], [38, 30], [39.0, 26.5],steps,10);
	BezConic([39.0, 26.5], [40, 23], [41.0, 19.5],steps,10);
	BezConic([41.0, 19.5], [42, 16], [43, 13],steps,10);
	BezConic([43, 13], [44, 17], [44.5, 20.5],steps,10);
	BezConic([46.0, 28.0], [47, 32], [47.5, 36.5],steps,10);
	BezConic([39, 0], [37, 6], [34.5, 13.0],steps,10);
	BezConic([30, 26], [28, 20], [26.0, 13.0],steps,10);
	BezConic([6.5, 21.5], [4, 33], [1, 44],steps,10);
	BezConic([13.5, 36.5], [14, 32], [15.0, 28.0],steps,10);
	BezConic([15.0, 28.0], [16, 24], [17.0, 20.5],steps,10);
	BezConic([19, 13], [20, 16], [21.0, 19.5],steps,10);
	BezConic([21.0, 19.5], [22, 23], [23.0, 27.0],steps,10);
	BezConic([25.0, 34.0], [26, 37], [26, 40],steps,10);
}
}

module UbuntuB_contour00x57_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([35, 40], [36, 37], [37.0, 33.5],steps,10);
	BezConic([44.5, 20.5], [45, 24], [46.0, 28.0],steps,10);
	BezConic([47.5, 36.5], [48, 41], [49, 44],steps,10);
	BezConic([59, 44], [57, 33], [54.0, 21.5],steps,10);
	BezConic([54.0, 21.5], [51, 10], [48, 0],steps,10);
	BezConic([34.5, 13.0], [32, 20], [30, 26],steps,10);
	BezConic([26.0, 13.0], [24, 6], [22, 0],steps,10);
	BezConic([13, 0], [9, 10], [6.5, 21.5],steps,10);
	BezConic([12, 44], [13, 41], [13.5, 36.5],steps,10);
	BezConic([17.0, 20.5], [18, 17], [19, 13],steps,10);
	BezConic([23.0, 27.0], [24, 31], [25.0, 34.0],steps,10);
}
}

module UbuntuB_contour00x57(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x57_skeleton();
			UbuntuB_contour00x57_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x57_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x57(steps=2) {
	difference() {
		UbuntuB_contour00x57(steps);
		
	}
}

UbuntuB_bbox0x57=[[1, 0], [59, 44]];

module UbuntuB_letter0x57(detail=2) {
	UbuntuB_chunk10x57(steps=detail);
} //end skeleton

module UbuntuB_contour00x58_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[31, 0], [29, 4], [26.5, 7.5], 
		[24, 11], [21, 15], [21, 14], 
		[19.5, 12.0], [18, 10], [16.5, 7.5], 
		[15, 5], [14.0, 3.0], [13, 1], 
		[12, 0], [6.5, 0.0], [1, 0], 
		[3, 5], [7.0, 11.0], [11, 17], 
		[16, 23], [8.5, 33.5], [1, 44], 
		[7.0, 44.0], [13, 44], [17.5, 37.5], 
		[22, 31], [26.0, 37.5], [30, 44], 
		[36.0, 44.0], [42, 44], [35.0, 33.5], 
		[28, 23], [33, 16], [36.5, 10.0], 
		[40, 4], [43, 0], [37.0, 0.0], 
		 ]);
}

module UbuntuB_contour00x58_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([31, 0], [29, 4], [26.5, 7.5],steps,10);
	BezConic([26.5, 7.5], [24, 11], [21, 15],steps,10);
	BezConic([19.5, 12.0], [18, 10], [16.5, 7.5],steps,10);
	BezConic([16.5, 7.5], [15, 5], [14.0, 3.0],steps,10);
	BezConic([36.5, 10.0], [40, 4], [43, 0],steps,10);
}
}

module UbuntuB_contour00x58_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([21, 15], [21, 14], [19.5, 12.0],steps,10);
	BezConic([14.0, 3.0], [13, 1], [12, 0],steps,10);
	BezConic([1, 0], [3, 5], [7.0, 11.0],steps,10);
	BezConic([7.0, 11.0], [11, 17], [16, 23],steps,10);
	BezConic([28, 23], [33, 16], [36.5, 10.0],steps,10);
}
}

module UbuntuB_contour00x58(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x58_skeleton();
			UbuntuB_contour00x58_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x58_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x58(steps=2) {
	difference() {
		UbuntuB_contour00x58(steps);
		
	}
}

UbuntuB_bbox0x58=[[1, 0], [43, 44]];

module UbuntuB_letter0x58(detail=2) {
	UbuntuB_chunk10x58(steps=detail);
} //end skeleton

module UbuntuB_contour00x59_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[21, 26], [24, 31], [26.5, 35.5], 
		[29, 40], [31, 44], [36.5, 44.0], 
		[42, 44], [38, 37], [34.5, 30.5], 
		[31, 24], [26, 17], [26.0, 8.5], 
		[26, 0], [21.0, 0.0], [16, 0], 
		[16.0, 8.5], [16, 17], [12, 24], 
		[8.0, 30.5], [4, 37], [0, 44], 
		[6.0, 44.0], [12, 44], [14, 40], 
		[16.5, 35.5],[19, 31], ]);
}

module UbuntuB_contour00x59_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([21, 26], [24, 31], [26.5, 35.5],steps,10);
	BezConic([26.5, 35.5], [29, 40], [31, 44],steps,10);
	BezConic([42, 44], [38, 37], [34.5, 30.5],steps,10);
	BezConic([16, 17], [12, 24], [8.0, 30.5],steps,10);
	BezConic([12, 44], [14, 40], [16.5, 35.5],steps,10);
}
}

module UbuntuB_contour00x59_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([34.5, 30.5], [31, 24], [26, 17],steps,10);
	BezConic([8.0, 30.5], [4, 37], [0, 44],steps,10);
	BezConic([16.5, 35.5], [19, 31], [21, 26],steps,10);
}
}

module UbuntuB_contour00x59(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x59_skeleton();
			UbuntuB_contour00x59_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x59_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x59(steps=2) {
	difference() {
		UbuntuB_contour00x59(steps);
		
	}
}

UbuntuB_bbox0x59=[[0, 0], [42, 44]];

module UbuntuB_letter0x59(detail=2) {
	UbuntuB_chunk10x59(steps=detail);
} //end skeleton

module UbuntuB_contour00x5a_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[36, 37], [34, 35], [31.5, 32.0], 
		[29, 29], [26.0, 25.0], [23, 21], 
		[20.0, 16.5], [17, 12], [15, 8], 
		[26.0, 8.0], [37, 8], [37.0, 4.0], 
		[37, 0], [19.5, 0.0], [2, 0], 
		[2.0, 3.0], [2, 6], [4, 9], 
		[6.5, 13.0], [9, 17], [12.0, 21.0], 
		[15, 25], [18.0, 29.0], [21, 33], 
		[23, 36], [13.0, 36.0], [3, 36], 
		[3.0, 40.0], [3, 44], [19.5, 44.0], 
		[36, 44],[36.0, 40.5], ]);
}

module UbuntuB_contour00x5a_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([36, 37], [34, 35], [31.5, 32.0],steps,10);
	BezConic([31.5, 32.0], [29, 29], [26.0, 25.0],steps,10);
	BezConic([26.0, 25.0], [23, 21], [20.0, 16.5],steps,10);
	BezConic([20.0, 16.5], [17, 12], [15, 8],steps,10);
	BezConic([2, 6], [4, 9], [6.5, 13.0],steps,10);
	BezConic([12.0, 21.0], [15, 25], [18.0, 29.0],steps,10);
	BezConic([18.0, 29.0], [21, 33], [23, 36],steps,10);
}
}

module UbuntuB_contour00x5a_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([6.5, 13.0], [9, 17], [12.0, 21.0],steps,10);
}
}

module UbuntuB_contour00x5a(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x5a_skeleton();
			UbuntuB_contour00x5a_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x5a_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x5a(steps=2) {
	difference() {
		UbuntuB_contour00x5a(steps);
		
	}
}

UbuntuB_bbox0x5a=[[2, 0], [37, 44]];

module UbuntuB_letter0x5a(detail=2) {
	UbuntuB_chunk10x5a(steps=detail);
} //end skeleton

module UbuntuB_contour00x5b_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[6, 50], [14.5, 50.0], [23, 50], 
		[23.0, 46.0], [23, 42], [19.0, 42.0], 
		[15, 42], [15.0, 19.0], [15, -4], 
		[19.0, -4.0], [23, -4], [23.0, -8.0], 
		[23, -12], [14.5, -12.0], [6, -12], 
		[6.0, 19.0], ]);
}

module UbuntuB_contour00x5b_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x5b_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x5b(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x5b_skeleton();
			UbuntuB_contour00x5b_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x5b_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x5b(steps=2) {
	difference() {
		UbuntuB_contour00x5b(steps);
		
	}
}

UbuntuB_bbox0x5b=[[6, -12], [23, 50]];

module UbuntuB_letter0x5b(detail=2) {
	UbuntuB_chunk10x5b(steps=detail);
} //end skeleton

module UbuntuB_contour00x5c_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[-2, 50], [3.0, 50.0], [8, 50], 
		[19.0, 19.0], [30, -12], [25.0, -12.0], 
		[20, -12],[9.0, 19.0], ]);
}

module UbuntuB_contour00x5c_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x5c_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x5c(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x5c_skeleton();
			UbuntuB_contour00x5c_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x5c_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x5c(steps=2) {
	difference() {
		UbuntuB_contour00x5c(steps);
		
	}
}

UbuntuB_bbox0x5c=[[-2, -12], [30, 50]];

module UbuntuB_letter0x5c(detail=2) {
	UbuntuB_chunk10x5c(steps=detail);
} //end skeleton

module UbuntuB_contour00x5d_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[18, -12], [9.5, -12.0], [1, -12], 
		[1.0, -8.0], [1, -4], [5.0, -4.0], 
		[9, -4], [9.0, 19.0], [9, 42], 
		[5.0, 42.0], [1, 42], [1.0, 46.0], 
		[1, 50], [9.5, 50.0], [18, 50], 
		[18.0, 19.0], ]);
}

module UbuntuB_contour00x5d_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x5d_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x5d(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x5d_skeleton();
			UbuntuB_contour00x5d_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x5d_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x5d(steps=2) {
	difference() {
		UbuntuB_contour00x5d(steps);
		
	}
}

UbuntuB_bbox0x5d=[[1, -12], [18, 50]];

module UbuntuB_letter0x5d(detail=2) {
	UbuntuB_chunk10x5d(steps=detail);
} //end skeleton

module UbuntuB_contour00x5e_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[35, 22], [31.0, 20.0], [27, 18], 
		[22.5, 26.0], [18, 34], [13.5, 26.0], 
		[9, 18], [5.0, 20.0], [1, 22], 
		[7.5, 33.5], [14, 45], [18.0, 45.0], 
		[22, 45],[28.5, 33.5], ]);
}

module UbuntuB_contour00x5e_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x5e_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x5e(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x5e_skeleton();
			UbuntuB_contour00x5e_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x5e_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x5e(steps=2) {
	difference() {
		UbuntuB_contour00x5e(steps);
		
	}
}

UbuntuB_bbox0x5e=[[1, 18], [35, 45]];

module UbuntuB_letter0x5e(detail=2) {
	UbuntuB_chunk10x5e(steps=detail);
} //end skeleton

module UbuntuB_contour00x5f_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[0, -4], [16.0, -4.0], [32, -4], 
		[32.0, -8.0], [32, -12], [16.0, -12.0], 
		[0, -12],[0.0, -8.0], ]);
}

module UbuntuB_contour00x5f_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x5f_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x5f(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x5f_skeleton();
			UbuntuB_contour00x5f_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x5f_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x5f(steps=2) {
	difference() {
		UbuntuB_contour00x5f(steps);
		
	}
}

UbuntuB_bbox0x5f=[[0, -12], [32, -4]];

module UbuntuB_letter0x5f(detail=2) {
	UbuntuB_chunk10x5f(steps=detail);
} //end skeleton

module UbuntuB_contour00x60_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[7, 51], [11.5, 46.0], [16, 41], 
		[14.0, 39.0], [12, 37], [6.5, 41.5], 
		[1, 46],[4.0, 48.5], ]);
}

module UbuntuB_contour00x60_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x60_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x60(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x60_skeleton();
			UbuntuB_contour00x60_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x60_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x60(steps=2) {
	difference() {
		UbuntuB_contour00x60(steps);
		
	}
}

UbuntuB_bbox0x60=[[1, 37], [16, 51]];

module UbuntuB_letter0x60(detail=2) {
	UbuntuB_chunk10x60(steps=detail);
} //end skeleton

module UbuntuB_contour00x61_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[17, 7], [19, 7], [20.0, 7.0], 
		[21, 7], [22, 7], [22.0, 10.5], 
		[22, 14], [22, 14], [20.5, 14.5], 
		[19, 15], [18, 15], [17, 15], 
		[16.0, 14.5], [15, 14], [14.0, 13.5], 
		[13, 13], [12.5, 12.5], [12, 12], 
		[12, 11], [12, 8], [13.5, 7.5], 
		[15, 7], ]);
}

module UbuntuB_contour00x61_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([17, 7], [19, 7], [20.0, 7.0],steps,10);
	BezConic([20.0, 7.0], [21, 7], [22, 7],steps,10);
	BezConic([22, 14], [22, 14], [20.5, 14.5],steps,10);
	BezConic([20.5, 14.5], [19, 15], [18, 15],steps,10);
	BezConic([18, 15], [17, 15], [16.0, 14.5],steps,10);
	BezConic([16.0, 14.5], [15, 14], [14.0, 13.5],steps,10);
	BezConic([14.0, 13.5], [13, 13], [12.5, 12.5],steps,10);
	BezConic([12.5, 12.5], [12, 12], [12, 11],steps,10);
	BezConic([12, 11], [12, 8], [13.5, 7.5],steps,10);
	BezConic([13.5, 7.5], [15, 7], [17, 7],steps,10);
}
}

module UbuntuB_contour00x61_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x61(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x61_skeleton();
			UbuntuB_contour00x61_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x61_additive_curves(steps);
	}
}

module UbuntuB_contour10x61_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[17, 35], [21, 35], [23.5, 34.0], 
		[26, 33], [28.0, 31.0], [30, 29], 
		[30.5, 26.5], [31, 24], [31, 21], 
		[31.0, 11.0], [31, 1], [29, 1], 
		[25.5, 0.0], [22, -1], [17, -1], 
		[13, -1], [10.5, -0.5], [8, 0], 
		[6.0, 1.5], [4, 3], [3.0, 5.0], 
		[2, 7], [2, 10], [2, 13], 
		[3.5, 15.0], [5, 17], [7.0, 18.5], 
		[9, 20], [11.5, 20.5], [14, 21], 
		[16, 21], [18, 21], [19.5, 21.0], 
		[21, 21], [22, 20], [22.0, 20.5], 
		[22, 21], [22, 24], [20.5, 25.5], 
		[19, 27], [15, 27], [13, 27], 
		[10.5, 26.5], [8, 26], [7, 25], 
		[6.0, 29.0], [5, 33], [6, 33], 
		[7.5, 33.5], [9, 34], [10.5, 34.0], 
		[12, 34], [13.5, 34.5], [15, 35], 
		 ]);
}

module UbuntuB_contour10x61_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([31, 1], [29, 1], [25.5, 0.0],steps,10);
	BezConic([16, 21], [18, 21], [19.5, 21.0],steps,10);
	BezConic([22, 21], [22, 24], [20.5, 25.5],steps,10);
	BezConic([20.5, 25.5], [19, 27], [15, 27],steps,10);
	BezConic([15, 27], [13, 27], [10.5, 26.5],steps,10);
	BezConic([10.5, 26.5], [8, 26], [7, 25],steps,10);
	BezConic([5, 33], [6, 33], [7.5, 33.5],steps,10);
	BezConic([10.5, 34.0], [12, 34], [13.5, 34.5],steps,10);
}
}

module UbuntuB_contour10x61_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([17, 35], [21, 35], [23.5, 34.0],steps,10);
	BezConic([23.5, 34.0], [26, 33], [28.0, 31.0],steps,10);
	BezConic([28.0, 31.0], [30, 29], [30.5, 26.5],steps,10);
	BezConic([30.5, 26.5], [31, 24], [31, 21],steps,10);
	BezConic([25.5, 0.0], [22, -1], [17, -1],steps,10);
	BezConic([17, -1], [13, -1], [10.5, -0.5],steps,10);
	BezConic([10.5, -0.5], [8, 0], [6.0, 1.5],steps,10);
	BezConic([6.0, 1.5], [4, 3], [3.0, 5.0],steps,10);
	BezConic([3.0, 5.0], [2, 7], [2, 10],steps,10);
	BezConic([2, 10], [2, 13], [3.5, 15.0],steps,10);
	BezConic([3.5, 15.0], [5, 17], [7.0, 18.5],steps,10);
	BezConic([7.0, 18.5], [9, 20], [11.5, 20.5],steps,10);
	BezConic([11.5, 20.5], [14, 21], [16, 21],steps,10);
	BezConic([19.5, 21.0], [21, 21], [22, 20],steps,10);
	BezConic([7.5, 33.5], [9, 34], [10.5, 34.0],steps,10);
	BezConic([13.5, 34.5], [15, 35], [17, 35],steps,10);
}
}

module UbuntuB_contour10x61(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x61_skeleton();
			UbuntuB_contour10x61_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x61_subtractive_curves(steps);
	}
}

module UbuntuB_chunk00x61(steps=2) {
	difference() {
		
		scale([1,1,1.1]) UbuntuB_contour00x61(steps);
	}
}

module UbuntuB_chunk10x61(steps=2) {
	difference() {
		UbuntuB_contour10x61(steps);
		
	}
}

UbuntuB_bbox0x61=[[2, -1], [31, 35]];

module UbuntuB_letter0x61(detail=2) {
	UbuntuB_chunk00x61(steps=detail);
	UbuntuB_chunk10x61(steps=detail);
} //end skeleton

module UbuntuB_contour00x62_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[26, 17], [26, 26], [19, 26], 
		[18, 26], [16.5, 26.0], [15, 26], 
		[14, 25], [14.0, 16.5], [14, 8], 
		[15, 7], [16.0, 7.0], [17, 7], 
		[18, 7], [22, 7], [24.0, 10.0], 
		[26, 13], ]);
}

module UbuntuB_contour00x62_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([26, 17], [26, 26], [19, 26],steps,10);
	BezConic([19, 26], [18, 26], [16.5, 26.0],steps,10);
	BezConic([16.5, 26.0], [15, 26], [14, 25],steps,10);
	BezConic([14, 8], [15, 7], [16.0, 7.0],steps,10);
	BezConic([16.0, 7.0], [17, 7], [18, 7],steps,10);
	BezConic([18, 7], [22, 7], [24.0, 10.0],steps,10);
	BezConic([24.0, 10.0], [26, 13], [26, 17],steps,10);
}
}

module UbuntuB_contour00x62_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x62(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x62_skeleton();
			UbuntuB_contour00x62_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x62_additive_curves(steps);
	}
}

module UbuntuB_contour10x62_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[36, 17], [36, 13], [34.5, 9.5], 
		[33, 6], [31.0, 4.0], [29, 2], 
		[25.5, 0.5], [22, -1], [18, -1], 
		[17, -1], [15.0, -1.0], [13, -1], 
		[11.0, -0.5], [9, 0], [7.5, 0.5], 
		[6, 1], [4, 1], [4.0, 24.5], 
		[4, 48], [9.0, 49.0], [14, 50], 
		[14.0, 41.5], [14, 33], [16, 34], 
		[17.5, 34.0], [19, 34], [21, 34], 
		[25, 34], [27.5, 33.0], [30, 32], 
		[32.0, 29.5], [34, 27], [35.0, 24.0], 
		[36, 21], ]);
}

module UbuntuB_contour10x62_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([18, -1], [17, -1], [15.0, -1.0],steps,10);
	BezConic([7.5, 0.5], [6, 1], [4, 1],steps,10);
	BezConic([17.5, 34.0], [19, 34], [21, 34],steps,10);
}
}

module UbuntuB_contour10x62_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([36, 17], [36, 13], [34.5, 9.5],steps,10);
	BezConic([34.5, 9.5], [33, 6], [31.0, 4.0],steps,10);
	BezConic([31.0, 4.0], [29, 2], [25.5, 0.5],steps,10);
	BezConic([25.5, 0.5], [22, -1], [18, -1],steps,10);
	BezConic([15.0, -1.0], [13, -1], [11.0, -0.5],steps,10);
	BezConic([11.0, -0.5], [9, 0], [7.5, 0.5],steps,10);
	BezConic([14, 33], [16, 34], [17.5, 34.0],steps,10);
	BezConic([21, 34], [25, 34], [27.5, 33.0],steps,10);
	BezConic([27.5, 33.0], [30, 32], [32.0, 29.5],steps,10);
	BezConic([32.0, 29.5], [34, 27], [35.0, 24.0],steps,10);
	BezConic([35.0, 24.0], [36, 21], [36, 17],steps,10);
}
}

module UbuntuB_contour10x62(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x62_skeleton();
			UbuntuB_contour10x62_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x62_subtractive_curves(steps);
	}
}

module UbuntuB_chunk00x62(steps=2) {
	difference() {
		
		scale([1,1,1.1]) UbuntuB_contour00x62(steps);
	}
}

module UbuntuB_chunk10x62(steps=2) {
	difference() {
		UbuntuB_contour10x62(steps);
		
	}
}

UbuntuB_bbox0x62=[[4, -1], [36, 50]];

module UbuntuB_letter0x62(detail=2) {
	UbuntuB_chunk00x62(steps=detail);
	UbuntuB_chunk10x62(steps=detail);
} //end skeleton

module UbuntuB_contour00x63_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[3, 17], [3, 20], [4.0, 23.5], 
		[5, 27], [7.5, 29.5], [10, 32], 
		[13.0, 33.5], [16, 35], [20, 35], 
		[23, 35], [25.0, 34.5], [27, 34], 
		[30, 33], [29.0, 29.0], [28, 25], 
		[26, 26], [24.5, 26.0], [23, 26], 
		[21, 26], [17, 26], [15.0, 23.5], 
		[13, 21], [13, 17], [13, 12], 
		[15.0, 9.5], [17, 7], [21, 7], 
		[23, 7], [25.0, 7.5], [27, 8], 
		[29, 9], [29.5, 5.0], [30, 1], 
		[28, 0], [25.5, -0.5], [23, -1], 
		[20, -1], [16, -1], [12.5, 0.5], 
		[9, 2], [7.0, 4.5], [5, 7], 
		[4.0, 10.0],[3, 13], ]);
}

module UbuntuB_contour00x63_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([28, 25], [26, 26], [24.5, 26.0],steps,10);
	BezConic([24.5, 26.0], [23, 26], [21, 26],steps,10);
	BezConic([21, 26], [17, 26], [15.0, 23.5],steps,10);
	BezConic([15.0, 23.5], [13, 21], [13, 17],steps,10);
	BezConic([13, 17], [13, 12], [15.0, 9.5],steps,10);
	BezConic([15.0, 9.5], [17, 7], [21, 7],steps,10);
	BezConic([21, 7], [23, 7], [25.0, 7.5],steps,10);
	BezConic([25.0, 7.5], [27, 8], [29, 9],steps,10);
}
}

module UbuntuB_contour00x63_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([3, 17], [3, 20], [4.0, 23.5],steps,10);
	BezConic([4.0, 23.5], [5, 27], [7.5, 29.5],steps,10);
	BezConic([7.5, 29.5], [10, 32], [13.0, 33.5],steps,10);
	BezConic([13.0, 33.5], [16, 35], [20, 35],steps,10);
	BezConic([20, 35], [23, 35], [25.0, 34.5],steps,10);
	BezConic([25.0, 34.5], [27, 34], [30, 33],steps,10);
	BezConic([30, 1], [28, 0], [25.5, -0.5],steps,10);
	BezConic([25.5, -0.5], [23, -1], [20, -1],steps,10);
	BezConic([20, -1], [16, -1], [12.5, 0.5],steps,10);
	BezConic([12.5, 0.5], [9, 2], [7.0, 4.5],steps,10);
	BezConic([7.0, 4.5], [5, 7], [4.0, 10.0],steps,10);
	BezConic([4.0, 10.0], [3, 13], [3, 17],steps,10);
}
}

module UbuntuB_contour00x63(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x63_skeleton();
			UbuntuB_contour00x63_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x63_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x63(steps=2) {
	difference() {
		UbuntuB_contour00x63(steps);
		
	}
}

UbuntuB_bbox0x63=[[3, -1], [30, 35]];

module UbuntuB_letter0x63(detail=2) {
	UbuntuB_chunk10x63(steps=detail);
} //end skeleton

module UbuntuB_contour00x64_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[13, 17], [13, 13], [15.0, 10.0], 
		[17, 7], [20, 7], [22, 7], 
		[23.0, 7.0], [24, 7], [25, 8], 
		[25.0, 16.5], [25, 25], [24, 26], 
		[22.5, 26.0], [21, 26], [19, 26], 
		[13, 26], ]);
}

module UbuntuB_contour00x64_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([13, 17], [13, 13], [15.0, 10.0],steps,10);
	BezConic([15.0, 10.0], [17, 7], [20, 7],steps,10);
	BezConic([20, 7], [22, 7], [23.0, 7.0],steps,10);
	BezConic([23.0, 7.0], [24, 7], [25, 8],steps,10);
	BezConic([25, 25], [24, 26], [22.5, 26.0],steps,10);
	BezConic([22.5, 26.0], [21, 26], [19, 26],steps,10);
	BezConic([19, 26], [13, 26], [13, 17],steps,10);
}
}

module UbuntuB_contour00x64_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x64(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x64_skeleton();
			UbuntuB_contour00x64_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x64_additive_curves(steps);
	}
}

module UbuntuB_contour10x64_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[34, 1], [33, 1], [31.5, 0.5], 
		[30, 0], [28.0, -0.5], [26, -1], 
		[24.0, -1.0], [22, -1], [20, -1], 
		[16, -1], [13.0, 0.5], [10, 2], 
		[7.5, 4.0], [5, 6], [4.0, 9.5], 
		[3, 13], [3, 17], [3, 21], 
		[4.0, 24.0], [5, 27], [7.0, 29.5], 
		[9, 32], [11.5, 33.0], [14, 34], 
		[18, 34], [20, 34], [21.5, 34.0], 
		[23, 34], [25, 33], [25.0, 40.5], 
		[25, 48], [29.5, 49.0], [34, 50], 
		[34.0, 25.5], ]);
}

module UbuntuB_contour10x64_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([34, 1], [33, 1], [31.5, 0.5],steps,10);
	BezConic([24.0, -1.0], [22, -1], [20, -1],steps,10);
	BezConic([18, 34], [20, 34], [21.5, 34.0],steps,10);
}
}

module UbuntuB_contour10x64_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([31.5, 0.5], [30, 0], [28.0, -0.5],steps,10);
	BezConic([28.0, -0.5], [26, -1], [24.0, -1.0],steps,10);
	BezConic([20, -1], [16, -1], [13.0, 0.5],steps,10);
	BezConic([13.0, 0.5], [10, 2], [7.5, 4.0],steps,10);
	BezConic([7.5, 4.0], [5, 6], [4.0, 9.5],steps,10);
	BezConic([4.0, 9.5], [3, 13], [3, 17],steps,10);
	BezConic([3, 17], [3, 21], [4.0, 24.0],steps,10);
	BezConic([4.0, 24.0], [5, 27], [7.0, 29.5],steps,10);
	BezConic([7.0, 29.5], [9, 32], [11.5, 33.0],steps,10);
	BezConic([11.5, 33.0], [14, 34], [18, 34],steps,10);
	BezConic([21.5, 34.0], [23, 34], [25, 33],steps,10);
}
}

module UbuntuB_contour10x64(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x64_skeleton();
			UbuntuB_contour10x64_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x64_subtractive_curves(steps);
	}
}

module UbuntuB_chunk00x64(steps=2) {
	difference() {
		
		scale([1,1,1.1]) UbuntuB_contour00x64(steps);
	}
}

module UbuntuB_chunk10x64(steps=2) {
	difference() {
		UbuntuB_contour10x64(steps);
		
	}
}

UbuntuB_bbox0x64=[[3, -1], [34, 50]];

module UbuntuB_letter0x64(detail=2) {
	UbuntuB_chunk00x64(steps=detail);
	UbuntuB_chunk10x64(steps=detail);
} //end skeleton

module UbuntuB_contour00x65_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[3, 17], [3, 21], [4.5, 24.5], 
		[6, 28], [8.0, 30.0], [10, 32], 
		[13.0, 33.5], [16, 35], [19, 35], 
		[26, 35], [30.0, 30.5], [34, 26], 
		[34, 17], [34, 16], [34.0, 15.0], 
		[34, 14], [34, 14], [23.5, 14.0], 
		[13, 14], [13, 11], [15.5, 9.0], 
		[18, 7], [22, 7], [25, 7], 
		[27.5, 7.5], [30, 8], [31, 9], 
		[32.0, 5.0], [33, 1], [32, 1], 
		[30.5, 0.5], [29, 0], [27.5, -0.5], 
		[26, -1], [24.0, -1.0], [22, -1], 
		[21, -1], [16, -1], [12.5, 0.5], 
		[9, 2], [7.0, 4.0], [5, 6], 
		[4.0, 9.5],[3, 13], ]);
}

module UbuntuB_contour00x65_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([34, 17], [34, 16], [34.0, 15.0],steps,10);
	BezConic([34.0, 15.0], [34, 14], [34, 14],steps,10);
	BezConic([13, 14], [13, 11], [15.5, 9.0],steps,10);
	BezConic([15.5, 9.0], [18, 7], [22, 7],steps,10);
	BezConic([22, 7], [25, 7], [27.5, 7.5],steps,10);
	BezConic([27.5, 7.5], [30, 8], [31, 9],steps,10);
	BezConic([33, 1], [32, 1], [30.5, 0.5],steps,10);
	BezConic([30.5, 0.5], [29, 0], [27.5, -0.5],steps,10);
	BezConic([24.0, -1.0], [22, -1], [21, -1],steps,10);
}
}

module UbuntuB_contour00x65_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([3, 17], [3, 21], [4.5, 24.5],steps,10);
	BezConic([4.5, 24.5], [6, 28], [8.0, 30.0],steps,10);
	BezConic([8.0, 30.0], [10, 32], [13.0, 33.5],steps,10);
	BezConic([13.0, 33.5], [16, 35], [19, 35],steps,10);
	BezConic([19, 35], [26, 35], [30.0, 30.5],steps,10);
	BezConic([30.0, 30.5], [34, 26], [34, 17],steps,10);
	BezConic([27.5, -0.5], [26, -1], [24.0, -1.0],steps,10);
	BezConic([21, -1], [16, -1], [12.5, 0.5],steps,10);
	BezConic([12.5, 0.5], [9, 2], [7.0, 4.0],steps,10);
	BezConic([7.0, 4.0], [5, 6], [4.0, 9.5],steps,10);
	BezConic([4.0, 9.5], [3, 13], [3, 17],steps,10);
}
}

module UbuntuB_contour00x65(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x65_skeleton();
			UbuntuB_contour00x65_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x65_subtractive_curves(steps);
	}
}

module UbuntuB_contour10x65_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[25, 20], [25, 21], [25.0, 22.5], 
		[25, 24], [24.0, 25.0], [23, 26], 
		[22.0, 26.5], [21, 27], [19, 27], 
		[18, 27], [16.5, 26.5], [15, 26], 
		[14.5, 25.0], [14, 24], [13.5, 22.5], 
		[13, 21], [13, 20], [19.0, 20.0], 
		 ]);
}

module UbuntuB_contour10x65_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([25, 20], [25, 21], [25.0, 22.5],steps,10);
	BezConic([25.0, 22.5], [25, 24], [24.0, 25.0],steps,10);
	BezConic([24.0, 25.0], [23, 26], [22.0, 26.5],steps,10);
	BezConic([22.0, 26.5], [21, 27], [19, 27],steps,10);
	BezConic([19, 27], [18, 27], [16.5, 26.5],steps,10);
	BezConic([16.5, 26.5], [15, 26], [14.5, 25.0],steps,10);
	BezConic([14.5, 25.0], [14, 24], [13.5, 22.5],steps,10);
	BezConic([13.5, 22.5], [13, 21], [13, 20],steps,10);
}
}

module UbuntuB_contour10x65_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour10x65(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x65_skeleton();
			UbuntuB_contour10x65_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x65_additive_curves(steps);
	}
}

module UbuntuB_chunk10x65(steps=2) {
	difference() {
		UbuntuB_contour00x65(steps);
		scale([1,1,1.1]) UbuntuB_contour10x65(steps);
	}
}

UbuntuB_bbox0x65=[[3, -1], [34, 35]];

module UbuntuB_letter0x65(detail=2) {
	UbuntuB_chunk10x65(steps=detail);
} //end skeleton

module UbuntuB_contour00x66_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[19, 50], [22, 50], [24.0, 49.5], 
		[26, 49], [27, 48], [26.5, 44.0], 
		[26, 40], [24, 41], [22.5, 41.5], 
		[21, 42], [20, 42], [18, 42], 
		[17.0, 41.5], [16, 41], [15.5, 40.0], 
		[15, 39], [14.5, 38.0], [14, 37], 
		[14, 35], [14.0, 34.5], [14, 34], 
		[20.0, 34.0], [26, 34], [26.0, 30.0], 
		[26, 26], [20.0, 26.0], [14, 26], 
		[14.0, 13.0], [14, 0], [9.0, 0.0], 
		[4, 0], [4.0, 17.5], [4, 35], 
		[4, 42], [8.0, 46.0], [12, 50], 
		 ]);
}

module UbuntuB_contour00x66_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([26, 40], [24, 41], [22.5, 41.5],steps,10);
	BezConic([22.5, 41.5], [21, 42], [20, 42],steps,10);
	BezConic([20, 42], [18, 42], [17.0, 41.5],steps,10);
	BezConic([17.0, 41.5], [16, 41], [15.5, 40.0],steps,10);
	BezConic([15.5, 40.0], [15, 39], [14.5, 38.0],steps,10);
	BezConic([14.5, 38.0], [14, 37], [14, 35],steps,10);
}
}

module UbuntuB_contour00x66_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([19, 50], [22, 50], [24.0, 49.5],steps,10);
	BezConic([24.0, 49.5], [26, 49], [27, 48],steps,10);
	BezConic([4, 35], [4, 42], [8.0, 46.0],steps,10);
	BezConic([8.0, 46.0], [12, 50], [19, 50],steps,10);
}
}

module UbuntuB_contour00x66(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x66_skeleton();
			UbuntuB_contour00x66_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x66_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x66(steps=2) {
	difference() {
		UbuntuB_contour00x66(steps);
		
	}
}

UbuntuB_bbox0x66=[[4, 0], [27, 50]];

module UbuntuB_letter0x66(detail=2) {
	UbuntuB_chunk10x66(steps=detail);
} //end skeleton

module UbuntuB_contour00x67_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[13, 18], [13, 10], [19, 10], 
		[21, 10], [22.0, 10.5], [23, 11], 
		[24, 11], [24.0, 18.5], [24, 26], 
		[23, 27], [22.0, 27.0], [21, 27], 
		[20, 27], [16, 27], [14.5, 24.5], 
		[13, 22], ]);
}

module UbuntuB_contour00x67_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([13, 18], [13, 10], [19, 10],steps,10);
	BezConic([19, 10], [21, 10], [22.0, 10.5],steps,10);
	BezConic([24, 26], [23, 27], [22.0, 27.0],steps,10);
	BezConic([22.0, 27.0], [21, 27], [20, 27],steps,10);
	BezConic([20, 27], [16, 27], [14.5, 24.5],steps,10);
	BezConic([14.5, 24.5], [13, 22], [13, 18],steps,10);
}
}

module UbuntuB_contour00x67_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([22.0, 10.5], [23, 11], [24, 11],steps,10);
}
}

module UbuntuB_contour00x67(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x67_skeleton();
			UbuntuB_contour00x67_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x67_additive_curves(steps);
	}
}

module UbuntuB_contour10x67_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[34, 4], [34, -4], [29.5, -8.0], 
		[25, -12], [16, -12], [13, -12], 
		[10.0, -11.5], [7, -11], [5, -10], 
		[5.5, -6.0], [6, -2], [8, -3], 
		[10.5, -3.5], [13, -4], [17, -4], 
		[21, -4], [22.5, -2.0], [24, 0], 
		[24, 2], [24.0, 3.0], [24, 4], 
		[22, 3], [20.5, 2.5], [19, 2], 
		[17, 2], [10, 2], [6.5, 6.0], 
		[3, 10], [3, 18], [3, 22], 
		[4.0, 25.0], [5, 28], [7.5, 30.0], 
		[10, 32], [13.0, 33.0], [16, 34], 
		[20, 34], [22, 34], [23.5, 34.0], 
		[25, 34], [27.0, 34.0], [29, 34], 
		[30.5, 33.5], [32, 33], [34, 33], 
		[34.0, 18.5], ]);
}

module UbuntuB_contour10x67_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([6, -2], [8, -3], [10.5, -3.5],steps,10);
	BezConic([10.5, -3.5], [13, -4], [17, -4],steps,10);
	BezConic([17, -4], [21, -4], [22.5, -2.0],steps,10);
	BezConic([22.5, -2.0], [24, 0], [24, 2],steps,10);
	BezConic([20, 34], [22, 34], [23.5, 34.0],steps,10);
	BezConic([23.5, 34.0], [25, 34], [27.0, 34.0],steps,10);
	BezConic([30.5, 33.5], [32, 33], [34, 33],steps,10);
}
}

module UbuntuB_contour10x67_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([34, 4], [34, -4], [29.5, -8.0],steps,10);
	BezConic([29.5, -8.0], [25, -12], [16, -12],steps,10);
	BezConic([16, -12], [13, -12], [10.0, -11.5],steps,10);
	BezConic([10.0, -11.5], [7, -11], [5, -10],steps,10);
	BezConic([24, 4], [22, 3], [20.5, 2.5],steps,10);
	BezConic([20.5, 2.5], [19, 2], [17, 2],steps,10);
	BezConic([17, 2], [10, 2], [6.5, 6.0],steps,10);
	BezConic([6.5, 6.0], [3, 10], [3, 18],steps,10);
	BezConic([3, 18], [3, 22], [4.0, 25.0],steps,10);
	BezConic([4.0, 25.0], [5, 28], [7.5, 30.0],steps,10);
	BezConic([7.5, 30.0], [10, 32], [13.0, 33.0],steps,10);
	BezConic([13.0, 33.0], [16, 34], [20, 34],steps,10);
	BezConic([27.0, 34.0], [29, 34], [30.5, 33.5],steps,10);
}
}

module UbuntuB_contour10x67(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x67_skeleton();
			UbuntuB_contour10x67_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x67_subtractive_curves(steps);
	}
}

module UbuntuB_chunk00x67(steps=2) {
	difference() {
		
		scale([1,1,1.1]) UbuntuB_contour00x67(steps);
	}
}

module UbuntuB_chunk10x67(steps=2) {
	difference() {
		UbuntuB_contour10x67(steps);
		
	}
}

UbuntuB_bbox0x67=[[3, -12], [34, 34]];

module UbuntuB_letter0x67(detail=2) {
	UbuntuB_chunk00x67(steps=detail);
	UbuntuB_chunk10x67(steps=detail);
} //end skeleton

module UbuntuB_contour00x68_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[4, 0], [4.0, 24.0], [4, 48], 
		[9.0, 49.0], [14, 50], [14.0, 42.0], 
		[14, 34], [15, 34], [16.5, 34.0], 
		[18, 34], [19, 34], [23, 34], 
		[26.0, 33.0], [29, 32], [30.5, 30.0], 
		[32, 28], [33.0, 25.0], [34, 22], 
		[34, 19], [34.0, 9.5], [34, 0], 
		[29.0, 0.0], [24, 0], [24.0, 9.0], 
		[24, 18], [24, 22], [23.0, 24.0], 
		[22, 26], [18, 26], [17, 26], 
		[16.0, 26.0], [15, 26], [14, 26], 
		[14.0, 13.0], [14, 0], [9.0, 0.0], 
		 ]);
}

module UbuntuB_contour00x68_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 34], [15, 34], [16.5, 34.0],steps,10);
	BezConic([16.5, 34.0], [18, 34], [19, 34],steps,10);
	BezConic([24, 18], [24, 22], [23.0, 24.0],steps,10);
	BezConic([23.0, 24.0], [22, 26], [18, 26],steps,10);
	BezConic([18, 26], [17, 26], [16.0, 26.0],steps,10);
	BezConic([16.0, 26.0], [15, 26], [14, 26],steps,10);
}
}

module UbuntuB_contour00x68_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([19, 34], [23, 34], [26.0, 33.0],steps,10);
	BezConic([26.0, 33.0], [29, 32], [30.5, 30.0],steps,10);
	BezConic([30.5, 30.0], [32, 28], [33.0, 25.0],steps,10);
	BezConic([33.0, 25.0], [34, 22], [34, 19],steps,10);
}
}

module UbuntuB_contour00x68(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x68_skeleton();
			UbuntuB_contour00x68_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x68_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x68(steps=2) {
	difference() {
		UbuntuB_contour00x68(steps);
		
	}
}

UbuntuB_bbox0x68=[[4, 0], [34, 50]];

module UbuntuB_letter0x68(detail=2) {
	UbuntuB_chunk10x68(steps=detail);
} //end skeleton

module UbuntuB_contour00x69_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[14, 0], [9.0, 0.0], [4, 0], 
		[4.0, 17.0], [4, 34], [9.0, 34.0], 
		[14, 34],[14.0, 17.0], ]);
}

module UbuntuB_contour00x69_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x69_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x69(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x69_skeleton();
			UbuntuB_contour00x69_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x69_subtractive_curves(steps);
	}
}

module UbuntuB_contour10x69_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[15, 43], [15, 41], [13.5, 39.5], 
		[12, 38], [9, 38], [7, 38], 
		[5.5, 39.5], [4, 41], [4, 43], 
		[4, 46], [5.5, 47.5], [7, 49], 
		[9, 49], [12, 49], [13.5, 47.5], 
		[15, 46], ]);
}

module UbuntuB_contour10x69_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour10x69_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([15, 43], [15, 41], [13.5, 39.5],steps,10);
	BezConic([13.5, 39.5], [12, 38], [9, 38],steps,10);
	BezConic([9, 38], [7, 38], [5.5, 39.5],steps,10);
	BezConic([5.5, 39.5], [4, 41], [4, 43],steps,10);
	BezConic([4, 43], [4, 46], [5.5, 47.5],steps,10);
	BezConic([5.5, 47.5], [7, 49], [9, 49],steps,10);
	BezConic([9, 49], [12, 49], [13.5, 47.5],steps,10);
	BezConic([13.5, 47.5], [15, 46], [15, 43],steps,10);
}
}

module UbuntuB_contour10x69(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x69_skeleton();
			UbuntuB_contour10x69_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x69_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x69(steps=2) {
	difference() {
		UbuntuB_contour00x69(steps);
		
	}
}

module UbuntuB_chunk20x69(steps=2) {
	difference() {
		UbuntuB_contour10x69(steps);
		
	}
}

UbuntuB_bbox0x69=[[4, 0], [15, 49]];

module UbuntuB_letter0x69(detail=2) {
	UbuntuB_chunk10x69(steps=detail);
	UbuntuB_chunk20x69(steps=detail);
} //end skeleton

module UbuntuB_contour00x6a_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[1, -12], [0, -12], [-1.5, -11.5], 
		[-3, -11], [-5, -11], [-4.0, -7.0], 
		[-3, -3], [-2, -4], [-1.5, -4.0], 
		[-1, -4], [0, -4], [3, -4], 
		[3.5, -2.5], [4, -1], [4, 1], 
		[4.0, 17.5], [4, 34], [9.0, 34.0], 
		[14, 34], [14.0, 17.5], [14, 1], 
		[14, -5], [10.5, -8.5], [7, -12], 
		 ]);
}

module UbuntuB_contour00x6a_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([-1.5, -11.5], [-3, -11], [-5, -11],steps,10);
	BezConic([-3, -3], [-2, -4], [-1.5, -4.0],steps,10);
	BezConic([-1.5, -4.0], [-1, -4], [0, -4],steps,10);
	BezConic([0, -4], [3, -4], [3.5, -2.5],steps,10);
	BezConic([3.5, -2.5], [4, -1], [4, 1],steps,10);
}
}

module UbuntuB_contour00x6a_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([1, -12], [0, -12], [-1.5, -11.5],steps,10);
	BezConic([14, 1], [14, -5], [10.5, -8.5],steps,10);
	BezConic([10.5, -8.5], [7, -12], [1, -12],steps,10);
}
}

module UbuntuB_contour00x6a(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x6a_skeleton();
			UbuntuB_contour00x6a_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x6a_subtractive_curves(steps);
	}
}

module UbuntuB_contour10x6a_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[15, 43], [15, 41], [13.5, 39.5], 
		[12, 38], [9, 38], [7, 38], 
		[5.5, 39.5], [4, 41], [4, 43], 
		[4, 46], [5.5, 47.5], [7, 49], 
		[9, 49], [12, 49], [13.5, 47.5], 
		[15, 46], ]);
}

module UbuntuB_contour10x6a_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour10x6a_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([15, 43], [15, 41], [13.5, 39.5],steps,10);
	BezConic([13.5, 39.5], [12, 38], [9, 38],steps,10);
	BezConic([9, 38], [7, 38], [5.5, 39.5],steps,10);
	BezConic([5.5, 39.5], [4, 41], [4, 43],steps,10);
	BezConic([4, 43], [4, 46], [5.5, 47.5],steps,10);
	BezConic([5.5, 47.5], [7, 49], [9, 49],steps,10);
	BezConic([9, 49], [12, 49], [13.5, 47.5],steps,10);
	BezConic([13.5, 47.5], [15, 46], [15, 43],steps,10);
}
}

module UbuntuB_contour10x6a(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x6a_skeleton();
			UbuntuB_contour10x6a_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x6a_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x6a(steps=2) {
	difference() {
		UbuntuB_contour00x6a(steps);
		
	}
}

module UbuntuB_chunk20x6a(steps=2) {
	difference() {
		UbuntuB_contour10x6a(steps);
		
	}
}

UbuntuB_bbox0x6a=[[-5, -12], [15, 49]];

module UbuntuB_letter0x6a(detail=2) {
	UbuntuB_chunk10x6a(steps=detail);
	UbuntuB_chunk20x6a(steps=detail);
} //end skeleton

module UbuntuB_contour00x6b_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[14, 22], [15, 23], [16.5, 24.5], 
		[18, 26], [19.5, 28.0], [21, 30], 
		[22.5, 31.5], [24, 33], [25, 34], 
		[30.5, 34.0], [36, 34], [33, 30], 
		[29.5, 26.5], [26, 23], [22, 19], 
		[24, 17], [26.0, 14.5], [28, 12], 
		[30.0, 9.5], [32, 7], [33.5, 4.5], 
		[35, 2], [36, 0], [30.5, 0.0], 
		[25, 0], [24, 2], [23.0, 4.0], 
		[22, 6], [20.5, 8.0], [19, 10], 
		[17.5, 11.5], [16, 13], [14, 15], 
		[14.0, 7.5], [14, 0], [9.0, 0.0], 
		[4, 0], [4.0, 24.0], [4, 48], 
		[9.0, 49.0], [14, 50], [14.0, 36.0], 
		 ]);
}

module UbuntuB_contour00x6b_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 22], [15, 23], [16.5, 24.5],steps,10);
	BezConic([16.5, 24.5], [18, 26], [19.5, 28.0],steps,10);
	BezConic([22.5, 31.5], [24, 33], [25, 34],steps,10);
	BezConic([29.5, 26.5], [26, 23], [22, 19],steps,10);
	BezConic([26.0, 14.5], [28, 12], [30.0, 9.5],steps,10);
	BezConic([25, 0], [24, 2], [23.0, 4.0],steps,10);
	BezConic([23.0, 4.0], [22, 6], [20.5, 8.0],steps,10);
	BezConic([20.5, 8.0], [19, 10], [17.5, 11.5],steps,10);
	BezConic([17.5, 11.5], [16, 13], [14, 15],steps,10);
}
}

module UbuntuB_contour00x6b_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([19.5, 28.0], [21, 30], [22.5, 31.5],steps,10);
	BezConic([36, 34], [33, 30], [29.5, 26.5],steps,10);
	BezConic([22, 19], [24, 17], [26.0, 14.5],steps,10);
	BezConic([30.0, 9.5], [32, 7], [33.5, 4.5],steps,10);
	BezConic([33.5, 4.5], [35, 2], [36, 0],steps,10);
}
}

module UbuntuB_contour00x6b(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x6b_skeleton();
			UbuntuB_contour00x6b_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x6b_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x6b(steps=2) {
	difference() {
		UbuntuB_contour00x6b(steps);
		
	}
}

UbuntuB_bbox0x6b=[[4, 0], [36, 50]];

module UbuntuB_letter0x6b(detail=2) {
	UbuntuB_chunk10x6b(steps=detail);
} //end skeleton

module UbuntuB_contour00x6c_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[18, -1], [14, -1], [11.5, 0.0], 
		[9, 1], [7.5, 2.5], [6, 4], 
		[5.0, 6.0], [4, 8], [4, 11], 
		[4.0, 29.5], [4, 48], [9.0, 49.0], 
		[14, 50], [14.0, 31.5], [14, 13], 
		[14, 12], [14.0, 11.0], [14, 10], 
		[14.5, 9.0], [15, 8], [16.5, 7.5], 
		[18, 7], [19, 7], [18.5, 3.0], 
		 ]);
}

module UbuntuB_contour00x6c_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 13], [14, 12], [14.0, 11.0],steps,10);
	BezConic([14.0, 11.0], [14, 10], [14.5, 9.0],steps,10);
	BezConic([14.5, 9.0], [15, 8], [16.5, 7.5],steps,10);
	BezConic([16.5, 7.5], [18, 7], [19, 7],steps,10);
}
}

module UbuntuB_contour00x6c_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([18, -1], [14, -1], [11.5, 0.0],steps,10);
	BezConic([11.5, 0.0], [9, 1], [7.5, 2.5],steps,10);
	BezConic([7.5, 2.5], [6, 4], [5.0, 6.0],steps,10);
	BezConic([5.0, 6.0], [4, 8], [4, 11],steps,10);
}
}

module UbuntuB_contour00x6c(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x6c_skeleton();
			UbuntuB_contour00x6c_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x6c_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x6c(steps=2) {
	difference() {
		UbuntuB_contour00x6c(steps);
		
	}
}

UbuntuB_bbox0x6c=[[4, -1], [19, 50]];

module UbuntuB_letter0x6c(detail=2) {
	UbuntuB_chunk10x6c(steps=detail);
} //end skeleton

module UbuntuB_contour00x6d_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[23, 18], [23, 22], [22.0, 24.0], 
		[21, 26], [18, 26], [17, 26], 
		[16.0, 26.0], [15, 26], [14, 26], 
		[14.0, 13.0], [14, 0], [9.0, 0.0], 
		[4, 0], [4.0, 16.5], [4, 33], 
		[6, 33], [7.5, 33.5], [9, 34], 
		[11.0, 34.0], [13, 34], [14.5, 34.0], 
		[16, 34], [18, 34], [22, 34], 
		[24.0, 33.5], [26, 33], [28, 31], 
		[30, 33], [32.5, 33.5], [35, 34], 
		[38, 34], [42, 34], [44.5, 33.0], 
		[47, 32], [48.5, 30.0], [50, 28], 
		[50.5, 25.0], [51, 22], [51, 19], 
		[51.0, 9.5], [51, 0], [46.0, 0.0], 
		[41, 0], [41.0, 9.0], [41, 18], 
		[41, 22], [40.0, 24.0], [39, 26], 
		[36, 26], [35, 26], [34.0, 26.0], 
		[33, 26], [32, 25], [32, 23], 
		[32.5, 21.5], [33, 20], [33, 18], 
		[33.0, 9.0], [33, 0], [28.0, 0.0], 
		[23, 0],[23.0, 9.0], ]);
}

module UbuntuB_contour00x6d_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([23, 18], [23, 22], [22.0, 24.0],steps,10);
	BezConic([22.0, 24.0], [21, 26], [18, 26],steps,10);
	BezConic([18, 26], [17, 26], [16.0, 26.0],steps,10);
	BezConic([16.0, 26.0], [15, 26], [14, 26],steps,10);
	BezConic([4, 33], [6, 33], [7.5, 33.5],steps,10);
	BezConic([11.0, 34.0], [13, 34], [14.5, 34.0],steps,10);
	BezConic([14.5, 34.0], [16, 34], [18, 34],steps,10);
	BezConic([41, 18], [41, 22], [40.0, 24.0],steps,10);
	BezConic([40.0, 24.0], [39, 26], [36, 26],steps,10);
	BezConic([36, 26], [35, 26], [34.0, 26.0],steps,10);
	BezConic([34.0, 26.0], [33, 26], [32, 25],steps,10);
	BezConic([32, 25], [32, 23], [32.5, 21.5],steps,10);
}
}

module UbuntuB_contour00x6d_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([7.5, 33.5], [9, 34], [11.0, 34.0],steps,10);
	BezConic([18, 34], [22, 34], [24.0, 33.5],steps,10);
	BezConic([24.0, 33.5], [26, 33], [28, 31],steps,10);
	BezConic([28, 31], [30, 33], [32.5, 33.5],steps,10);
	BezConic([32.5, 33.5], [35, 34], [38, 34],steps,10);
	BezConic([38, 34], [42, 34], [44.5, 33.0],steps,10);
	BezConic([44.5, 33.0], [47, 32], [48.5, 30.0],steps,10);
	BezConic([48.5, 30.0], [50, 28], [50.5, 25.0],steps,10);
	BezConic([50.5, 25.0], [51, 22], [51, 19],steps,10);
	BezConic([32.5, 21.5], [33, 20], [33, 18],steps,10);
}
}

module UbuntuB_contour00x6d(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x6d_skeleton();
			UbuntuB_contour00x6d_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x6d_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x6d(steps=2) {
	difference() {
		UbuntuB_contour00x6d(steps);
		
	}
}

UbuntuB_bbox0x6d=[[4, 0], [51, 34]];

module UbuntuB_letter0x6d(detail=2) {
	UbuntuB_chunk10x6d(steps=detail);
} //end skeleton

module UbuntuB_contour00x6e_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[4, 33], [7, 33], [11.0, 33.5], 
		[15, 34], [19, 34], [23, 34], 
		[26.0, 33.0], [29, 32], [30.5, 30.0], 
		[32, 28], [33.0, 25.0], [34, 22], 
		[34, 19], [34.0, 9.5], [34, 0], 
		[29.0, 0.0], [24, 0], [24.0, 9.0], 
		[24, 18], [24, 22], [23.0, 24.0], 
		[22, 26], [18, 26], [17, 26], 
		[16.0, 26.0], [15, 26], [14, 26], 
		[14.0, 13.0], [14, 0], [9.0, 0.0], 
		[4, 0],[4.0, 16.5], ]);
}

module UbuntuB_contour00x6e_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([4, 33], [7, 33], [11.0, 33.5],steps,10);
	BezConic([24, 18], [24, 22], [23.0, 24.0],steps,10);
	BezConic([23.0, 24.0], [22, 26], [18, 26],steps,10);
	BezConic([18, 26], [17, 26], [16.0, 26.0],steps,10);
	BezConic([16.0, 26.0], [15, 26], [14, 26],steps,10);
}
}

module UbuntuB_contour00x6e_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([11.0, 33.5], [15, 34], [19, 34],steps,10);
	BezConic([19, 34], [23, 34], [26.0, 33.0],steps,10);
	BezConic([26.0, 33.0], [29, 32], [30.5, 30.0],steps,10);
	BezConic([30.5, 30.0], [32, 28], [33.0, 25.0],steps,10);
	BezConic([33.0, 25.0], [34, 22], [34, 19],steps,10);
}
}

module UbuntuB_contour00x6e(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x6e_skeleton();
			UbuntuB_contour00x6e_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x6e_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x6e(steps=2) {
	difference() {
		UbuntuB_contour00x6e(steps);
		
	}
}

UbuntuB_bbox0x6e=[[4, 0], [34, 34]];

module UbuntuB_letter0x6e(detail=2) {
	UbuntuB_chunk10x6e(steps=detail);
} //end skeleton

module UbuntuB_contour00x6f_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[36, 17], [36, 13], [35.0, 9.5], 
		[34, 6], [31.5, 4.0], [29, 2], 
		[26.0, 0.5], [23, -1], [19, -1], 
		[16, -1], [13.0, 0.5], [10, 2], 
		[7.5, 4.0], [5, 6], [4.0, 9.5], 
		[3, 13], [3, 17], [3, 21], 
		[4.0, 24.0], [5, 27], [7.5, 29.5], 
		[10, 32], [13.0, 33.5], [16, 35], 
		[19, 35], [23, 35], [26.0, 33.5], 
		[29, 32], [31.5, 29.5], [34, 27], 
		[35.0, 24.0],[36, 21], ]);
}

module UbuntuB_contour00x6f_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x6f_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([36, 17], [36, 13], [35.0, 9.5],steps,10);
	BezConic([35.0, 9.5], [34, 6], [31.5, 4.0],steps,10);
	BezConic([31.5, 4.0], [29, 2], [26.0, 0.5],steps,10);
	BezConic([26.0, 0.5], [23, -1], [19, -1],steps,10);
	BezConic([19, -1], [16, -1], [13.0, 0.5],steps,10);
	BezConic([13.0, 0.5], [10, 2], [7.5, 4.0],steps,10);
	BezConic([7.5, 4.0], [5, 6], [4.0, 9.5],steps,10);
	BezConic([4.0, 9.5], [3, 13], [3, 17],steps,10);
	BezConic([3, 17], [3, 21], [4.0, 24.0],steps,10);
	BezConic([4.0, 24.0], [5, 27], [7.5, 29.5],steps,10);
	BezConic([7.5, 29.5], [10, 32], [13.0, 33.5],steps,10);
	BezConic([13.0, 33.5], [16, 35], [19, 35],steps,10);
	BezConic([19, 35], [23, 35], [26.0, 33.5],steps,10);
	BezConic([26.0, 33.5], [29, 32], [31.5, 29.5],steps,10);
	BezConic([31.5, 29.5], [34, 27], [35.0, 24.0],steps,10);
	BezConic([35.0, 24.0], [36, 21], [36, 17],steps,10);
}
}

module UbuntuB_contour00x6f(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x6f_skeleton();
			UbuntuB_contour00x6f_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x6f_subtractive_curves(steps);
	}
}

module UbuntuB_contour10x6f_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[26, 17], [26, 21], [24.5, 23.5], 
		[23, 26], [19, 26], [16, 26], 
		[14.5, 23.5], [13, 21], [13, 17], 
		[13, 12], [14.5, 9.5], [16, 7], 
		[19, 7], [23, 7], [24.5, 9.5], 
		[26, 12], ]);
}

module UbuntuB_contour10x6f_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([26, 17], [26, 21], [24.5, 23.5],steps,10);
	BezConic([24.5, 23.5], [23, 26], [19, 26],steps,10);
	BezConic([19, 26], [16, 26], [14.5, 23.5],steps,10);
	BezConic([14.5, 23.5], [13, 21], [13, 17],steps,10);
	BezConic([13, 17], [13, 12], [14.5, 9.5],steps,10);
	BezConic([14.5, 9.5], [16, 7], [19, 7],steps,10);
	BezConic([19, 7], [23, 7], [24.5, 9.5],steps,10);
	BezConic([24.5, 9.5], [26, 12], [26, 17],steps,10);
}
}

module UbuntuB_contour10x6f_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour10x6f(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x6f_skeleton();
			UbuntuB_contour10x6f_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x6f_additive_curves(steps);
	}
}

module UbuntuB_chunk10x6f(steps=2) {
	difference() {
		UbuntuB_contour00x6f(steps);
		scale([1,1,1.1]) UbuntuB_contour10x6f(steps);
	}
}

UbuntuB_bbox0x6f=[[3, -1], [36, 35]];

module UbuntuB_letter0x6f(detail=2) {
	UbuntuB_chunk10x6f(steps=detail);
} //end skeleton

module UbuntuB_contour00x70_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[26, 17], [26, 21], [24.0, 23.5], 
		[22, 26], [18, 26], [17, 26], 
		[16.0, 26.0], [15, 26], [14, 26], 
		[14.0, 17.5], [14, 9], [15, 8], 
		[16.5, 7.5], [18, 7], [19, 7], 
		[26, 7], ]);
}

module UbuntuB_contour00x70_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([26, 17], [26, 21], [24.0, 23.5],steps,10);
	BezConic([24.0, 23.5], [22, 26], [18, 26],steps,10);
	BezConic([18, 26], [17, 26], [16.0, 26.0],steps,10);
	BezConic([16.0, 26.0], [15, 26], [14, 26],steps,10);
	BezConic([14, 9], [15, 8], [16.5, 7.5],steps,10);
	BezConic([16.5, 7.5], [18, 7], [19, 7],steps,10);
	BezConic([19, 7], [26, 7], [26, 17],steps,10);
}
}

module UbuntuB_contour00x70_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x70(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x70_skeleton();
			UbuntuB_contour00x70_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x70_additive_curves(steps);
	}
}

module UbuntuB_contour10x70_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[36, 17], [36, 13], [35.0, 10.0], 
		[34, 7], [32.0, 4.5], [30, 2], 
		[27.5, 0.5], [25, -1], [21, -1], 
		[19, -1], [17.5, -0.5], [16, 0], 
		[14, 1], [14.0, -5.5], [14, -12], 
		[9.0, -12.0], [4, -12], [4.0, 10.5], 
		[4, 33], [6, 33], [7.5, 33.5], 
		[9, 34], [11.0, 34.0], [13, 34], 
		[15.0, 34.0], [17, 34], [18, 34], 
		[22, 34], [25.5, 33.0], [29, 32], 
		[31.0, 29.5], [33, 27], [34.5, 24.0], 
		[36, 21], ]);
}

module UbuntuB_contour10x70_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([4, 33], [6, 33], [7.5, 33.5],steps,10);
	BezConic([11.0, 34.0], [13, 34], [15.0, 34.0],steps,10);
	BezConic([15.0, 34.0], [17, 34], [18, 34],steps,10);
}
}

module UbuntuB_contour10x70_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([36, 17], [36, 13], [35.0, 10.0],steps,10);
	BezConic([35.0, 10.0], [34, 7], [32.0, 4.5],steps,10);
	BezConic([32.0, 4.5], [30, 2], [27.5, 0.5],steps,10);
	BezConic([27.5, 0.5], [25, -1], [21, -1],steps,10);
	BezConic([21, -1], [19, -1], [17.5, -0.5],steps,10);
	BezConic([17.5, -0.5], [16, 0], [14, 1],steps,10);
	BezConic([7.5, 33.5], [9, 34], [11.0, 34.0],steps,10);
	BezConic([18, 34], [22, 34], [25.5, 33.0],steps,10);
	BezConic([25.5, 33.0], [29, 32], [31.0, 29.5],steps,10);
	BezConic([31.0, 29.5], [33, 27], [34.5, 24.0],steps,10);
	BezConic([34.5, 24.0], [36, 21], [36, 17],steps,10);
}
}

module UbuntuB_contour10x70(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x70_skeleton();
			UbuntuB_contour10x70_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x70_subtractive_curves(steps);
	}
}

module UbuntuB_chunk00x70(steps=2) {
	difference() {
		
		scale([1,1,1.1]) UbuntuB_contour00x70(steps);
	}
}

module UbuntuB_chunk10x70(steps=2) {
	difference() {
		UbuntuB_contour10x70(steps);
		
	}
}

UbuntuB_bbox0x70=[[4, -12], [36, 34]];

module UbuntuB_letter0x70(detail=2) {
	UbuntuB_chunk00x70(steps=detail);
	UbuntuB_chunk10x70(steps=detail);
} //end skeleton

module UbuntuB_contour00x71_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[13, 17], [13, 7], [19, 7], 
		[21, 7], [22.5, 7.5], [24, 8], 
		[25, 9], [25.0, 17.5], [25, 26], 
		[24, 26], [23.0, 26.0], [22, 26], 
		[20, 26], [17, 26], [15.0, 23.5], 
		[13, 21], ]);
}

module UbuntuB_contour00x71_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([13, 17], [13, 7], [19, 7],steps,10);
	BezConic([19, 7], [21, 7], [22.5, 7.5],steps,10);
	BezConic([22.5, 7.5], [24, 8], [25, 9],steps,10);
	BezConic([25, 26], [24, 26], [23.0, 26.0],steps,10);
	BezConic([23.0, 26.0], [22, 26], [20, 26],steps,10);
	BezConic([20, 26], [17, 26], [15.0, 23.5],steps,10);
	BezConic([15.0, 23.5], [13, 21], [13, 17],steps,10);
}
}

module UbuntuB_contour00x71_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x71(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x71_skeleton();
			UbuntuB_contour00x71_subtractive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x71_additive_curves(steps);
	}
}

module UbuntuB_contour10x71_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[3, 17], [3, 21], [4.0, 24.0], 
		[5, 27], [7.5, 29.5], [10, 32], 
		[13.0, 33.0], [16, 34], [20, 34], 
		[22, 34], [24.0, 34.0], [26, 34], 
		[28.0, 34.0], [30, 34], [31.5, 33.5], 
		[33, 33], [34, 33], [34.0, 10.5], 
		[34, -12], [29.5, -12.0], [25, -12], 
		[25.0, -5.5], [25, 1], [23, 0], 
		[21.5, -0.5], [20, -1], [18, -1], 
		[10, -1], [6.5, 4.0], [3, 9], 
		 ]);
}

module UbuntuB_contour10x71_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([20, 34], [22, 34], [24.0, 34.0],steps,10);
	BezConic([24.0, 34.0], [26, 34], [28.0, 34.0],steps,10);
	BezConic([31.5, 33.5], [33, 33], [34, 33],steps,10);
}
}

module UbuntuB_contour10x71_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([3, 17], [3, 21], [4.0, 24.0],steps,10);
	BezConic([4.0, 24.0], [5, 27], [7.5, 29.5],steps,10);
	BezConic([7.5, 29.5], [10, 32], [13.0, 33.0],steps,10);
	BezConic([13.0, 33.0], [16, 34], [20, 34],steps,10);
	BezConic([28.0, 34.0], [30, 34], [31.5, 33.5],steps,10);
	BezConic([25, 1], [23, 0], [21.5, -0.5],steps,10);
	BezConic([21.5, -0.5], [20, -1], [18, -1],steps,10);
	BezConic([18, -1], [10, -1], [6.5, 4.0],steps,10);
	BezConic([6.5, 4.0], [3, 9], [3, 17],steps,10);
}
}

module UbuntuB_contour10x71(steps=2) {
	difference() {
		union() {
			UbuntuB_contour10x71_skeleton();
			UbuntuB_contour10x71_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour10x71_subtractive_curves(steps);
	}
}

module UbuntuB_chunk00x71(steps=2) {
	difference() {
		
		scale([1,1,1.1]) UbuntuB_contour00x71(steps);
	}
}

module UbuntuB_chunk10x71(steps=2) {
	difference() {
		UbuntuB_contour10x71(steps);
		
	}
}

UbuntuB_bbox0x71=[[3, -12], [34, 34]];

module UbuntuB_letter0x71(detail=2) {
	UbuntuB_chunk00x71(steps=detail);
	UbuntuB_chunk10x71(steps=detail);
} //end skeleton

module UbuntuB_contour00x72_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[25, 25], [23, 26], [21.5, 26.0], 
		[20, 26], [18, 26], [17, 26], 
		[16.0, 26.0], [15, 26], [14, 26], 
		[14.0, 13.0], [14, 0], [9.0, 0.0], 
		[4, 0], [4.0, 16.0], [4, 32], 
		[7, 33], [10.5, 33.5], [14, 34], 
		[18, 34], [19, 34], [20.0, 34.0], 
		[21, 34], [22.0, 34.0], [23, 34], 
		[24.5, 33.5], [26, 33], [26, 33], 
		[25.5, 29.0], ]);
}

module UbuntuB_contour00x72_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([25, 25], [23, 26], [21.5, 26.0],steps,10);
	BezConic([21.5, 26.0], [20, 26], [18, 26],steps,10);
	BezConic([18, 26], [17, 26], [16.0, 26.0],steps,10);
	BezConic([16.0, 26.0], [15, 26], [14, 26],steps,10);
	BezConic([18, 34], [19, 34], [20.0, 34.0],steps,10);
	BezConic([20.0, 34.0], [21, 34], [22.0, 34.0],steps,10);
	BezConic([24.5, 33.5], [26, 33], [26, 33],steps,10);
}
}

module UbuntuB_contour00x72_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([4, 32], [7, 33], [10.5, 33.5],steps,10);
	BezConic([10.5, 33.5], [14, 34], [18, 34],steps,10);
	BezConic([22.0, 34.0], [23, 34], [24.5, 33.5],steps,10);
}
}

module UbuntuB_contour00x72(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x72_skeleton();
			UbuntuB_contour00x72_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x72_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x72(steps=2) {
	difference() {
		UbuntuB_contour00x72(steps);
		
	}
}

UbuntuB_bbox0x72=[[4, 0], [26, 34]];

module UbuntuB_letter0x72(detail=2) {
	UbuntuB_chunk10x72(steps=detail);
} //end skeleton

module UbuntuB_contour00x73_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[14, 7], [17, 7], [18.0, 7.5], 
		[19, 8], [19, 9], [19, 10], 
		[17.5, 11.0], [16, 12], [13, 13], 
		[11, 14], [9.0, 15.0], [7, 16], 
		[6.0, 17.0], [5, 18], [4.0, 20.0], 
		[3, 22], [3, 24], [3, 29], 
		[6.5, 32.0], [10, 35], [17, 35], 
		[20, 35], [22.5, 34.0], [25, 33], 
		[27, 33], [26.0, 29.0], [25, 25], 
		[24, 26], [22.0, 26.5], [20, 27], 
		[17, 27], [13, 27], [13, 24], 
		[13, 24], [13.0, 23.5], [13, 23], 
		[13.5, 22.5], [14, 22], [15.0, 21.5], 
		[16, 21], [18, 21], [21, 19], 
		[23.0, 18.0], [25, 17], [26.0, 16.0], 
		[27, 15], [27.5, 13.0], [28, 11], 
		[28, 9], [28, 4], [24.5, 1.5], 
		[21, -1], [14, -1], [10, -1], 
		[7.0, 0.0], [4, 1], [2, 1], 
		[3.0, 5.0], [4, 9], [7, 8], 
		[9.5, 7.5],[12, 7], ]);
}

module UbuntuB_contour00x73_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 7], [17, 7], [18.0, 7.5],steps,10);
	BezConic([18.0, 7.5], [19, 8], [19, 9],steps,10);
	BezConic([19, 9], [19, 10], [17.5, 11.0],steps,10);
	BezConic([17.5, 11.0], [16, 12], [13, 13],steps,10);
	BezConic([13, 13], [11, 14], [9.0, 15.0],steps,10);
	BezConic([22.5, 34.0], [25, 33], [27, 33],steps,10);
	BezConic([25, 25], [24, 26], [22.0, 26.5],steps,10);
	BezConic([22.0, 26.5], [20, 27], [17, 27],steps,10);
	BezConic([17, 27], [13, 27], [13, 24],steps,10);
	BezConic([13.0, 23.5], [13, 23], [13.5, 22.5],steps,10);
	BezConic([13.5, 22.5], [14, 22], [15.0, 21.5],steps,10);
	BezConic([15.0, 21.5], [16, 21], [18, 21],steps,10);
	BezConic([18, 21], [21, 19], [23.0, 18.0],steps,10);
	BezConic([7.0, 0.0], [4, 1], [2, 1],steps,10);
	BezConic([4, 9], [7, 8], [9.5, 7.5],steps,10);
	BezConic([9.5, 7.5], [12, 7], [14, 7],steps,10);
}
}

module UbuntuB_contour00x73_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([9.0, 15.0], [7, 16], [6.0, 17.0],steps,10);
	BezConic([6.0, 17.0], [5, 18], [4.0, 20.0],steps,10);
	BezConic([4.0, 20.0], [3, 22], [3, 24],steps,10);
	BezConic([3, 24], [3, 29], [6.5, 32.0],steps,10);
	BezConic([6.5, 32.0], [10, 35], [17, 35],steps,10);
	BezConic([17, 35], [20, 35], [22.5, 34.0],steps,10);
	BezConic([13, 24], [13, 24], [13.0, 23.5],steps,10);
	BezConic([23.0, 18.0], [25, 17], [26.0, 16.0],steps,10);
	BezConic([26.0, 16.0], [27, 15], [27.5, 13.0],steps,10);
	BezConic([27.5, 13.0], [28, 11], [28, 9],steps,10);
	BezConic([28, 9], [28, 4], [24.5, 1.5],steps,10);
	BezConic([24.5, 1.5], [21, -1], [14, -1],steps,10);
	BezConic([14, -1], [10, -1], [7.0, 0.0],steps,10);
}
}

module UbuntuB_contour00x73(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x73_skeleton();
			UbuntuB_contour00x73_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x73_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x73(steps=2) {
	difference() {
		UbuntuB_contour00x73(steps);
		
	}
}

UbuntuB_bbox0x73=[[2, -1], [28, 35]];

module UbuntuB_letter0x73(detail=2) {
	UbuntuB_chunk10x73(steps=detail);
} //end skeleton

module UbuntuB_contour00x74_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[4, 42], [9.0, 43.0], [14, 44], 
		[14.0, 39.0], [14, 34], [19.5, 34.0], 
		[25, 34], [25.0, 30.0], [25, 26], 
		[19.5, 26.0], [14, 26], [14.0, 20.0], 
		[14, 14], [14, 11], [15.0, 9.0], 
		[16, 7], [19, 7], [21, 7], 
		[22.5, 7.5], [24, 8], [25, 8], 
		[25.5, 4.5], [26, 1], [25, 0], 
		[23.0, -0.5], [21, -1], [17, -1], 
		[14, -1], [11.0, 0.0], [8, 1], 
		[6.5, 3.0], [5, 5], [4.5, 7.5], 
		[4, 10], [4, 14], [4.0, 28.0], 
		 ]);
}

module UbuntuB_contour00x74_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 14], [14, 11], [15.0, 9.0],steps,10);
	BezConic([15.0, 9.0], [16, 7], [19, 7],steps,10);
	BezConic([19, 7], [21, 7], [22.5, 7.5],steps,10);
}
}

module UbuntuB_contour00x74_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([22.5, 7.5], [24, 8], [25, 8],steps,10);
	BezConic([26, 1], [25, 0], [23.0, -0.5],steps,10);
	BezConic([23.0, -0.5], [21, -1], [17, -1],steps,10);
	BezConic([17, -1], [14, -1], [11.0, 0.0],steps,10);
	BezConic([11.0, 0.0], [8, 1], [6.5, 3.0],steps,10);
	BezConic([6.5, 3.0], [5, 5], [4.5, 7.5],steps,10);
	BezConic([4.5, 7.5], [4, 10], [4, 14],steps,10);
}
}

module UbuntuB_contour00x74(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x74_skeleton();
			UbuntuB_contour00x74_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x74_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x74(steps=2) {
	difference() {
		UbuntuB_contour00x74(steps);
		
	}
}

UbuntuB_bbox0x74=[[4, -1], [26, 44]];

module UbuntuB_letter0x74(detail=2) {
	UbuntuB_chunk10x74(steps=detail);
} //end skeleton

module UbuntuB_contour00x75_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[33, 1], [31, 0], [27.0, -0.5], 
		[23, -1], [19, -1], [15, -1], 
		[12.0, 0.5], [9, 2], [7.5, 4.0], 
		[6, 6], [5.0, 8.5], [4, 11], 
		[4, 15], [4.0, 24.5], [4, 34], 
		[9.0, 34.0], [14, 34], [14.0, 25.0], 
		[14, 16], [14, 11], [15.0, 9.0], 
		[16, 7], [19, 7], [20, 7], 
		[21.5, 7.5], [23, 8], [24, 8], 
		[24.0, 21.0], [24, 34], [28.5, 34.0], 
		[33, 34],[33.0, 17.5], ]);
}

module UbuntuB_contour00x75_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 16], [14, 11], [15.0, 9.0],steps,10);
	BezConic([15.0, 9.0], [16, 7], [19, 7],steps,10);
	BezConic([19, 7], [20, 7], [21.5, 7.5],steps,10);
}
}

module UbuntuB_contour00x75_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([33, 1], [31, 0], [27.0, -0.5],steps,10);
	BezConic([27.0, -0.5], [23, -1], [19, -1],steps,10);
	BezConic([19, -1], [15, -1], [12.0, 0.5],steps,10);
	BezConic([12.0, 0.5], [9, 2], [7.5, 4.0],steps,10);
	BezConic([7.5, 4.0], [6, 6], [5.0, 8.5],steps,10);
	BezConic([5.0, 8.5], [4, 11], [4, 15],steps,10);
	BezConic([21.5, 7.5], [23, 8], [24, 8],steps,10);
}
}

module UbuntuB_contour00x75(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x75_skeleton();
			UbuntuB_contour00x75_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x75_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x75(steps=2) {
	difference() {
		UbuntuB_contour00x75(steps);
		
	}
}

UbuntuB_bbox0x75=[[4, -1], [33, 34]];

module UbuntuB_letter0x75(detail=2) {
	UbuntuB_chunk10x75(steps=detail);
} //end skeleton

module UbuntuB_contour00x76_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[14, 0], [10, 6], [7.0, 15.0], 
		[4, 24], [1, 34], [6.0, 34.0], 
		[11, 34], [11, 31], [12.0, 28.0], 
		[13, 25], [14.0, 22.0], [15, 19], 
		[16.0, 16.5], [17, 14], [18, 11], 
		[19, 14], [19.5, 16.5], [20, 19], 
		[21.0, 22.0], [22, 25], [23.0, 28.0], 
		[24, 31], [25, 34], [30.0, 34.0], 
		[35, 34], [32, 24], [28.5, 15.0], 
		[25, 6], [22, 0], [18.0, 0.0], 
		 ]);
}

module UbuntuB_contour00x76_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([11, 34], [11, 31], [12.0, 28.0],steps,10);
	BezConic([12.0, 28.0], [13, 25], [14.0, 22.0],steps,10);
	BezConic([14.0, 22.0], [15, 19], [16.0, 16.5],steps,10);
	BezConic([18, 11], [19, 14], [19.5, 16.5],steps,10);
}
}

module UbuntuB_contour00x76_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 0], [10, 6], [7.0, 15.0],steps,10);
	BezConic([7.0, 15.0], [4, 24], [1, 34],steps,10);
	BezConic([16.0, 16.5], [17, 14], [18, 11],steps,10);
	BezConic([19.5, 16.5], [20, 19], [21.0, 22.0],steps,10);
	BezConic([21.0, 22.0], [22, 25], [23.0, 28.0],steps,10);
	BezConic([23.0, 28.0], [24, 31], [25, 34],steps,10);
	BezConic([35, 34], [32, 24], [28.5, 15.0],steps,10);
	BezConic([28.5, 15.0], [25, 6], [22, 0],steps,10);
}
}

module UbuntuB_contour00x76(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x76_skeleton();
			UbuntuB_contour00x76_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x76_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x76(steps=2) {
	difference() {
		UbuntuB_contour00x76(steps);
		
	}
}

UbuntuB_bbox0x76=[[1, 0], [35, 34]];

module UbuntuB_letter0x76(detail=2) {
	UbuntuB_chunk10x76(steps=detail);
} //end skeleton

module UbuntuB_contour00x77_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[25, 19], [24, 14], [22.5, 9.5], 
		[21, 5], [19, 0], [15.5, 0.0], 
		[12, 0], [11, 3], [9.5, 6.5], 
		[8, 10], [6.5, 14.5], [5, 19], 
		[3.5, 24.0], [2, 29], [1, 34], 
		[6.0, 34.0], [11, 34], [11, 31], 
		[11.5, 28.5], [12, 26], [13.0, 23.0], 
		[14, 20], [14.5, 17.0], [15, 14], 
		[16, 12], [17, 14], [17.5, 17.0], 
		[18, 20], [19.0, 23.0], [20, 26], 
		[20.5, 28.5], [21, 31], [22, 34], 
		[25.5, 34.0], [29, 34], [29, 31], 
		[29.5, 28.5], [30, 26], [31.0, 23.0], 
		[32, 20], [32.5, 17.0], [33, 14], 
		[34, 12], [35, 14], [36.0, 17.0], 
		[37, 20], [37.5, 23.0], [38, 26], 
		[38.5, 28.5], [39, 31], [40, 34], 
		[45.0, 34.0], [50, 34], [48, 29], 
		[46.5, 24.0], [45, 19], [43.5, 14.5], 
		[42, 10], [40.5, 6.5], [39, 3], 
		[38, 0], [34.5, 0.0], [31, 0], 
		[29, 5], [27.5, 9.5], [26, 14], 
		 ]);
}

module UbuntuB_contour00x77_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([12, 0], [11, 3], [9.5, 6.5],steps,10);
	BezConic([11, 34], [11, 31], [11.5, 28.5],steps,10);
	BezConic([11.5, 28.5], [12, 26], [13.0, 23.0],steps,10);
	BezConic([14.5, 17.0], [15, 14], [16, 12],steps,10);
	BezConic([16, 12], [17, 14], [17.5, 17.0],steps,10);
	BezConic([19.0, 23.0], [20, 26], [20.5, 28.5],steps,10);
	BezConic([29, 34], [29, 31], [29.5, 28.5],steps,10);
	BezConic([29.5, 28.5], [30, 26], [31.0, 23.0],steps,10);
	BezConic([32.5, 17.0], [33, 14], [34, 12],steps,10);
	BezConic([34, 12], [35, 14], [36.0, 17.0],steps,10);
	BezConic([36.0, 17.0], [37, 20], [37.5, 23.0],steps,10);
	BezConic([50, 34], [48, 29], [46.5, 24.0],steps,10);
	BezConic([40.5, 6.5], [39, 3], [38, 0],steps,10);
}
}

module UbuntuB_contour00x77_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([25, 19], [24, 14], [22.5, 9.5],steps,10);
	BezConic([22.5, 9.5], [21, 5], [19, 0],steps,10);
	BezConic([9.5, 6.5], [8, 10], [6.5, 14.5],steps,10);
	BezConic([6.5, 14.5], [5, 19], [3.5, 24.0],steps,10);
	BezConic([3.5, 24.0], [2, 29], [1, 34],steps,10);
	BezConic([13.0, 23.0], [14, 20], [14.5, 17.0],steps,10);
	BezConic([17.5, 17.0], [18, 20], [19.0, 23.0],steps,10);
	BezConic([20.5, 28.5], [21, 31], [22, 34],steps,10);
	BezConic([31.0, 23.0], [32, 20], [32.5, 17.0],steps,10);
	BezConic([37.5, 23.0], [38, 26], [38.5, 28.5],steps,10);
	BezConic([38.5, 28.5], [39, 31], [40, 34],steps,10);
	BezConic([46.5, 24.0], [45, 19], [43.5, 14.5],steps,10);
	BezConic([43.5, 14.5], [42, 10], [40.5, 6.5],steps,10);
	BezConic([31, 0], [29, 5], [27.5, 9.5],steps,10);
	BezConic([27.5, 9.5], [26, 14], [25, 19],steps,10);
}
}

module UbuntuB_contour00x77(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x77_skeleton();
			UbuntuB_contour00x77_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x77_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x77(steps=2) {
	difference() {
		UbuntuB_contour00x77(steps);
		
	}
}

UbuntuB_bbox0x77=[[1, 0], [50, 34]];

module UbuntuB_letter0x77(detail=2) {
	UbuntuB_chunk10x77(steps=detail);
} //end skeleton

module UbuntuB_contour00x78_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[18, 23], [21.5, 28.5], [25, 34], 
		[29.5, 34.0], [34, 34], [28.5, 25.5], 
		[23, 17], [27, 13], [30.0, 8.5], 
		[33, 4], [35, 0], [30.0, 0.0], 
		[25, 0], [24, 1], [23.5, 2.5], 
		[23, 4], [22.0, 5.5], [21, 7], 
		[19.5, 8.5], [18, 10], [17, 11], 
		[17, 10], [16.0, 8.5], [15, 7], 
		[14.0, 5.5], [13, 4], [12.0, 2.5], 
		[11, 1], [10, 0], [5.5, 0.0], 
		[1, 0], [1, 2], [2.5, 4.0], 
		[4, 6], [5.5, 8.5], [7, 11], 
		[9.0, 13.0], [11, 15], [12, 17], 
		[9, 21], [6.5, 25.5], [4, 30], 
		[1, 34], [6.0, 34.0], [11, 34], 
		[14.5, 28.5], ]);
}

module UbuntuB_contour00x78_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([23.5, 2.5], [23, 4], [22.0, 5.5],steps,10);
	BezConic([22.0, 5.5], [21, 7], [19.5, 8.5],steps,10);
	BezConic([19.5, 8.5], [18, 10], [17, 11],steps,10);
	BezConic([16.0, 8.5], [15, 7], [14.0, 5.5],steps,10);
	BezConic([14.0, 5.5], [13, 4], [12.0, 2.5],steps,10);
	BezConic([2.5, 4.0], [4, 6], [5.5, 8.5],steps,10);
	BezConic([9.0, 13.0], [11, 15], [12, 17],steps,10);
	BezConic([6.5, 25.5], [4, 30], [1, 34],steps,10);
}
}

module UbuntuB_contour00x78_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([23, 17], [27, 13], [30.0, 8.5],steps,10);
	BezConic([30.0, 8.5], [33, 4], [35, 0],steps,10);
	BezConic([25, 0], [24, 1], [23.5, 2.5],steps,10);
	BezConic([17, 11], [17, 10], [16.0, 8.5],steps,10);
	BezConic([12.0, 2.5], [11, 1], [10, 0],steps,10);
	BezConic([1, 0], [1, 2], [2.5, 4.0],steps,10);
	BezConic([5.5, 8.5], [7, 11], [9.0, 13.0],steps,10);
	BezConic([12, 17], [9, 21], [6.5, 25.5],steps,10);
}
}

module UbuntuB_contour00x78(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x78_skeleton();
			UbuntuB_contour00x78_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x78_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x78(steps=2) {
	difference() {
		UbuntuB_contour00x78(steps);
		
	}
}

UbuntuB_bbox0x78=[[1, 0], [35, 34]];

module UbuntuB_letter0x78(detail=2) {
	UbuntuB_chunk10x78(steps=detail);
} //end skeleton

module UbuntuB_contour00x79_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[34, 34], [31, 24], [28.0, 15.5], 
		[25, 7], [22, -1], [20, -4], 
		[18.5, -6.0], [17, -8], [15.5, -9.5], 
		[14, -11], [12.0, -11.5], [10, -12], 
		[8, -12], [5, -12], [3.5, -11.5], 
		[2, -11], [0, -10], [1.0, -6.5], 
		[2, -3], [3, -3], [4.5, -3.5], 
		[6, -4], [7, -4], [10, -4], 
		[11.0, -2.5], [12, -1], [13, 1], 
		[10, 8], [7.0, 16.0], [4, 24], 
		[1, 34], [6.0, 34.0], [11, 34], 
		[11, 31], [12.0, 28.0], [13, 25], 
		[14.0, 22.0], [15, 19], [16.0, 16.5], 
		[17, 14], [18, 11], [19, 14], 
		[20.0, 16.5], [21, 19], [21.5, 22.0], 
		[22, 25], [23.0, 28.0], [24, 31], 
		[25, 34],[29.5, 34.0], ]);
}

module UbuntuB_contour00x79_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([4.5, -3.5], [6, -4], [7, -4],steps,10);
	BezConic([7, -4], [10, -4], [11.0, -2.5],steps,10);
	BezConic([11.0, -2.5], [12, -1], [13, 1],steps,10);
	BezConic([11, 34], [11, 31], [12.0, 28.0],steps,10);
	BezConic([12.0, 28.0], [13, 25], [14.0, 22.0],steps,10);
	BezConic([14.0, 22.0], [15, 19], [16.0, 16.5],steps,10);
	BezConic([20.0, 16.5], [21, 19], [21.5, 22.0],steps,10);
}
}

module UbuntuB_contour00x79_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([34, 34], [31, 24], [28.0, 15.5],steps,10);
	BezConic([28.0, 15.5], [25, 7], [22, -1],steps,10);
	BezConic([22, -1], [20, -4], [18.5, -6.0],steps,10);
	BezConic([18.5, -6.0], [17, -8], [15.5, -9.5],steps,10);
	BezConic([15.5, -9.5], [14, -11], [12.0, -11.5],steps,10);
	BezConic([12.0, -11.5], [10, -12], [8, -12],steps,10);
	BezConic([8, -12], [5, -12], [3.5, -11.5],steps,10);
	BezConic([3.5, -11.5], [2, -11], [0, -10],steps,10);
	BezConic([2, -3], [3, -3], [4.5, -3.5],steps,10);
	BezConic([13, 1], [10, 8], [7.0, 16.0],steps,10);
	BezConic([7.0, 16.0], [4, 24], [1, 34],steps,10);
	BezConic([16.0, 16.5], [17, 14], [18, 11],steps,10);
	BezConic([18, 11], [19, 14], [20.0, 16.5],steps,10);
	BezConic([21.5, 22.0], [22, 25], [23.0, 28.0],steps,10);
	BezConic([23.0, 28.0], [24, 31], [25, 34],steps,10);
}
}

module UbuntuB_contour00x79(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x79_skeleton();
			UbuntuB_contour00x79_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x79_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x79(steps=2) {
	difference() {
		UbuntuB_contour00x79(steps);
		
	}
}

UbuntuB_bbox0x79=[[0, -12], [34, 34]];

module UbuntuB_letter0x79(detail=2) {
	UbuntuB_chunk10x79(steps=detail);
} //end skeleton

module UbuntuB_contour00x7a_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[30, 27], [29, 26], [27.0, 24.0], 
		[25, 22], [22.5, 19.0], [20, 16], 
		[18.0, 13.5], [16, 11], [14, 8], 
		[22.0, 8.0], [30, 8], [30.0, 4.0], 
		[30, 0], [16.0, 0.0], [2, 0], 
		[2.0, 3.0], [2, 6], [4, 8], 
		[5.5, 10.5], [7, 13], [9.5, 16.0], 
		[12, 19], [14.0, 21.5], [16, 24], 
		[17, 26], [10.0, 26.0], [3, 26], 
		[3.0, 30.0], [3, 34], [16.5, 34.0], 
		[30, 34],[30.0, 30.5], ]);
}

module UbuntuB_contour00x7a_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([30, 27], [29, 26], [27.0, 24.0],steps,10);
	BezConic([27.0, 24.0], [25, 22], [22.5, 19.0],steps,10);
	BezConic([22.5, 19.0], [20, 16], [18.0, 13.5],steps,10);
	BezConic([18.0, 13.5], [16, 11], [14, 8],steps,10);
	BezConic([2, 6], [4, 8], [5.5, 10.5],steps,10);
	BezConic([9.5, 16.0], [12, 19], [14.0, 21.5],steps,10);
	BezConic([14.0, 21.5], [16, 24], [17, 26],steps,10);
}
}

module UbuntuB_contour00x7a_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([5.5, 10.5], [7, 13], [9.5, 16.0],steps,10);
}
}

module UbuntuB_contour00x7a(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x7a_skeleton();
			UbuntuB_contour00x7a_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x7a_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x7a(steps=2) {
	difference() {
		UbuntuB_contour00x7a(steps);
		
	}
}

UbuntuB_bbox0x7a=[[2, 0], [30, 34]];

module UbuntuB_letter0x7a(detail=2) {
	UbuntuB_chunk10x7a(steps=detail);
} //end skeleton

module UbuntuB_contour00x7b_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[2, 23], [5, 23], [6.5, 24.5], 
		[8, 26], [8, 29], [8.0, 34.0], 
		[8, 39], [8, 41], [8.5, 43.5], 
		[9, 46], [10.5, 47.5], [12, 49], 
		[15.0, 49.5], [18, 50], [22, 50], 
		[22.5, 50.0], [23, 50], [23.0, 46.0], 
		[23, 42], [22.5, 42.0], [22, 42], 
		[19, 42], [18.0, 41.0], [17, 40], 
		[17, 37], [17.0, 33.0], [17, 29], 
		[17, 25], [16.0, 23.0], [15, 21], 
		[12, 19], [15, 17], [16.0, 15.0], 
		[17, 13], [17, 10], [17.0, 5.5], 
		[17, 1], [17, -2], [18.0, -3.0], 
		[19, -4], [22, -4], [22.5, -4.0], 
		[23, -4], [23.0, -8.0], [23, -12], 
		[22.5, -12.0], [22, -12], [18, -12], 
		[15.0, -11.0], [12, -10], [10.5, -8.5], 
		[9, -7], [8.5, -5.0], [8, -3], 
		[8, 0], [8.0, 4.5], [8, 9], 
		[8, 12], [6.5, 13.5], [5, 15], 
		[2, 15],[2.0, 19.0], ]);
}

module UbuntuB_contour00x7b_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([2, 23], [5, 23], [6.5, 24.5],steps,10);
	BezConic([6.5, 24.5], [8, 26], [8, 29],steps,10);
	BezConic([22, 42], [19, 42], [18.0, 41.0],steps,10);
	BezConic([18.0, 41.0], [17, 40], [17, 37],steps,10);
	BezConic([17, 1], [17, -2], [18.0, -3.0],steps,10);
	BezConic([18.0, -3.0], [19, -4], [22, -4],steps,10);
	BezConic([8, 9], [8, 12], [6.5, 13.5],steps,10);
	BezConic([6.5, 13.5], [5, 15], [2, 15],steps,10);
}
}

module UbuntuB_contour00x7b_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([8, 39], [8, 41], [8.5, 43.5],steps,10);
	BezConic([8.5, 43.5], [9, 46], [10.5, 47.5],steps,10);
	BezConic([10.5, 47.5], [12, 49], [15.0, 49.5],steps,10);
	BezConic([15.0, 49.5], [18, 50], [22, 50],steps,10);
	BezConic([17, 29], [17, 25], [16.0, 23.0],steps,10);
	BezConic([16.0, 23.0], [15, 21], [12, 19],steps,10);
	BezConic([12, 19], [15, 17], [16.0, 15.0],steps,10);
	BezConic([16.0, 15.0], [17, 13], [17, 10],steps,10);
	BezConic([22, -12], [18, -12], [15.0, -11.0],steps,10);
	BezConic([15.0, -11.0], [12, -10], [10.5, -8.5],steps,10);
	BezConic([10.5, -8.5], [9, -7], [8.5, -5.0],steps,10);
	BezConic([8.5, -5.0], [8, -3], [8, 0],steps,10);
}
}

module UbuntuB_contour00x7b(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x7b_skeleton();
			UbuntuB_contour00x7b_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x7b_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x7b(steps=2) {
	difference() {
		UbuntuB_contour00x7b(steps);
		
	}
}

UbuntuB_bbox0x7b=[[2, -12], [23, 50]];

module UbuntuB_letter0x7b(detail=2) {
	UbuntuB_chunk10x7b(steps=detail);
} //end skeleton

module UbuntuB_contour00x7c_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[6, 50], [10.5, 50.0], [15, 50], 
		[15.0, 19.0], [15, -12], [10.5, -12.0], 
		[6, -12],[6.0, 19.0], ]);
}

module UbuntuB_contour00x7c_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x7c_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module UbuntuB_contour00x7c(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x7c_skeleton();
			UbuntuB_contour00x7c_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x7c_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x7c(steps=2) {
	difference() {
		UbuntuB_contour00x7c(steps);
		
	}
}

UbuntuB_bbox0x7c=[[6, -12], [15, 50]];

module UbuntuB_letter0x7c(detail=2) {
	UbuntuB_chunk10x7c(steps=detail);
} //end skeleton

module UbuntuB_contour00x7d_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[22, 15], [19, 15], [17.5, 13.5], 
		[16, 12], [16, 9], [16.0, 4.5], 
		[16, 0], [16, -3], [15.5, -5.0], 
		[15, -7], [13.0, -8.5], [11, -10], 
		[8.5, -11.0], [6, -12], [2, -12], 
		[1.5, -12.0], [1, -12], [1.0, -8.0], 
		[1, -4], [1.5, -4.0], [2, -4], 
		[5, -4], [6.0, -3.0], [7, -2], 
		[7, 1], [7.0, 5.5], [7, 10], 
		[7, 13], [8.0, 15.0], [9, 17], 
		[12, 19], [9, 21], [8.0, 23.0], 
		[7, 25], [7, 29], [7.0, 33.0], 
		[7, 37], [7, 40], [6.0, 41.0], 
		[5, 42], [2, 42], [1.5, 42.0], 
		[1, 42], [1.0, 46.0], [1, 50], 
		[1.5, 50.0], [2, 50], [6, 50], 
		[8.5, 49.5], [11, 49], [13.0, 47.5], 
		[15, 46], [15.5, 43.5], [16, 41], 
		[16, 39], [16.0, 34.0], [16, 29], 
		[16, 26], [17.5, 24.5], [19, 23], 
		[22, 23],[22.0, 19.0], ]);
}

module UbuntuB_contour00x7d_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([22, 15], [19, 15], [17.5, 13.5],steps,10);
	BezConic([17.5, 13.5], [16, 12], [16, 9],steps,10);
	BezConic([2, -4], [5, -4], [6.0, -3.0],steps,10);
	BezConic([6.0, -3.0], [7, -2], [7, 1],steps,10);
	BezConic([7, 37], [7, 40], [6.0, 41.0],steps,10);
	BezConic([6.0, 41.0], [5, 42], [2, 42],steps,10);
	BezConic([16, 29], [16, 26], [17.5, 24.5],steps,10);
	BezConic([17.5, 24.5], [19, 23], [22, 23],steps,10);
}
}

module UbuntuB_contour00x7d_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([16, 0], [16, -3], [15.5, -5.0],steps,10);
	BezConic([15.5, -5.0], [15, -7], [13.0, -8.5],steps,10);
	BezConic([13.0, -8.5], [11, -10], [8.5, -11.0],steps,10);
	BezConic([8.5, -11.0], [6, -12], [2, -12],steps,10);
	BezConic([7, 10], [7, 13], [8.0, 15.0],steps,10);
	BezConic([8.0, 15.0], [9, 17], [12, 19],steps,10);
	BezConic([12, 19], [9, 21], [8.0, 23.0],steps,10);
	BezConic([8.0, 23.0], [7, 25], [7, 29],steps,10);
	BezConic([2, 50], [6, 50], [8.5, 49.5],steps,10);
	BezConic([8.5, 49.5], [11, 49], [13.0, 47.5],steps,10);
	BezConic([13.0, 47.5], [15, 46], [15.5, 43.5],steps,10);
	BezConic([15.5, 43.5], [16, 41], [16, 39],steps,10);
}
}

module UbuntuB_contour00x7d(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x7d_skeleton();
			UbuntuB_contour00x7d_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x7d_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x7d(steps=2) {
	difference() {
		UbuntuB_contour00x7d(steps);
		
	}
}

UbuntuB_bbox0x7d=[[1, -12], [22, 50]];

module UbuntuB_letter0x7d(detail=2) {
	UbuntuB_chunk10x7d(steps=detail);
} //end skeleton

module UbuntuB_contour00x7e_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[25, 13], [23, 13], [21.0, 13.5], 
		[19, 14], [17.5, 15.0], [16, 16], 
		[14.5, 16.5], [13, 17], [12, 17], 
		[11, 17], [10.5, 17.0], [10, 17], 
		[9.5, 16.5], [9, 16], [8.5, 15.0], 
		[8, 14], [8, 13], [4.5, 14.0], 
		[1, 15], [2, 16], [2.5, 18.0], 
		[3, 20], [4.5, 22.0], [6, 24], 
		[7.5, 25.0], [9, 26], [12, 26], 
		[14, 26], [15.5, 25.0], [17, 24], 
		[18.5, 23.0], [20, 22], [21.5, 21.5], 
		[23, 21], [24, 21], [25, 21], 
		[25.5, 21.0], [26, 21], [26.5, 21.5], 
		[27, 22], [27.5, 23.0], [28, 24], 
		[28, 26], [31.5, 25.0], [35, 24], 
		[35, 22], [34.0, 20.0], [33, 18], 
		[32.0, 16.5], [31, 15], [29.0, 14.0], 
		[27, 13], ]);
}

module UbuntuB_contour00x7e_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([17.5, 15.0], [16, 16], [14.5, 16.5],steps,10);
	BezConic([14.5, 16.5], [13, 17], [12, 17],steps,10);
	BezConic([12, 17], [11, 17], [10.5, 17.0],steps,10);
	BezConic([10.5, 17.0], [10, 17], [9.5, 16.5],steps,10);
	BezConic([9.5, 16.5], [9, 16], [8.5, 15.0],steps,10);
	BezConic([8.5, 15.0], [8, 14], [8, 13],steps,10);
	BezConic([1, 15], [2, 16], [2.5, 18.0],steps,10);
	BezConic([15.5, 25.0], [17, 24], [18.5, 23.0],steps,10);
	BezConic([18.5, 23.0], [20, 22], [21.5, 21.5],steps,10);
	BezConic([21.5, 21.5], [23, 21], [24, 21],steps,10);
	BezConic([24, 21], [25, 21], [25.5, 21.0],steps,10);
	BezConic([25.5, 21.0], [26, 21], [26.5, 21.5],steps,10);
	BezConic([26.5, 21.5], [27, 22], [27.5, 23.0],steps,10);
	BezConic([27.5, 23.0], [28, 24], [28, 26],steps,10);
}
}

module UbuntuB_contour00x7e_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([25, 13], [23, 13], [21.0, 13.5],steps,10);
	BezConic([21.0, 13.5], [19, 14], [17.5, 15.0],steps,10);
	BezConic([2.5, 18.0], [3, 20], [4.5, 22.0],steps,10);
	BezConic([4.5, 22.0], [6, 24], [7.5, 25.0],steps,10);
	BezConic([7.5, 25.0], [9, 26], [12, 26],steps,10);
	BezConic([12, 26], [14, 26], [15.5, 25.0],steps,10);
	BezConic([35, 24], [35, 22], [34.0, 20.0],steps,10);
	BezConic([34.0, 20.0], [33, 18], [32.0, 16.5],steps,10);
	BezConic([32.0, 16.5], [31, 15], [29.0, 14.0],steps,10);
	BezConic([29.0, 14.0], [27, 13], [25, 13],steps,10);
}
}

module UbuntuB_contour00x7e(steps=2) {
	difference() {
		union() {
			UbuntuB_contour00x7e_skeleton();
			UbuntuB_contour00x7e_additive_curves(steps);
		}
		scale([1,1,1.1]) UbuntuB_contour00x7e_subtractive_curves(steps);
	}
}

module UbuntuB_chunk10x7e(steps=2) {
	difference() {
		UbuntuB_contour00x7e(steps);
		
	}
}

UbuntuB_bbox0x7e=[[1, 13], [35, 26]];

module UbuntuB_letter0x7e(detail=2) {
	UbuntuB_chunk10x7e(steps=detail);
} //end skeleton



module UbuntuB(charcode,center=true, steps=2){
    if (charcode == "0x21" || charcode == 33 || charcode=="!"){
        if(center==true){
            translate([-UbuntuB_bbox0x21[1][0]/2,0,0]) UbuntuB_letter0x21(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x21(steps);
        }
    }
    if (charcode == "0x22" || charcode == 34 || charcode=="\""){
        if(center==true){
            translate([-UbuntuB_bbox0x22[1][0]/2,0,0]) UbuntuB_letter0x22(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x22(steps);
        }
    }
    if (charcode == "0x23" || charcode == 35 || charcode=="#"){
        if(center==true){
            translate([-UbuntuB_bbox0x23[1][0]/2,0,0]) UbuntuB_letter0x23(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x23(steps);
        }
    }
    if (charcode == "0x24" || charcode == 36 || charcode=="$"){
        if(center==true){
            translate([-UbuntuB_bbox0x24[1][0]/2,0,0]) UbuntuB_letter0x24(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x24(steps);
        }
    }
    if (charcode == "0x25" || charcode == 37 || charcode=="%"){
        if(center==true){
            translate([-UbuntuB_bbox0x25[1][0]/2,0,0]) UbuntuB_letter0x25(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x25(steps);
        }
    }
    if (charcode == "0x26" || charcode == 38 || charcode=="&"){
        if(center==true){
            translate([-UbuntuB_bbox0x26[1][0]/2,0,0]) UbuntuB_letter0x26(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x26(steps);
        }
    }
    if (charcode == "0x27" || charcode == 39 || charcode=="'"){
        if(center==true){
            translate([-UbuntuB_bbox0x27[1][0]/2,0,0]) UbuntuB_letter0x27(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x27(steps);
        }
    }
    if (charcode == "0x28" || charcode == 40 || charcode=="("){
        if(center==true){
            translate([-UbuntuB_bbox0x28[1][0]/2,0,0]) UbuntuB_letter0x28(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x28(steps);
        }
    }
    if (charcode == "0x29" || charcode == 41 || charcode==")"){
        if(center==true){
            translate([-UbuntuB_bbox0x29[1][0]/2,0,0]) UbuntuB_letter0x29(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x29(steps);
        }
    }
    if (charcode == "0x2a" || charcode == 42 || charcode=="*"){
        if(center==true){
            translate([-UbuntuB_bbox0x2a[1][0]/2,0,0]) UbuntuB_letter0x2a(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x2a(steps);
        }
    }
    if (charcode == "0x2b" || charcode == 43 || charcode=="+"){
        if(center==true){
            translate([-UbuntuB_bbox0x2b[1][0]/2,0,0]) UbuntuB_letter0x2b(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x2b(steps);
        }
    }
    if (charcode == "0x2c" || charcode == 44 || charcode==","){
        if(center==true){
            translate([-UbuntuB_bbox0x2c[1][0]/2,0,0]) UbuntuB_letter0x2c(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x2c(steps);
        }
    }
    if (charcode == "0x2d" || charcode == 45 || charcode=="-"){
        if(center==true){
            translate([-UbuntuB_bbox0x2d[1][0]/2,0,0]) UbuntuB_letter0x2d(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x2d(steps);
        }
    }
    if (charcode == "0x2e" || charcode == 46 || charcode=="."){
        if(center==true){
            translate([-UbuntuB_bbox0x2e[1][0]/2,0,0]) UbuntuB_letter0x2e(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x2e(steps);
        }
    }
    if (charcode == "0x2f" || charcode == 47 || charcode=="/"){
        if(center==true){
            translate([-UbuntuB_bbox0x2f[1][0]/2,0,0]) UbuntuB_letter0x2f(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x2f(steps);
        }
    }
    if (charcode == "0x30" || charcode == 48 || charcode=="0"){
        if(center==true){
            translate([-UbuntuB_bbox0x30[1][0]/2,0,0]) UbuntuB_letter0x30(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x30(steps);
        }
    }
    if (charcode == "0x31" || charcode == 49 || charcode=="1"){
        if(center==true){
            translate([-UbuntuB_bbox0x31[1][0]/2,0,0]) UbuntuB_letter0x31(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x31(steps);
        }
    }
    if (charcode == "0x32" || charcode == 50 || charcode=="2"){
        if(center==true){
            translate([-UbuntuB_bbox0x32[1][0]/2,0,0]) UbuntuB_letter0x32(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x32(steps);
        }
    }
    if (charcode == "0x33" || charcode == 51 || charcode=="3"){
        if(center==true){
            translate([-UbuntuB_bbox0x33[1][0]/2,0,0]) UbuntuB_letter0x33(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x33(steps);
        }
    }
    if (charcode == "0x34" || charcode == 52 || charcode=="4"){
        if(center==true){
            translate([-UbuntuB_bbox0x34[1][0]/2,0,0]) UbuntuB_letter0x34(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x34(steps);
        }
    }
    if (charcode == "0x35" || charcode == 53 || charcode=="5"){
        if(center==true){
            translate([-UbuntuB_bbox0x35[1][0]/2,0,0]) UbuntuB_letter0x35(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x35(steps);
        }
    }
    if (charcode == "0x36" || charcode == 54 || charcode=="6"){
        if(center==true){
            translate([-UbuntuB_bbox0x36[1][0]/2,0,0]) UbuntuB_letter0x36(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x36(steps);
        }
    }
    if (charcode == "0x37" || charcode == 55 || charcode=="7"){
        if(center==true){
            translate([-UbuntuB_bbox0x37[1][0]/2,0,0]) UbuntuB_letter0x37(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x37(steps);
        }
    }
    if (charcode == "0x38" || charcode == 56 || charcode=="8"){
        if(center==true){
            translate([-UbuntuB_bbox0x38[1][0]/2,0,0]) UbuntuB_letter0x38(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x38(steps);
        }
    }
    if (charcode == "0x39" || charcode == 57 || charcode=="9"){
        if(center==true){
            translate([-UbuntuB_bbox0x39[1][0]/2,0,0]) UbuntuB_letter0x39(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x39(steps);
        }
    }
    if (charcode == "0x3a" || charcode == 58 || charcode==":"){
        if(center==true){
            translate([-UbuntuB_bbox0x3a[1][0]/2,0,0]) UbuntuB_letter0x3a(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x3a(steps);
        }
    }
    if (charcode == "0x3b" || charcode == 59 || charcode==";"){
        if(center==true){
            translate([-UbuntuB_bbox0x3b[1][0]/2,0,0]) UbuntuB_letter0x3b(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x3b(steps);
        }
    }
    if (charcode == "0x3c" || charcode == 60 || charcode=="<"){
        if(center==true){
            translate([-UbuntuB_bbox0x3c[1][0]/2,0,0]) UbuntuB_letter0x3c(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x3c(steps);
        }
    }
    if (charcode == "0x3d" || charcode == 61 || charcode=="="){
        if(center==true){
            translate([-UbuntuB_bbox0x3d[1][0]/2,0,0]) UbuntuB_letter0x3d(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x3d(steps);
        }
    }
    if (charcode == "0x3e" || charcode == 62 || charcode==">"){
        if(center==true){
            translate([-UbuntuB_bbox0x3e[1][0]/2,0,0]) UbuntuB_letter0x3e(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x3e(steps);
        }
    }
    if (charcode == "0x3f" || charcode == 63 || charcode=="?"){
        if(center==true){
            translate([-UbuntuB_bbox0x3f[1][0]/2,0,0]) UbuntuB_letter0x3f(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x3f(steps);
        }
    }
    if (charcode == "0x40" || charcode == 64 || charcode=="@"){
        if(center==true){
            translate([-UbuntuB_bbox0x40[1][0]/2,0,0]) UbuntuB_letter0x40(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x40(steps);
        }
    }
    if (charcode == "0x41" || charcode == 65 || charcode=="A"){
        if(center==true){
            translate([-UbuntuB_bbox0x41[1][0]/2,0,0]) UbuntuB_letter0x41(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x41(steps);
        }
    }
    if (charcode == "0x42" || charcode == 66 || charcode=="B"){
        if(center==true){
            translate([-UbuntuB_bbox0x42[1][0]/2,0,0]) UbuntuB_letter0x42(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x42(steps);
        }
    }
    if (charcode == "0x43" || charcode == 67 || charcode=="C"){
        if(center==true){
            translate([-UbuntuB_bbox0x43[1][0]/2,0,0]) UbuntuB_letter0x43(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x43(steps);
        }
    }
    if (charcode == "0x44" || charcode == 68 || charcode=="D"){
        if(center==true){
            translate([-UbuntuB_bbox0x44[1][0]/2,0,0]) UbuntuB_letter0x44(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x44(steps);
        }
    }
    if (charcode == "0x45" || charcode == 69 || charcode=="E"){
        if(center==true){
            translate([-UbuntuB_bbox0x45[1][0]/2,0,0]) UbuntuB_letter0x45(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x45(steps);
        }
    }
    if (charcode == "0x46" || charcode == 70 || charcode=="F"){
        if(center==true){
            translate([-UbuntuB_bbox0x46[1][0]/2,0,0]) UbuntuB_letter0x46(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x46(steps);
        }
    }
    if (charcode == "0x47" || charcode == 71 || charcode=="G"){
        if(center==true){
            translate([-UbuntuB_bbox0x47[1][0]/2,0,0]) UbuntuB_letter0x47(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x47(steps);
        }
    }
    if (charcode == "0x48" || charcode == 72 || charcode=="H"){
        if(center==true){
            translate([-UbuntuB_bbox0x48[1][0]/2,0,0]) UbuntuB_letter0x48(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x48(steps);
        }
    }
    if (charcode == "0x49" || charcode == 73 || charcode=="I"){
        if(center==true){
            translate([-UbuntuB_bbox0x49[1][0]/2,0,0]) UbuntuB_letter0x49(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x49(steps);
        }
    }
    if (charcode == "0x4a" || charcode == 74 || charcode=="J"){
        if(center==true){
            translate([-UbuntuB_bbox0x4a[1][0]/2,0,0]) UbuntuB_letter0x4a(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x4a(steps);
        }
    }
    if (charcode == "0x4b" || charcode == 75 || charcode=="K"){
        if(center==true){
            translate([-UbuntuB_bbox0x4b[1][0]/2,0,0]) UbuntuB_letter0x4b(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x4b(steps);
        }
    }
    if (charcode == "0x4c" || charcode == 76 || charcode=="L"){
        if(center==true){
            translate([-UbuntuB_bbox0x4c[1][0]/2,0,0]) UbuntuB_letter0x4c(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x4c(steps);
        }
    }
    if (charcode == "0x4d" || charcode == 77 || charcode=="M"){
        if(center==true){
            translate([-UbuntuB_bbox0x4d[1][0]/2,0,0]) UbuntuB_letter0x4d(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x4d(steps);
        }
    }
    if (charcode == "0x4e" || charcode == 78 || charcode=="N"){
        if(center==true){
            translate([-UbuntuB_bbox0x4e[1][0]/2,0,0]) UbuntuB_letter0x4e(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x4e(steps);
        }
    }
    if (charcode == "0x4f" || charcode == 79 || charcode=="O"){
        if(center==true){
            translate([-UbuntuB_bbox0x4f[1][0]/2,0,0]) UbuntuB_letter0x4f(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x4f(steps);
        }
    }
    if (charcode == "0x50" || charcode == 80 || charcode=="P"){
        if(center==true){
            translate([-UbuntuB_bbox0x50[1][0]/2,0,0]) UbuntuB_letter0x50(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x50(steps);
        }
    }
    if (charcode == "0x51" || charcode == 81 || charcode=="Q"){
        if(center==true){
            translate([-UbuntuB_bbox0x51[1][0]/2,0,0]) UbuntuB_letter0x51(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x51(steps);
        }
    }
    if (charcode == "0x52" || charcode == 82 || charcode=="R"){
        if(center==true){
            translate([-UbuntuB_bbox0x52[1][0]/2,0,0]) UbuntuB_letter0x52(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x52(steps);
        }
    }
    if (charcode == "0x53" || charcode == 83 || charcode=="S"){
        if(center==true){
            translate([-UbuntuB_bbox0x53[1][0]/2,0,0]) UbuntuB_letter0x53(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x53(steps);
        }
    }
    if (charcode == "0x54" || charcode == 84 || charcode=="T"){
        if(center==true){
            translate([-UbuntuB_bbox0x54[1][0]/2,0,0]) UbuntuB_letter0x54(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x54(steps);
        }
    }
    if (charcode == "0x55" || charcode == 85 || charcode=="U"){
        if(center==true){
            translate([-UbuntuB_bbox0x55[1][0]/2,0,0]) UbuntuB_letter0x55(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x55(steps);
        }
    }
    if (charcode == "0x56" || charcode == 86 || charcode=="V"){
        if(center==true){
            translate([-UbuntuB_bbox0x56[1][0]/2,0,0]) UbuntuB_letter0x56(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x56(steps);
        }
    }
    if (charcode == "0x57" || charcode == 87 || charcode=="W"){
        if(center==true){
            translate([-UbuntuB_bbox0x57[1][0]/2,0,0]) UbuntuB_letter0x57(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x57(steps);
        }
    }
    if (charcode == "0x58" || charcode == 88 || charcode=="X"){
        if(center==true){
            translate([-UbuntuB_bbox0x58[1][0]/2,0,0]) UbuntuB_letter0x58(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x58(steps);
        }
    }
    if (charcode == "0x59" || charcode == 89 || charcode=="Y"){
        if(center==true){
            translate([-UbuntuB_bbox0x59[1][0]/2,0,0]) UbuntuB_letter0x59(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x59(steps);
        }
    }
    if (charcode == "0x5a" || charcode == 90 || charcode=="Z"){
        if(center==true){
            translate([-UbuntuB_bbox0x5a[1][0]/2,0,0]) UbuntuB_letter0x5a(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x5a(steps);
        }
    }
    if (charcode == "0x5b" || charcode == 91 || charcode=="["){
        if(center==true){
            translate([-UbuntuB_bbox0x5b[1][0]/2,0,0]) UbuntuB_letter0x5b(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x5b(steps);
        }
    }
    if (charcode == "0x5c" || charcode == 92 || charcode=="\\"){
        if(center==true){
            translate([-UbuntuB_bbox0x5c[1][0]/2,0,0]) UbuntuB_letter0x5c(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x5c(steps);
        }
    }
    if (charcode == "0x5d" || charcode == 93 || charcode=="]"){
        if(center==true){
            translate([-UbuntuB_bbox0x5d[1][0]/2,0,0]) UbuntuB_letter0x5d(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x5d(steps);
        }
    }
    if (charcode == "0x5e" || charcode == 94 || charcode=="^"){
        if(center==true){
            translate([-UbuntuB_bbox0x5e[1][0]/2,0,0]) UbuntuB_letter0x5e(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x5e(steps);
        }
    }
    if (charcode == "0x5f" || charcode == 95 || charcode=="_"){
        if(center==true){
            translate([-UbuntuB_bbox0x5f[1][0]/2,0,0]) UbuntuB_letter0x5f(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x5f(steps);
        }
    }
    if (charcode == "0x60" || charcode == 96 || charcode=="`"){
        if(center==true){
            translate([-UbuntuB_bbox0x60[1][0]/2,0,0]) UbuntuB_letter0x60(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x60(steps);
        }
    }
    if (charcode == "0x61" || charcode == 97 || charcode=="a"){
        if(center==true){
            translate([-UbuntuB_bbox0x61[1][0]/2,0,0]) UbuntuB_letter0x61(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x61(steps);
        }
    }
    if (charcode == "0x62" || charcode == 98 || charcode=="b"){
        if(center==true){
            translate([-UbuntuB_bbox0x62[1][0]/2,0,0]) UbuntuB_letter0x62(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x62(steps);
        }
    }
    if (charcode == "0x63" || charcode == 99 || charcode=="c"){
        if(center==true){
            translate([-UbuntuB_bbox0x63[1][0]/2,0,0]) UbuntuB_letter0x63(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x63(steps);
        }
    }
    if (charcode == "0x64" || charcode == 100 || charcode=="d"){
        if(center==true){
            translate([-UbuntuB_bbox0x64[1][0]/2,0,0]) UbuntuB_letter0x64(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x64(steps);
        }
    }
    if (charcode == "0x65" || charcode == 101 || charcode=="e"){
        if(center==true){
            translate([-UbuntuB_bbox0x65[1][0]/2,0,0]) UbuntuB_letter0x65(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x65(steps);
        }
    }
    if (charcode == "0x66" || charcode == 102 || charcode=="f"){
        if(center==true){
            translate([-UbuntuB_bbox0x66[1][0]/2,0,0]) UbuntuB_letter0x66(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x66(steps);
        }
    }
    if (charcode == "0x67" || charcode == 103 || charcode=="g"){
        if(center==true){
            translate([-UbuntuB_bbox0x67[1][0]/2,0,0]) UbuntuB_letter0x67(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x67(steps);
        }
    }
    if (charcode == "0x68" || charcode == 104 || charcode=="h"){
        if(center==true){
            translate([-UbuntuB_bbox0x68[1][0]/2,0,0]) UbuntuB_letter0x68(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x68(steps);
        }
    }
    if (charcode == "0x69" || charcode == 105 || charcode=="i"){
        if(center==true){
            translate([-UbuntuB_bbox0x69[1][0]/2,0,0]) UbuntuB_letter0x69(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x69(steps);
        }
    }
    if (charcode == "0x6a" || charcode == 106 || charcode=="j"){
        if(center==true){
            translate([-UbuntuB_bbox0x6a[1][0]/2,0,0]) UbuntuB_letter0x6a(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x6a(steps);
        }
    }
    if (charcode == "0x6b" || charcode == 107 || charcode=="k"){
        if(center==true){
            translate([-UbuntuB_bbox0x6b[1][0]/2,0,0]) UbuntuB_letter0x6b(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x6b(steps);
        }
    }
    if (charcode == "0x6c" || charcode == 108 || charcode=="l"){
        if(center==true){
            translate([-UbuntuB_bbox0x6c[1][0]/2,0,0]) UbuntuB_letter0x6c(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x6c(steps);
        }
    }
    if (charcode == "0x6d" || charcode == 109 || charcode=="m"){
        if(center==true){
            translate([-UbuntuB_bbox0x6d[1][0]/2,0,0]) UbuntuB_letter0x6d(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x6d(steps);
        }
    }
    if (charcode == "0x6e" || charcode == 110 || charcode=="n"){
        if(center==true){
            translate([-UbuntuB_bbox0x6e[1][0]/2,0,0]) UbuntuB_letter0x6e(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x6e(steps);
        }
    }
    if (charcode == "0x6f" || charcode == 111 || charcode=="o"){
        if(center==true){
            translate([-UbuntuB_bbox0x6f[1][0]/2,0,0]) UbuntuB_letter0x6f(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x6f(steps);
        }
    }
    if (charcode == "0x70" || charcode == 112 || charcode=="p"){
        if(center==true){
            translate([-UbuntuB_bbox0x70[1][0]/2,0,0]) UbuntuB_letter0x70(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x70(steps);
        }
    }
    if (charcode == "0x71" || charcode == 113 || charcode=="q"){
        if(center==true){
            translate([-UbuntuB_bbox0x71[1][0]/2,0,0]) UbuntuB_letter0x71(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x71(steps);
        }
    }
    if (charcode == "0x72" || charcode == 114 || charcode=="r"){
        if(center==true){
            translate([-UbuntuB_bbox0x72[1][0]/2,0,0]) UbuntuB_letter0x72(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x72(steps);
        }
    }
    if (charcode == "0x73" || charcode == 115 || charcode=="s"){
        if(center==true){
            translate([-UbuntuB_bbox0x73[1][0]/2,0,0]) UbuntuB_letter0x73(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x73(steps);
        }
    }
    if (charcode == "0x74" || charcode == 116 || charcode=="t"){
        if(center==true){
            translate([-UbuntuB_bbox0x74[1][0]/2,0,0]) UbuntuB_letter0x74(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x74(steps);
        }
    }
    if (charcode == "0x75" || charcode == 117 || charcode=="u"){
        if(center==true){
            translate([-UbuntuB_bbox0x75[1][0]/2,0,0]) UbuntuB_letter0x75(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x75(steps);
        }
    }
    if (charcode == "0x76" || charcode == 118 || charcode=="v"){
        if(center==true){
            translate([-UbuntuB_bbox0x76[1][0]/2,0,0]) UbuntuB_letter0x76(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x76(steps);
        }
    }
    if (charcode == "0x77" || charcode == 119 || charcode=="w"){
        if(center==true){
            translate([-UbuntuB_bbox0x77[1][0]/2,0,0]) UbuntuB_letter0x77(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x77(steps);
        }
    }
    if (charcode == "0x78" || charcode == 120 || charcode=="x"){
        if(center==true){
            translate([-UbuntuB_bbox0x78[1][0]/2,0,0]) UbuntuB_letter0x78(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x78(steps);
        }
    }
    if (charcode == "0x79" || charcode == 121 || charcode=="y"){
        if(center==true){
            translate([-UbuntuB_bbox0x79[1][0]/2,0,0]) UbuntuB_letter0x79(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x79(steps);
        }
    }
    if (charcode == "0x7a" || charcode == 122 || charcode=="z"){
        if(center==true){
            translate([-UbuntuB_bbox0x7a[1][0]/2,0,0]) UbuntuB_letter0x7a(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x7a(steps);
        }
    }
    if (charcode == "0x7b" || charcode == 123 || charcode=="{"){
        if(center==true){
            translate([-UbuntuB_bbox0x7b[1][0]/2,0,0]) UbuntuB_letter0x7b(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x7b(steps);
        }
    }
    if (charcode == "0x7c" || charcode == 124 || charcode=="|"){
        if(center==true){
            translate([-UbuntuB_bbox0x7c[1][0]/2,0,0]) UbuntuB_letter0x7c(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x7c(steps);
        }
    }
    if (charcode == "0x7d" || charcode == 125 || charcode=="}"){
        if(center==true){
            translate([-UbuntuB_bbox0x7d[1][0]/2,0,0]) UbuntuB_letter0x7d(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x7d(steps);
        }
    }
    if (charcode == "0x7e" || charcode == 126 || charcode=="~"){
        if(center==true){
            translate([-UbuntuB_bbox0x7e[1][0]/2,0,0]) UbuntuB_letter0x7e(steps);
        }else{
            translate([0,0,10/2]) UbuntuB_letter0x7e(steps);
        }
    }
}