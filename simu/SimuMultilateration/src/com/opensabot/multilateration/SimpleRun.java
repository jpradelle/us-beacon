package com.opensabot.multilateration;

import com.opensabot.multilateration.toa.CircleThreePointsToaLateration;
import com.opensabot.multilateration.toa.filter.BasicFilter;
import com.opensabot.multilateration.toa.filter.ThreePointsFilter;

public class SimpleRun {

	public static void main(final String[] args) {
		final Point b1 = new Point(0, 0);
		final Point b2 = new Point(0, 2000);
		final Point b3 = new Point(3000, 1000);
		
		final CircleThreePointsToaLateration tpl = new CircleThreePointsToaLateration(b1, b2, b3);
		
		final Point realPos = new Point(1500, 450);

		double r1 = b1.distance(realPos) + 5;
		double r2 = b2.distance(realPos) + 2;
		double r3 = b3.distance(realPos) + 3;
		
		tpl.findX(r1, r2, r3);
		ThreePointsFilter f = new BasicFilter();
		System.out.println("Found: " + tpl.filter(f));
	}
}
