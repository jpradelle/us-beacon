package com.opensabot.multilateration.toa.filter;

import com.opensabot.multilateration.Point;

public class BasicFilter implements ThreePointsFilter {

	@Override
	public Point filter(final Point p1, final Point p2, final Point p3) {
		final double d1 = p1.distance2(p2);
		final double d2 = p1.distance2(p3);
		final double d3 = p2.distance2(p3);
		
		final double mult = 1.5;
		if (d1 * mult < d2 && d1 * mult < d3) {
			return new Point((p1.x + p2.x) / 2, (p1.y + p2.y) / 2);
		} else if (d2 * mult < d1 && d2 * mult < d3) {
			return new Point((p1.x + p3.x) / 2, (p1.y + p3.y) / 2);
		} else if (d3 * mult < d1 && d3 * mult < d2) {
			return new Point((p2.x + p3.x) / 2, (p2.y + p3.y) / 2);
		}
		
		return new Point((p1.x + p2.x + p3.x) / 3, (p1.y + p2.y + p3.y) / 3);
	}

}
