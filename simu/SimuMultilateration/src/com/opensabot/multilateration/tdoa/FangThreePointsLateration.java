package com.opensabot.multilateration.tdoa;

import com.opensabot.multilateration.Point;
import com.opensabot.multilateration.ThreePointsLateration;
import com.opensabot.multilateration.math.BaseChanger;

public class FangThreePointsLateration implements ThreePointsLateration {

	private final Point b1;
	private final Point b2;
	private final Point b3;
	
	private Point foundP1;
	private Point foundP2;

	public FangThreePointsLateration(final Point b1, final Point b2, final Point b3) {
		this.b1 = b1;
		this.b2 = b2;
		this.b3 = b3;
	}
	
	@Override
	public Point findX(double a, double b, double c) {
		// change base in order to get tb1(0, 0), tb2(x2, 0), tb3(x3, y3)
		final Point tb1, tb2, tb3;
		final BaseChanger bc;
		final double r21, r31;
		if (a == 0) {
			bc = turnBase(b1, b2);
			tb1 = bc.change(b1);
			tb2 = bc.change(b2);
			tb3 = bc.change(b3);
			r21 = fixDiff(b, tb1.distance(tb2));
			r31 = fixDiff(c, tb1.distance(tb3));
		} else if (b == 0) {
			bc = turnBase(b2, b1);
			tb1 = bc.change(b2);
			tb2 = bc.change(b1);
			tb3 = bc.change(b3);
			r21 = fixDiff(a, tb1.distance(tb2));
			r31 = fixDiff(c, tb1.distance(tb3));
		} else {
			bc = turnBase(b3, b1);
			tb1 = bc.change(b3);
			tb2 = bc.change(b1);
			tb3 = bc.change(b2);
			r21 = fixDiff(a, tb1.distance(tb2));
			r31 = fixDiff(b, tb1.distance(tb3));
		}
		
		// search 2 points
		final double g = (r31 * (tb2.x / r21) - tb3.x) / tb3.y;
		final double i = 1 - Math.pow(tb2.x / r21, 2);
		final double h = (tb3.x * tb3.x + tb3.y * tb3.y - r31 * r31 + r31 * r21 * i) / (2 * tb3.y);
		
		final double d = - (i + g * g);
		final double e = tb2.x * i - 2 * g * h;
		final double f = (r21 * r21 / 4) * i * i - h * h;
		
		double delta = e * e - 4 * d * f;
		// avoid double precision issue
		if (delta > -0.00001 && delta <= 0)
			delta = 0;
		if (delta < 0)
			System.out.println("Delta negativ ...");
		final double sqrtDelta = Math.sqrt(delta);
		final double tx1 = (- e + sqrtDelta) / (2 * d);
		final double tx2 = (- e - sqrtDelta) / (2 * d);
		
		final double ty1 = g * tx1 + h;
		final double ty2 = g * tx2 + h;
		
		// restore in orig base
		foundP1 = bc.restore(tx1, ty1);
		foundP2 = bc.restore(tx2, ty2);
		
//		System.out.println("found : " + p1.toString() + ", " + p2.toString());
		
		return keepGoodPoint(foundP1, foundP2, a, b, c);
	}

	private BaseChanger turnBase(final Point p1, final Point p2) {
		final double dx = p2.x - p1.x;
		final double dy = p2.y - p1.y;
		final double theta;
		if (dx != 0) {
			final double alpha = Math.atan(dy / dx);
			theta = Math.PI - alpha;
		} else {
			theta = Math.PI / 2;
		}
		
		return new BaseChanger(- p1.x, - p1.y, theta);
	}
	
	private Point keepGoodPoint(final Point p1, final Point p2, final double a, final double b, final double c) {
		if (a == 0) {
			final double p1b = b2.distance2(p1) - b1.distance2(p1);
			final double p2b = b2.distance2(p2) - b1.distance2(p2);
			if (p1b < 0)
				return p2;
			else if (p2b < 0)
				return p1;
			else {
				final double bc = b * b;
				if (Math.abs(bc - p1b) < Math.abs(bc - p2b))
					return p1;
				else
					return p2;
			}
		} else if (b == 0) {
			final double p1a = b1.distance2(p1) - b2.distance2(p1);
			final double p2a = b1.distance2(p2) - b2.distance2(p2);
			if (p1a < 0)
				return p2;
			else if (p2a < 0)
				return p1;
			else {
				final double ac = a * a;
				if (Math.abs(ac - p1a) < Math.abs(ac - p2a))
					return p1;
				else
					return p2;
			}
		} else if (c == 0) {
			final double p1c = b1.distance2(p1) - b3.distance2(p1);
			final double p2c = b1.distance2(p2) - b3.distance2(p2);
			if (p1c < 0)
				return p2;
			else if (p2c < 0)
				return p1;
			else {
				final double cc = c * c;
				if (Math.abs(cc - p1c) < Math.abs(cc - p2c))
					return p1;
				else
					return p2;
			}
		}
		
		return new Point(-1, -1);
	}
	
	private double fixDiff(final double dr, final double baseDistance) {
		// divide by 0 is bad ;) and I don't want to manage cases :P
		// Will cause an error of 0.005 mm
		if (dr >= 0 && dr <= 0.005)
			return 0.005;
		
		// due to error mesure, dr can be larger than distance between to bases
		// this is not possible ...
		if (dr > baseDistance)
			return baseDistance;
		return dr;
	}

	public Point getFoundP1() {
		return foundP1;
	}

	public Point getFoundP2() {
		return foundP2;
	}
}
