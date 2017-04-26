include <../brushless/_sizes.scad>
use <../lib/shapes.scad>
use <../lib/bolt.scad>
use <../lib/sensor.scad>
use <../lib/pulley.scad>
use <../lib/ballBearing.scad>
use <../brushless/_shared.scad>

bolts = [[6, 22, 0], [-6, 22, 0],
		 [6, -22, 0], [-6, -22, 0],
		 [23, 0, 0], [-23, 0, 0]];

difference()
{
	union()
	{
		sideOuterA();
		color("turquoise") sideOuterB();
		
		color("white") ballBearing6805();
		
		sideInner();
	}
	
	//translate([-5, 0, -25])
	//cube([100, 100, 50]);
}

module sideOuterA() {
	z = belt / 2 + thEdge + 1 + rod/2;
	
	difference()
	{
		union()
		{
			difference()
			{
				pulley(teeth=90, height = belt, center = true, upperBorder = false);
				
				translate([0, 0, -pulleyH / 2 + thEdge])
					cylinder(d = bbo, h = 40, $fn = 100);
					
				cylinder(d = bbo - thEdge * 2, h = 40, center = true, $fn = 100);
			}
			
			// B
			
			difference()
			{
				translate([0, 0, belt / 2])
					cylinder(d = 58, h = rod / 2 + 1 + thEdge, $fn = 100);
					
				cylinder(d = bbo, h = 40, center = true, $fn = 100);

				sideOuterMinusRods();
			}
		}
	
		for (x = bolts)
		{
			translate(x)
			translate([0, 0, z])
				boltbMinus();
		}
	}
}

module sideOuterB() {
	l = rod / 2 + th;
	z = belt / 2 + thEdge + 1 + rod/2;

	difference()
	{
		union()
		{
			translate([0, 0, z])
			intersection()
			{
				shayba(d = 58, h = l * 2, rd = 10);
				cylinder(d = 58, h = l);
			}
			
			intersection()
			{
				cube([18, 100, 30], center = true);
				
				translate([0, 0, bbh / 2])
					ring(d = bboPlastic - 3 * 2, h = rod / 2 + 1 + thEdge, t = 3, center = false);			
			}
		}
		
		translate([0, 0, z])
		rotate([0, 0, 90])
			rotationSensorSpacing();
		
		sideOuterMinusRods();
		
		translate([0, 0, z + 4])
			cylinder(d = 20, h = 20);
			
		for (x = bolts)
		{
			translate(x)
			translate([0, 0, z])
				boltaMinus();
		}
	}
}

module sideOuterMinusRods() {
	translate([15, 82, belt / 2 + thEdge + 1 + rod / 2])
	rotate([90, 0, 0])
		cylinder(d = rod, h = 100, $fn = 50);
		
	translate([-15, 82, belt / 2 + thEdge + 1 + rod / 2])
	rotate([90, 0, 0])
		cylinder(d = rod, h = 100, $fn = 50);		
}

module sideInner(outside = 20) {
	translate([0, 0, -(outside - thEdge) / 2])
		ring(d = bbi - th * 2, t = th, h = bbh + outside + thEdge, $fn = 70);
		
	translate([0, 0, (bbh + thEdge) / 2])
		ring(d = bbi, t = thEdge, h = thEdge, $fn = 70);

	difference()
	{
		coneCup(d1 = bbi, d2 = 8, h = 10, th = 2);
		
		difference()
		{
			ring(d = bbi - th* 2 - 10, t =10, h = 20);
			cube([30, 30, 30]);
		}
		
		difference()
		{
			cylinder(d = bbi - th* 2, h = 8);
			cube([30, 30, 30]);
		}		
	}
		
	translate([0, 0, 11])
		dCylinder(h = 5, d = 4, x = 1, $fn = 20);	
}