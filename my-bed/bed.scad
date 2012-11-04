// hannah's bed

// dimensions
INNER_X = 1600;
INNER_Y = 2100;
OUTER_Z = 500;

echo("mattress size", INNER_X, INNER_Y);

// beam width
BEAM_X = 58;
FAZE = 1.15; // faze factor
BOARD_FAZE = FAZE / 2.77;
Z_FACTOR = 3; 
HEAD_FACTOR = 11; // height at head (no. of beams)
BOARD_X = 18;
BOARD_Y = 200;

q = .1; // overlap for stl output

echo("beam width", BEAM_X);
echo("board profile", BOARD_X, BOARD_Y);

module xbeam(dx, dy, dz) {
    translate([dx, dy, dz+BEAM_X/2]) {    
        difference() {
            cube(size=[INNER_Y+q, BEAM_X+q, BEAM_X+q], center=true);
            for (r=[0+45, 90+45, 180+45, 270+45])     
            rotate([r, 0, 0])
                translate([0, BEAM_X*FAZE, 0]) 
                    cube(size=[INNER_Y+1, BEAM_X, BEAM_X], center=true);
        }
    }
}
echo("X beam length", INNER_Y+(BEAM_X*2));
module ybeam(dx, dy, dz) {
    translate([dx, dy, dz+BEAM_X/2]) {
        difference() {
            cube(size=[BEAM_X+q, INNER_X+q, BEAM_X+q], center=true);        
            for (r=[0+45, 90+45, 180+45, 270+45])     
            rotate([0, r, 0])
                translate([BEAM_X*FAZE, 0, 0]) 
                    cube(size=[BEAM_X, INNER_X+1, BEAM_X], center=true);
        }
    }
}
echo("Y beam length", INNER_X+(BEAM_X*4));
module zbeam(dx, dy, dz, ds=0) {
    translate([dx, dy, OUTER_Z/2+ds/2+dz]) {
        difference() {
            cube(size=[BEAM_X+q, BEAM_X+q, OUTER_Z+ds+q], center=true);   
            for (r=[0+45, 90+45, 180+45, 270+45])     
            rotate([0, 0, r])
                translate([BEAM_X*FAZE, 0, 0]) 
                    cube(size=[BEAM_X, BEAM_X, OUTER_Z+ds+1], center=true);
        }
    }
}
echo("Z beam length", OUTER_Z);
echo("Z beam at head", OUTER_Z+(HEAD_FACTOR*BEAM_X));

module etage(dz) {
    translate([0,0,dz]) {
        xbeam(0, -(INNER_X+BEAM_X)/2, 0);
        xbeam(0, (INNER_X+BEAM_X)/2, 0);
        ybeam(-(INNER_Y+BEAM_X)/2, 0, 0);
        ybeam((INNER_Y+BEAM_X)/2, 0, 0);
    }
}

module yboard(dx, dy, dz) {
    translate([dx, dy, dz]) {
        difference() {
            cube(size=[BOARD_X+q, INNER_X+q, BOARD_Y+q], center=true);
            for (r=[0+45, 90+45, 180+45, 270+45])     
            rotate([0, r, 0])
                translate([BOARD_Y*BOARD_FAZE, 0, 0]) 
                    cube(size=[BOARD_X, INNER_X+1, BOARD_Y], center=true);
        }
    }
}
module headboard(h=0) {
    difference() {
        cube(size=[BOARD_X+q, h+q, BOARD_Y+q], center=true);
        for (r=[0+45, 90+45, 180+45, 270+45])     
        rotate([0, r, 0])
            translate([BOARD_Y*BOARD_FAZE, 0, 0]) 
                cube(size=[BOARD_X, INNER_X+1, BOARD_Y], center=true);
    }
}

// vertical
zbeam(-(INNER_Y+BEAM_X)/2, -(INNER_X+BEAM_X)/2, 0, BEAM_X*HEAD_FACTOR);
zbeam(-(INNER_Y+BEAM_X)/2, (INNER_X+BEAM_X)/2, 0, BEAM_X*HEAD_FACTOR);
zbeam((INNER_Y+BEAM_X)/2, -(INNER_X+BEAM_X)/2, 0);
zbeam((INNER_Y+BEAM_X)/2, (INNER_X+BEAM_X)/2,0);

// etages
for (z=[1:Z_FACTOR])
    etage(OUTER_Z-(z*BEAM_X));
    
// bottom
translate([0, 0, OUTER_Z-(Z_FACTOR-1)*BEAM_X]) {
    translate([0, 0, -BEAM_X]) {
        xbeam(0, 0, 0);
        translate([0, -(INNER_X-BEAM_X)/2, 0]) xbeam(0,0,0);
        translate([0, (INNER_X-BEAM_X)/2, 0]) xbeam(0,0,0);
    }
    translate([0, 0, BOARD_X/2]) {
        rotate([0, 90, 0]) yboard(0,0,0);
        for (y=[1:round(INNER_Y/2/BOARD_Y)]) {
            translate([y*BOARD_Y, 0, 0]) 
                rotate([0, 90, 0]) yboard(0,0,0);
            translate([-y*BOARD_Y, 0, 0]) 
                rotate([0, 90, 0]) yboard(0,0,0);
        }
        
    }
} 





// check: mattress
translate([0, 0, OUTER_Z-(BEAM_X)]) 
    %cube(size=[INNER_Y, INNER_X, 200], center=true);

// head part
ybeam(-(INNER_Y+BEAM_X)/2, 0, OUTER_Z-BEAM_X+HEAD_FACTOR*BEAM_X);
for (z=[0:round(HEAD_FACTOR*BEAM_X/BOARD_Y)-1]) {
    translate([-(INNER_Y+BEAM_X)/2, 0, OUTER_Z+BEAM_X*1.5+z*BOARD_Y]) 
        yboard(0,0,0);
}
for (y=[0, -INNER_X/3.5, INNER_X/3.5])
    translate([-(INNER_Y+BEAM_X)/2-BOARD_X, y, OUTER_Z-BEAM_X/2+HEAD_FACTOR*BEAM_X/2]) 
    rotate([90, 0, 0]) 
    headboard((HEAD_FACTOR-1)*BEAM_X);
// yboard(-(INNER_Y+BOARD_X)/2, 0, OUTER_Z-BEAM_X+180);

//.
