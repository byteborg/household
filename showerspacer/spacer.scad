
DST=17;
CLR=50;
H=15;
DIA=27;
RIM=3;

FLANKOFS=7.8;
FLANKROT=10.5;

module extern() {
    translate([0, -(DST+CLR)/2, 0]) cube(size=[12, CLR, CLR], center=true);
    translate([0, (DST+DIA)/2, 0]) {
        translate([0, 0, RIM]) cylinder(r=DIA/2, h=H, center=true);
        translate([0, 0, -RIM]) cylinder(r=(DIA-(DIA/10))/2, h=H, center=true);
    }
    
    translate([-(FLANKOFS+CLR/2), 0, 0]) rotate([0, 0, FLANKROT]) cube(size=[CLR, CLR, CLR], center=true);
    translate([FLANKOFS+CLR/2, 0, 0]) rotate([0, 0, -FLANKROT]) cube(size=[CLR, CLR, CLR], center=true);
    translate([0, (DST+CLR)/2+DIA/8, 0]) cube(size=[CLR, CLR, CLR], center=true);
}

module spacer() {
    cube(size=[20, DST+DIA/2, H], center=true);
}

difference() {
    spacer();
    extern();    
}
