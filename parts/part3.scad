use <../lib/shapes.scad>
include <../_sizes.scad>
include <../_shared.scad>
use <common23.scad>

x1 = 30;
x2 = 40;
z1 = 20;
d1 = 20;
h1 = hs + 15;
h2 = hs + 10;

h3 = is + th * 2 + 3;

module part3() {
	difference() {
		part3plus();
		
		rotate([0, 90, 0])	
			shayba(d = is - th * 2, h = hs - th * 2, rd=8);		
		
		// ball bearing spacing
		
		union()
		{
			translate([hs/2, 0, 0])
			rotate([0, 90, 0])
				torus(d = is - 6, w = 5.5, $fn = 50);
				
			translate([-hs/2, 0, 0])
			rotate([0, 90, 0])
				torus(d = is - 6, w = 5.5, $fn = 50);	
		}
		
		// opening up
		
		translate([2, 0, 0])
		hull()
		{
			rotate([-45, 0, 0]) cylinder(d = 5, h = 30);
			rotate([45, 0, 0]) cylinder(d = 5, h = 30);
		}
		

		com23openingDownMinus();
		
		translate([-com23CableOffset, 0, 0])
		rotate([0, 90, 0])
			ring(d = is - 2, h = 2, t = 2);
		
		//
		
		//translate([0, -50, -50]) cube([50, 50, 150]);
	}
}

module part3plus() {
	rotate([0, 90, 0])	
		shayba(d = is, h = hs, rd=5, $fn = 50);

	difference()
	{
		footPlus();
		footMinus();
				
		rotate([0, 90, 0])
			cylinder(d = h3, h = 50, center = true);
	}
	
	intersection()
	{
		footPlus();
		
		rotate([0, 90, 0])
			ring(d = h3, h = 50, t = th);
	}
	
	com23openingDownPlus	();
}

module footPlus() {
	// rear part
	
	hull()
	{
		translate([-h1 / 2, -x1, -z1])
			twoSphere(d = d1, h = h1);
	
		translate([-h2 / 2, 0, -z1 + 4])
			twoSphere(d = d1, h = h2);
	}
	
	// front part
	
	hull()
	{
		translate([-h1 / 2, x2, -z1])
			twoSphere(d = d1, h = h1);
		
		translate([-h2 / 2, 0, -z1 + 4])
			twoSphere(d = d1, h = h2);
	}
}

module footMinus() {
	// rear part
	
	hull()
	{
		translate([-h1 / 2 + th, -x1, -z1])
			twoSphere(d = d1 - th * 2, h = h1 - th*2);
	
		translate([-h2 / 2 + th, 0, -z1 + 4])
			twoSphere(d = d1 - th * 2, h = h2 - th * 2);
	}

	// front part
	
	hull()
	{
		translate([-h1 / 2 + th, x2, -z1])
			twoSphere(d = d1 - th * 2, h = h1 - th*2);
		
		translate([-h2 / 2 + th, 0, -z1 + 4])
			twoSphere(d = d1 - th * 2, h = h2 - th * 2);
	}
}

module twoSphere(d = 20, h = 30){
	translate([d / 2, 0, 0])
	hull()
	{
		sphere(d=d);

		translate([h - d, 0, 0])
			sphere(d=d);
	}
}