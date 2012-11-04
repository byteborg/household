// Tomatenhaus

SLANT = 10; // Dachneigung

DIM_X = 2400;
DIM_Y = 2400;
DIM_Z = 1800;


BEAM_X = 58;
FAZE = 1.15;

q = .1;


module beam(l=0) {
    difference() {
        cube(size=[BEAM_X+q, BEAM_X+q, l+q], center=true);
        for (r=[0+45, 90+45, 180+45, 270+45])     
        rotate([0, 0, r])
            translate([0, BEAM_X*FAZE, 0]) 
                cube(size=[BEAM_X, BEAM_X, l+(10*q)], center=true);
        
    }
}

// Z
translate([-(DIM_X-3*BEAM_X)/2, -(DIM_Y/2-BEAM_X), DIM_Z/2]) 
    beam(DIM_Z);
translate([(DIM_X-3*BEAM_X)/2, -(DIM_Y/2-BEAM_X), DIM_Z/2]) 
    beam(DIM_Z);
translate([-(DIM_X-3*BEAM_X)/2, (DIM_Y/2-BEAM_X), (DIM_Z-(DIM_Y*sin(SLANT))-(BEAM_X*tan(SLANT)))/2]) 
    beam(DIM_Z-(DIM_Y*sin(SLANT))-(BEAM_X*tan(SLANT)));
translate([(DIM_X-3*BEAM_X)/2, (DIM_Y/2-BEAM_X), (DIM_Z-(DIM_Y*sin(SLANT))-(BEAM_X*tan(SLANT)))/2]) 
    beam(DIM_Z-(DIM_Y*sin(SLANT))-(BEAM_X*tan(SLANT)));

// X
translate([0, -DIM_Y/2, DIM_Z-BEAM_X/2]) 
    rotate([0, 90, 0]) 
        beam(DIM_X);
translate([0, DIM_Y/2, DIM_Z-(DIM_Y*sin(SLANT))-(BEAM_X*tan(SLANT))-BEAM_X/2]) 
    rotate([0, 90, 0]) 
        beam(DIM_X);

// Y
translate([-(DIM_X-BEAM_X)/2+10, 0, DIM_Z-(DIM_Y*sin(SLANT)/2)-BEAM_X*1.5]) 
    rotate([90-SLANT, 0, 0]) 
        beam(DIM_Y/cos(SLANT)+BEAM_X);
translate([(DIM_X-BEAM_X)/2+10, 0, DIM_Z-(DIM_Y*sin(SLANT)/2)-BEAM_X*1.5]) 
    rotate([90-SLANT, 0, 0]) 
        beam(DIM_Y/cos(SLANT)+BEAM_X);
echo("beam length Y", DIM_Y/cos(SLANT));