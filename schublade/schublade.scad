// construction of a peruvian drawer
// byteborg 2012
// rudimentary BOM will be echoed on compile

// all values are meant as samples

use <MCAD/metric_fastners.scad>;

// system constants
GR = 1.618;  // golden ratio
q = .77;       // precision offset (diff/tolerance)

// material thickness
TCORP = 12.3;  // corpus
TFRONT = 3.3;  // front (tapa)
TBACK = 6.3;   // back
TSQ = 20.3;    // square wood

// outer dimensions
XDIM = 298.371;  // width
YDIM = 298.371;  // depth
ZDIM = 499.372;  // height

// port dimension
HDIA = 120.371;
HX = XDIM-(XDIM / GR);
HY = ZDIM-(ZDIM / GR);


module bottom () {
    BOTTOMDIM = [XDIM, YDIM, TCORP];
    HOLE1DIM = [XDIM/2-XDIM/8, TSQ/2, 0];
    HOLE2DIM = [XDIM/2+XDIM/8, TSQ/2, 0];
    echo("BOTTOM", BOTTOMDIM);
    echo("  screws", HOLE1DIM, HOLE2DIM);
    difference () {
        cube(size=BOTTOMDIM);
        translate(HOLE1DIM) cylinder(r=10/2, h=TCORP, center=true);
        translate(HOLE2DIM) cylinder(r=10/2, h=TCORP, center=true);
    }
}

module top () {
    TOPDIM = [XDIM, YDIM, TCORP];
    echo("TOP", TOPDIM);
    cube(size=TOPDIM);
}

module wall() {
    WALLDIM = [ZDIM-TCORP*2, YDIM, TCORP];
    echo("WALL", WALLDIM);
    cube(size=WALLDIM);
}

module back() {
    BACKDIM = [ZDIM, XDIM, TBACK];
    echo("BACK", BACKDIM);
    echo("  port dia", HDIA, "at", [HX, HY]);
    difference() {
        cube(size=BACKDIM);
        translate([HY, HX, -TBACK/2]) cylinder(r=HDIA/2, h=TBACK*2);
    }
}

module front() {
    FRONTDIM = [ZDIM, XDIM, TFRONT];
    HOLESBOT = 7;
    HOLESTOP = 5;
    HOLESLR = 9;
    echo("FRONT", FRONTDIM);
    echo("  holes bottom", HOLESBOT-1, "spacing", XDIM/HOLESBOT);
    echo("  holes top", HOLESTOP-1, "spacing", XDIM/HOLESTOP);
    echo("  holes left/right", HOLESLR-1, "spacing", ZDIM/HOLESLR);
    difference() {
        cube(size=FRONTDIM);
        for (x=[XDIM/HOLESBOT : XDIM/HOLESBOT : XDIM-1]) {
            translate([TCORP/2, x, -.1]) csk_bolt(3, 15);
            echo("    holex", [TCORP/2, x]);
        }
        for (x=[XDIM/HOLESTOP : XDIM/HOLESTOP : XDIM-1]) {
            translate([ZDIM-TCORP/2, x, -.1]) csk_bolt(3, 15);
            echo("    holex", [TCORP/2, x]);
        }
        for (y=[ZDIM/HOLESLR : ZDIM/HOLESLR : ZDIM-1]) {
            translate([y, TCORP/2, -.1]) csk_bolt(3, 15);
            translate([y, XDIM-TCORP/2, -.1]) csk_bolt(3, 15);
            echo("    holey l/r", [y, TCORP/2], [y, XDIM-TCORP/2]);
        }
        // corner holes
        translate([TCORP/2, TCORP/2, -.1]) csk_bolt(3, 15);
        translate([TCORP/2, XDIM-TCORP/2, -.1]) csk_bolt(3, 15);
        echo("    corner holes", [TCORP/2, TCORP/2], [TCORP/2, XDIM-TCORP/2]);
    }
}

module string_assy() {
    VERTDIM = [TSQ, TSQ, ZDIM-TCORP*2];
    TBARDIM = [TSQ, TSQ, XDIM-TCORP*2-q*2];
    FBOTDIM = [TSQ, TSQ, XDIM-TCORP*2];
    FVERTDIM = [TSQ, TSQ, ZDIM-TCORP*2-TSQ*2-q];
    FASTDIM = [TSQ, TSQ, XDIM/2];
    FAST1HOLE = [XDIM/6, TSQ/2, -TCORP/2];
    FAST2HOLE = [-XDIM/6, TSQ/2, -TCORP/2];
    echo("STRING ASSEMBLY");
    echo("  vertical traverse", VERTDIM);
    echo("  T-bar", TBARDIM);
    echo("  frame bottom", FBOTDIM);
    echo("  frame vertical right", FVERTDIM);
    echo("  frame vertical left", FVERTDIM);
    echo("  string fastener", FASTDIM);
    echo("    holes", FAST1HOLE, FAST2HOLE);
    // vertical traverse
    translate([-TSQ/2, TSQ, 0]) cube(size=VERTDIM);
    // upper "T"
    translate([(XDIM-TCORP*2-q*2)/2, 0, ZDIM-TCORP*2-TSQ]) rotate([0, -90, 0]) cube(size=TBARDIM);
    // frame bottom
    translate([(XDIM-TCORP*2)/2, 0, 0]) rotate([0, -90, 0]) cube(size=FBOTDIM);
    // frame right
    translate([(XDIM-TCORP*2)/2-TSQ, 0, TSQ]) cube(size=FVERTDIM);
    // frame left
    translate([-(XDIM-TCORP*2)/2, 0, TSQ]) cube(size=FVERTDIM);
    // string fastener
    translate([XDIM/4, 0, TSQ*3]) rotate([0, -90, 0]) cube(size=FASTDIM);
    // screws
    translate(FAST1HOLE) cap_bolt(5, 60);
    translate(FAST2HOLE) cap_bolt(5, 60);
}

module corpus() {
    bottom();
    translate([0, 0, ZDIM-TCORP]) top();

    translate([TCORP, 0, TCORP]) rotate([0, -90, 0]) wall();
    translate([XDIM, 0, TCORP]) rotate([0, -90, 0]) wall();

    %translate([0, YDIM, 0]) rotate([0, -90, -90]) back();

    %translate([0, -TFRONT, 0]) rotate([0, -90, -90]) front();
}

corpus();
// just an idea... does this work?
//color("BurlyWood") translate([XDIM/2, 0, TCORP]) string_assy();

//.
