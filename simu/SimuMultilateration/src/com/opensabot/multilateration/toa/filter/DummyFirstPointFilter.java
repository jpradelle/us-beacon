package com.opensabot.multilateration.toa.filter;

import com.opensabot.multilateration.Point;

public class DummyFirstPointFilter implements ThreePointsFilter {

	@Override
	public Point filter(Point p1, Point p2, Point p3) {
		return p1;
	}
}
