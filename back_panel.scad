jack_diameter = 6.5;
width = 20;

module elements() {
	cube([width, 120, 1]);

	// Tel	
	translate([(width - 14) / 2 + 2, 3 - 0.3, 1]) 
		minkowski() {
			cube([10, 10.2, 1]);
			cylinder(r=2, h=1, $fn=20);
		}
	
	// Eth
	translate([(width - 14) / 2 + 2, 21, 1]) 
		minkowski() {
			cube([10, 12, 1]);
			cylinder(r=2, h=1, $fn=20);
		}
	
	// FW 1
	translate([(width - 11) / 2 + 2, 21 + 16 + 4.5, 1]) 
		minkowski() {
			cube([7, 9.5, 1]);
			cylinder(r=2, h=1, $fn=20);
		}
	
	// FW 2
	translate([(width - 9) / 2 + 2, 21 + 16 + 4.5 + 13 + 3.8, 1]) 
	
		minkowski() {
			difference() {
				cube([7, 5, 1]);
				translate([0, 3, 0])
					rotate([0, 0, 45])
						cube([3.53, 3.53, 1]);
				translate([0, -3, 0])
					rotate([0, 0, 45])
						cube([3.53, 3.53, 1]);

			}
			cylinder(r=2, h=1, $fn=20);
	}

	// USB 1
	translate([(width - 15) / 2 + 2, 21 + 16 + 4.5 + 13 + 3.8 + 9 + 3.4, 1]) 
		minkowski() {
			cube([11, 4, 1]);
			cylinder(r=2, h=1, $fn=20);
		}

	// USB 2
	translate([(width - 15) / 2 + 2, 21 + 16 + 4.5 + 13 + 3.8 + 9 + 3.4 + 8 + 3.5, 1]) 
		minkowski() {
			cube([11, 4, 1]);
			cylinder(r=2, h=1, $fn=20);
		}

	// Audio In
	translate([(width - 3.2) / 2 + 2, 21 + 16 + 4.5 + 13 + 3.8 + 9 + 3.4 + 8 + 3.5 + 8 + 6.7 + 1.1, 1]) 
		cylinder(r=3.2, h=2, $fn=20);

	// Audio Out
	translate([(width - 3.2) / 2 + 2, 21 + 16 + 4.5 + 13 + 3.8 + 9 + 3.4 + 8 + 3.5 + 8 + 6.7 + 3 + 6.3 + 6, 1]) 
		cylinder(r=3.2, h=2, $fn=20);
}

difference() {
	elements();
	translate([-5, -5, -1])
		cube([30, 82 , 8]);
}