height = 19.5;

module outer() {
	minkowski() {
		cube([35 - 8, 27 - 8, height - 2], center=true);
		cylinder(r=4, h=1, $fn=20);
	}
}

module inner() {
	minkowski() {
		cube([29.5 - 8, 20.5 - 8, height - 2], center=true);
		cylinder(r=4, h=1, $fn=20);
	}
}

module frame_outer() {
	minkowski() {
		cube([32.5 - 8, 24.5 - 8, height - 2], center=true);
		cylinder(r=4, h=1, $fn=20);
	}
}

module body() {
	difference() {
		outer();
		inner();
	}
	
	intersection() {
		union() {
			translate([-14.8, 10.2, 0])
				rotate([0, 0, 45])
					cube([8.5, 8.5, height], center=true);
			
			translate([14.8, 10.2, 0])
				rotate([0, 0, 45])
					cube([8.5, 8.5, height], center=true);
		}
		inner();
	}
}

difference() {
	body();

	translate([0, 0, height / 2])
	scale([1, 1, 1 / 15])
	difference() {
		outer();
		frame_outer();
	}
}

