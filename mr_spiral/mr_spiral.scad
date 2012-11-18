// spiral drawing tool for the kids (and parents, too ;)
// byteborg 2012-11-11

include <MCAD/involute_gears.scad>;


hole = 3;       // holes are 3mm dia
gt = 3;         // gear thickness
st = 3;         // stencil thickness

hfn = 12;       // $fn for holes

hd_dia = 7;     // handle diameter
hd_size = 7;    // handle size (length)

q=.00001;

module sp_gear(n_teeth=32, n_holes=9, a_ofs=500, hd_pts=0, hd_ofs=0) {
    difference() {
        union() {
            gear(number_of_teeth=n_teeth,
                 diametral_pitch=1,
                 gear_thickness=st,
                 rim_thickness=gt, rim_width=1,
                 hub_thickness=st,
                 bore_diameter=hole
            );
            if (hd_pts > 0)
            for (i = [0:hd_pts]) {
                rotate([0, 0, i*360/hd_pts+hd_ofs])
                    translate([0, n_teeth/2.5-3, st-q])
                        #handle();
            }
        }
        for (i = [2:n_holes]) {
            rotate([0, 0, i*a_ofs/n_holes])
                translate([i*(n_teeth/2.5)/(n_holes+1), 0, 0])
                    cylinder(r=hole/2, h=3*gt, center=true, $fn=hfn);
        }
    }
}

module outer_gear1(fix_pts=6) {
    difference() {
        union() {
            translate([0, 0, gt/2]) cylinder(r=160/2, h=gt, center=true, $fn=111);
            for (i = [0:fix_pts]) {
                rotate([0, 0, i*360/fix_pts+(360/fix_pts/2)])
                    translate([0, 73, gt/2-q])
                        handle();
            }
        }
        gear(number_of_teeth=121,
             diametral_pitch=1,
             gear_thickness=3*gt,
             rim_thickness=3*gt,
             hub_thickness=3*gt,
             bore_diameter=0,
             backlash=0.2
        );
        for (i = [0:fix_pts]) {
            rotate([0, 0, i*360/fix_pts])
                translate([0, 73, 0])
                    cylinder(r=hole/2, h=10, center=true, $fn=hfn);
        }
    }
}

module handle() {
    translate([0, 0, hd_size/2]) cylinder(r=hd_dia/2, h=hd_size, center=true, $fn=hfn);
}

// TRG = 1;

if (TRG == 1) {
    outer_gear1();
}
if (TRG == 2) {
    translate([0, 40, 0]) sp_gear(23, 3, 200);
    translate([0, -40, 0]) sp_gear(31, 5, 200);
    translate([30, -0, 0]) sp_gear(53, 7, 200);
    translate([-40, 0, 0]) sp_gear(73, 9, 200);
}
