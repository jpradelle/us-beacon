package com.opensabot.multilateration.tdoa;

import com.opensabot.multilateration.Point;
import com.opensabot.multilateration.ThreePointsLateration;
import java.util.ArrayList;
import java.util.List;

public class IterativeTreePointsLateration implements ThreePointsLateration {

	private final double x1;
	private final double y1;
	private final double x2;
	private final double y2;
	private final double x3;
	private final double y3;
	private final List<Point> points1 = new ArrayList<>();
	private final List<Point> points2 = new ArrayList<>();
	private final List<Point> points3 = new ArrayList<>();
	
	public IterativeTreePointsLateration(double x1, double y1, double x2, double y2, double x3, double y3) {
		this.x1 = x1;
		this.y1 = y1;
		this.x2 = x2;
		this.y2 = y2;
		this.x3 = x3;
		this.y3 = y3;
	}
	
	@Override
	public Point findX(double dr1, double dr2, double dr3) {
		points1.clear();
		points2.clear();
		points3.clear();
		
		for (double x = 0; x < 3600; x += 1) {
			findIntersection(x1, y1, x2, y2, x + dr1, x + dr2, points1);
			findIntersection(x1, y1, x3, y3, x + dr1, x + dr3, points2);
//			findIntersection(x2, y2, x3, y3, x + dr2, x + dr3, points3);
		}
		
		return closestPoint(points1, points2);
	}
	
	private void findIntersection(double x1, double y1, double x2, double y2, double r1, double r2, List<Point> points) {
		double a = 2 * (x2 - x1);
		double b = 2 * (y2 - y1);
		double c = Math.pow(x2 - x1, 2) + Math.pow(y2 - y1, 2) - r2 * r2 + r1 * r1;

		double delta = Math.pow(2 * a *c, 2) - 4 * (a * a + b * b) * (c * c - b * b * r1 * r1);

		if (delta > 0) {
			double x11 = x1 + (2 * a * c - Math.sqrt(delta)) / (2 * (a * a + b * b));
			double x12 = x1 + (2 * a * c + Math.sqrt(delta)) / (2 * (a * a + b * b));
			double y11 = y1 + (c - a * (x11 - x1)) / b;
			double y12 = y1 + (c - a * (x12 - x1)) / b;

			if (x11 >= 0 && x11 <= 3000 && y11 >= 0 && y11 <= 2000)
				points.add(new Point(x11, y11));

			if (x12 >= 0 && x12 <= 3000 && y12 >= 0 && y12 <= 2000)
				points.add(new Point(x12, y12));
		} else if (delta == 0) { 
			// problems auround 1400, 1200
			
			double x11 = x1 + (2 * a * c) / (2 * (a * a + b * b));
			
			double y11 = y1 + b / 2 + Math.sqrt(r2 * r2 - Math.pow((2 * c - a * a) / 2 * a, 2));
			double y12 = y1 + b / 2 - Math.sqrt(r2 * r2 - Math.pow((2 * c - a * a) / 2 * a, 2));
			
			if (x11 >= 0 && x11 <= 3000 && y11 >= 0 && y11 <= 2000)
				points.add(new Point(x11, y11));
			if (x11 >= 0 && x11 <= 3000 && y12 >= 0 && y12 <= 2000)
				points.add(new Point(x11, y12));
		}
	}

	private Point closestPoint(List<Point> points1, List<Point> points2) {
		Point fp1 = null;
		Point fp2 = null;
		double d = Double.MAX_VALUE;
		for (final Point p1 : points1) {
			for (final Point p2 : points2) {
				double dist = Math.pow(p1.x - p2.x, 2) + Math.pow(p1.y - p2.y, 2);
				if (dist < d) {
					d = dist;
					fp1 = p1;
					fp2 = p2;
				}
			}
		}
		
		return new Point((fp1.x + fp2.x) / 2, (fp1.y + fp2.y) / 2);
	}

	public List<Point> getPoints1() {
		return points1;
	}

	public List<Point> getPoints2() {
		return points2;
	}

	public List<Point> getPoints3() {
		return points3;
	}
}
