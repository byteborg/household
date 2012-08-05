
BASEX = 40;
BASEY = 20;
STRENGTH = 5;

HOLEDIST = 20;

SPAXDIA = 3;
SPAXDEPTH = .5;
SPAXLEN = 35;
SPAXHEAD = 8;

HEADZ = (SPAXHEAD - SPAXDIA) / 2;

ROUND = 1;

q = .01;

module plate(a=0) {
    minkowski() {
        cube(size=[BASEX+q-ROUND, BASEY+a+q-ROUND, STRENGTH-ROUND], center=true);
        sphere(r=ROUND/2);
    }
}

module screw() {
    union() {
        cylinder(r=SPAXDIA/2, h=SPAXLEN, center=true);
        translate([0, 0, (SPAXLEN-HEADZ)/2]) cylinder(r1=SPAXDIA/2, r2=SPAXHEAD/2, h=HEADZ, center=true);        
    }
}

module inner() {
    difference() {
        plate();
        translate([-HOLEDIST/2, 0,-SPAXLEN/2+HEADZ+q]) screw();
        translate([HOLEDIST/2, 0,-SPAXLEN/2+HEADZ+q]) screw();    
    }    
}

module outer() {
    difference() {
        union() {
            plate();
            translate([0, (BASEY-STRENGTH)/2+.05, BASEY-STRENGTH/2+.05]) rotate([90, 0, 0]) plate(BASEY);
            translate([0, (BASEY-STRENGTH)/2, 0]) difference() {
                sphere(r=BASEY-STRENGTH/2-ROUND/2);
                translate([0, BASEX, 0]) cube(size=[BASEX*2, BASEX*2, BASEX*2], center=true);
                translate([0, 0, -BASEX]) cube(size=[BASEX*2, BASEX*2, BASEX*2], center=true);
            }        
        }
        translate([-HOLEDIST/2, 0, 0]) cylinder(r=(SPAXDIA-SPAXDEPTH)/2, h=SPAXLEN, center=true);
        translate([HOLEDIST/2, 0, 0]) cylinder(r=(SPAXDIA-SPAXDEPTH)/2, h=SPAXLEN, center=true);
    }
    
    
}

translate([0, -(BASEY+STRENGTH)/2, 0]) inner();
translate([0, (BASEY+STRENGTH)/2, 0]) outer();