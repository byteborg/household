include <UbuntuB.scad>;

module letter(l="X") {
	UbuntuB(l, center=false, steps=3);
}

ALIGN_X = 25;
SHIFT_Y = 55;

translate([-ALIGN_X, 0, 0]) letter("H");
translate([ALIGN_X, 0, 0]) letter("J");
translate([-ALIGN_X, -SHIFT_Y, 0]) letter("V");
translate([ALIGN_X, -SHIFT_Y, 0]) letter("K");