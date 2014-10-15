height = 1.5;

module pci() {
	cube([120.5, 12, height]);	

	difference() {
		translate([8, 12, 0])
			cube([112.5, 3.5, height]);
		translate([8, 12, -0.5])
			rotate([0, 0, 45])
				cube([5, 3.5, height * 2]);
		translate([112, 13.5, -0.5])
			rotate([0, 0, 45])
				cube([3.2, 3.2, height * 2]);
		translate([112, 13.2, -0.5])
				cube([8.5 + 1, 2.4, height * 2]);
	}
	
	difference() {
		translate([8, -5.5, 0])
			cube([112.5, 5.5, height]);
		
		rotate([0, 0, -45])
			translate([5.6, -2.5, -0.5])
				cube([8, 8, height * 2]);

		translate([8, -5.5, -0.5])
				cube([101.5, 2.5, height * 2]);
	}
}

module hdmi() {
	translate([0, 6 + 8.5, 0])
		cylinder(r=1.5, h=height * 2, $fn=20, center=true);
	cube([8, 17, height * 2], center=true);
	translate([0, -(6 + 8.5), 0])
		cylinder(r=1.5, h=height * 2, $fn=20, center=true);
}

//hdmi();
//translate([0, 50, 0])
//	hdmi();
pci();