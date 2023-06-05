package com.opensabot.multilateration.toa.filter;

import com.opensabot.multilateration.Point;

public interface ThreePointsFilter {

	public Point filter(Point p1, Point p2, Point p3);
}
