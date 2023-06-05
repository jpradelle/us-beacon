package com.opensabot.multilateration;

public class Point {
	public double x;
	public double y;

	public Point(double x, double y) {
		this.x = x;
		this.y = y;
	}

	public Point(final Point p) {
		this.x = p.x;
		this.y = p.y;
	}
	
	@Override
	public String toString() {
		return "(" + x + ", " + y + ")";
	}
	
	public double distance2(final Point p) {
		return Math.pow(x - p.x, 2) + Math.pow(y - p.y, 2);
	}
	
	public double distance(final Point p) {
		return Math.sqrt(distance2(p));
	}
}
