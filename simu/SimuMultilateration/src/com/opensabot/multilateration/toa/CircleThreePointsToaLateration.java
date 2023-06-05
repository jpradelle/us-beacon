package com.opensabot.multilateration.toa;

import com.opensabot.multilateration.Point;
import com.opensabot.multilateration.toa.filter.ThreePointsFilter;
import com.opensabot.multilateration.util.Pair;

public class CircleThreePointsToaLateration {

	private final Point b1;
	private final Point b2;
	private final Point b3;
	
	private Point p12;
	private Point p23;
	private Point p13;

	public CircleThreePointsToaLateration(Point b1, Point b2, Point b3) {
		this.b1 = b1;
		this.b2 = b2;
		this.b3 = b3;
	}
	
	public void findX(double a, double b, double c) {
		Pair<Point> points1 = findIntersections(b1, b2, a, b);
		Pair<Point> points2 = findIntersections(b2, b3, b, c);
		Pair<Point> points3 = findIntersections(b1, b3, a, c);
		
		keepGoodPoint(points1, points2, points3);
	}
	
	public Point filter(final ThreePointsFilter filter) {
		return filter.filter(p12, p23, p13);
	}

	private Pair<Point> findIntersections(final Point p1, final Point p2, final double r1, final double r2) {
		double a = 2 * (p2.x - p1.x);
		double b = 2 * (p2.y - p1.y);
		double c = Math.pow(p2.x - p1.x, 2) + Math.pow(p2.y - p1.y, 2) - r2 * r2 + r1 * r1;

		double delta = Math.pow(2 * a *c, 2) - 4 * (a * a + b * b) * (c * c - b * b * r1 * r1);

		if (delta >= 0) {
			final double sqrtDelta = Math.sqrt(delta);
			
			double x1 = p1.x + (2 * a * c - sqrtDelta) / (2 * (a * a + b * b));
			double x2 = p1.x + (2 * a * c + sqrtDelta) / (2 * (a * a + b * b));
			double y1 = p1.y + (c - a * (x1 - p1.x)) / b;
			double y2 = p1.y + (c - a * (x2 - p1.x)) / b;

			return new Pair<>(new Point(x1, y1), new Point(x2, y2));
		} else {
			final double x1 = p1.x + ((p2.x - p1.x) * (r1 / (r1 + r2)));
			final double y1 = p1.y + ((p2.y - p1.y) * (r1 / (r1 + r2)));
			return new Pair<>(new Point(x1, y1), null);
		}
	}
	
	private void keepGoodPoint(final Pair<Point> pair1, final Pair<Point> pair2, final Pair<Point> pair3) {
		double min = Double.MAX_VALUE;
		p12 = null;
		p23 = null;
		p13 = null;
		for (final Point p1 : pair1.asList()) {
			for (final Point p2 : pair2.asList()) {
				for (final Point p3 : pair3.asList()) {
					double dist = p1.distance2(p2) + p1.distance2(p3) + p2.distance2(p3);
					if (dist < min) {
						min = dist;
						p12 = p1;
						p23 = p2;
						p13 = p3;
					}
				}
			}
		}
	}

	public Point getP12() {
		return p12;
	}

	public Point getP23() {
		return p23;
	}

	public Point getP13() {
		return p13;
	}
}
