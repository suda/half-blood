hdd_width = 120;
mount_width = 150;
height = 60;
horizontal_padding = 20;
vertical_padding = 5;

hdd_hole_spacing = 101;
mount_hole_spacing = 140;

module frame() { 
	difference() {
		cube([hdd_width, height, 1], center=true);
		cube([hdd_width - (2 * horizontal_padding), height - (2 * vertical_padding), 2], center=true);
	}
	
	translate([0, 0, 2])
		cube([hdd_width, 1, 5], center=true);
	
	
	translate([0, height / 2, 9.5])
		cube([mount_width, 1, 20], center=true);
}

module hdd_holes(z) {
	translate([-(hdd_hole_spacing / 2), z + 6, 0])
		cylinder(r=2, h=2, center=true, $fn=10);
	translate([hdd_hole_spacing / 2, z + 6, 0])
		cylinder(r=2, h=2, center=true, $fn=10);
}

module mount_holes(y) {
	translate([-(mount_hole_spacing / 2), height / 2, y])
		rotate([90, 0, 0])
			cylinder(r=2, h=2, center=true, $fn=10);
	translate([mount_hole_spacing / 2, height / 2, y])
		rotate([90, 0, 0])
			cylinder(r=2, h=2, center=true, $fn=10);
}

difference() {
	frame();

	hdd_holes(-(height / 4));
	hdd_holes(height / 4);

	mount_holes(13);	
}