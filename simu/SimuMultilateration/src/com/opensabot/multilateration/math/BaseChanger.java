package com.opensabot.multilateration.math;

import com.opensabot.multilateration.Point;

public class BaseChanger {

	private final double dx;
	private final double dy;
	private final double theta;

	public BaseChanger(double dx, double dy, double theta) {
		this.dx = dx;
		this.dy = dy;
		this.theta = theta;
	}
	
	public Point change(final double x, final double y) {
		final double nx = Math.cos(theta) * (x + dx) - Math.sin(theta) * (y + dy);
		final double ny = Math.sin(theta) * (x + dx) + Math.cos(theta) * (y + dy);
		
		return new Point(nx, ny);
	}
	
	public Point change(final Point p) {
		return change(p.x, p.y);
	}
	
	public Point restore(final double x, final double y) {
		final double nx = - dx + Math.cos(- theta) * x - Math.sin(- theta) * y;
		final double ny = - dy + Math.sin(- theta) * x + Math.cos(- theta) * y;
		
		return new Point(nx, ny);
	}
	
	public Point restore(final Point p) {
		return restore(p.x, p.y);
	}
}
