jack_diameter = 6.5;

difference() {
	translate([0, 3, 0])
		cube([11, 60, 7], center=true);

	// Screw holes
	translate([0, 11, 0])
		cylinder(r=2.8, h=8, center=true, $fn=20);
	translate([0, -12, 0])
		cylinder(r=2.8, h=8, center=true, $fn=20);

	translate([0, -21, 0])
		cylinder(r=jack_diameter/2, h=8, center=true, $fn=20);

	translate([0, -1, 0])
		cube([7, 14.5, 8], center=true);

	translate([0, 23, 0])
		cube([7, 14.5, 8], center=true);
}