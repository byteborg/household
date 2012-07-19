// hannah's bed

// dimensions
INNER_X = 900;
INNER_Y = 2000;
OUTER_Z = 1100;

echo("mattress size", INNER_X, INNER_Y);

// beam width
BEAM_X = 58;
BOARD_X = 18;
BOARD_Y = 144;
FAZE = 1.15; // faze factor
BOARD_FAZE = FAZE / 2.6;
echo("beam width", BEAM_X);
echo("board profile", BOARD_X, BOARD_Y);

q = .1; // overlap for stl export

module xbeam(dx, dy, dz) {
    translate([dx, dy, dz+BEAM_X/2])
    {    
        difference() {
            cube(size=[INNER_Y+(BEAM_X*2)+q, BEAM_X+q, BEAM_X+q], center=true);
            for (r=[0+45, 90+45, 180+45, 270+45])     
            rotate([r, 0, 0])
                translate([0, BEAM_X*FAZE, 0]) 
                    cube(size=[INNER_Y+(BEAM_X*2)+1, BEAM_X, BEAM_X], center=true);
        }
    }
}
echo("X beam length", INNER_Y+(BEAM_X*2));

module ybeam(dx, dy, dz) {
    translate([dx, dy, dz+BEAM_X/2]) {
        difference() {
            cube(size=[BEAM_X+q, INNER_X+(BEAM_X*4)+q, BEAM_X+q], center=true);        
            for (r=[0+45, 90+45, 180+45, 270+45])     
            rotate([0, r, 0])
                translate([BEAM_X*FAZE, 0, 0]) 
                    cube(size=[BEAM_X, INNER_X+(BEAM_X*4)+1, BEAM_X], center=true);
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
echo("Z beam at head", OUTER_Z+320);

module etage(dz) {
    translate([0,0,dz]) {
        xbeam(0, -(INNER_X+BEAM_X)/2, 0);
        xbeam(0, (INNER_X+BEAM_X)/2, 0);
        ybeam(-(INNER_Y+BEAM_X)/2, 0, BEAM_X);
        ybeam((INNER_Y+BEAM_X)/2, 0, BEAM_X);
    }
}

module yboard(dx, dy, dz) {
    translate([dx, dy, dz]) {
        difference() {
            cube(size=[BOARD_X+q, INNER_X+(BEAM_X*4)+q, BOARD_Y+q], center=true);
            for (r=[0+45, 90+45, 180+45, 270+45])     
            rotate([0, r, 0])
                translate([BOARD_Y*BOARD_FAZE, 0, 0]) 
                    cube(size=[BOARD_X, INNER_X+(BEAM_X*4)+1, BOARD_Y], center=true);
        }
    }
}

// vertical
zbeam(-(INNER_Y-BEAM_X)/2, -(INNER_X+3*BEAM_X)/2, 0, 320);
zbeam(-(INNER_Y-BEAM_X)/2, (INNER_X+3*BEAM_X)/2, 0, 320);
zbeam((INNER_Y-BEAM_X)/2, -(INNER_X+3*BEAM_X)/2, 0);
zbeam((INNER_Y-BEAM_X)/2, (INNER_X+3*BEAM_X)/2,0);
zbeam(0, (INNER_X+3*BEAM_X)/2, 0, -BEAM_X);

// base
xbeam(0, (INNER_X+BEAM_X)/2, BEAM_X);
ybeam(-(INNER_Y+BEAM_X)/2, 0, 0);
ybeam((INNER_Y+BEAM_X)/2, 0, 0);

// etages
difference() {
    etage(OUTER_Z-(BEAM_X*2));
    // entrance
    translate([410/2, -INNER_X/2-BEAM_X/2, OUTER_Z-(BEAM_X*1.5)]) 
        cube(size=[410-BEAM_X+q, BEAM_X*2+q, BEAM_X*2+q], center=true);
}
echo("entrance width", 410-BEAM_X);
etage(OUTER_Z-(BEAM_X*2)-320);

translate([0, -INNER_X/2-BEAM_X+BOARD_X/2, OUTER_Z-BEAM_X-320+BOARD_Y]) {
    translate([-INNER_Y/4+BEAM_X/4, 0, 0])
        difference() {
            cube(size=[INNER_Y/2+BEAM_X/2+q, BOARD_X+q, BOARD_Y+q], center=true);
            for (r=[0+45, 90+45, 180+45, 270+45])     
            rotate([r, 0, 0])
                translate([0, BOARD_Y*BOARD_FAZE, 0]) 
                    cube(size=[INNER_Y/2+BEAM_X/2+1, BOARD_X, BOARD_Y], center=true);
        }
    translate([(INNER_Y-520)/2-BEAM_X, 0, 0])
        difference() {
            cube(size=[INNER_Y/2-410+BEAM_X/2+q, BOARD_X+q, BOARD_Y+q], center=true);
            for (r=[0+45, 90+45, 180+45, 270+45])     
            rotate([r, 0, 0])
                translate([0, BOARD_Y*BOARD_FAZE, 0]) 
                    cube(size=[INNER_Y/2-410+BEAM_X/2+1, BOARD_X, BOARD_Y], center=true);
        }
}
echo("following values might be wrong(!):")
echo("boards at entry");
echo("  left side", INNER_Y/2+BEAM_X/2);
echo("  right side", INNER_Y/2-410+BEAM_X/2);
echo("beams at entry");
echo("  left side", INNER_Y/2+BEAM_X*2.5);
echo("  right side", INNER_Y/2-410+BEAM_X*2.5);

// check: mattress
translate([0, 0, OUTER_Z-(BEAM_X*2)-320+100]) 
    %cube(size=[INNER_Y, INNER_X, 200], center=true);

// matress holder
yboard(-(INNER_Y+BOARD_X)/2, 0, OUTER_Z-BEAM_X-320+BOARD_Y);
yboard((INNER_Y+BOARD_X)/2, 0, OUTER_Z-BEAM_X-320+BOARD_Y);


// head part
ybeam(-(INNER_Y+BEAM_X)/2, 0, OUTER_Z-BEAM_X+320);
yboard(-(INNER_Y+BOARD_X)/2, 0, OUTER_Z-BEAM_X+180);


// ladder
zbeam(0, -(INNER_X+3*BEAM_X)/2, 0, -BEAM_X);
zbeam(410, -(INNER_X+3*BEAM_X)/2, 0, -BEAM_X);
translate([410/2, -(INNER_X+3*BEAM_X)/2, 250]) 
for (z = [0:1]) {
    translate([0, 0, z*250]) {
        rotate([90, 0, 90]) 
        cylinder(r=30/2, h=410+q, center=true);
    }
}

//.
