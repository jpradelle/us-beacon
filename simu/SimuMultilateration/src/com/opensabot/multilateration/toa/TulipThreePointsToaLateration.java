package com.opensabot.multilateration.toa;

import com.opensabot.multilateration.Point;

public class TulipThreePointsToaLateration {

	private final Point b1;
	private final Point b2;
	private final Point b3;

	public TulipThreePointsToaLateration(Point b1, Point b2, Point b3) {
		this.b1 = b1;
		this.b2 = b2;
		this.b3 = b3;
	}
	
	public Point findX(double a, double b, double c) {
		// https://confluence.slac.stanford.edu/display/IEPM/TULIP+Algorithm+Alternative+Trilateration+Method
		final double x = (((a*a - b*b) + (b2.x*b2.x - b1.x*b1.x) + (b2.y*b2.y-b1.y*b1.y)) * (2*b3.y-2*b2.y) - ((b*b-c*c) + (b3.x*b3.x-b2.x*b2.x) + (b3.y*b3.y-b2.y*b2.y)) *(2*b2.y-2*b1.y)) /
				((2*b2.x - 2*b3.x) * (2*b2.y - 2*b1.y) - (2*b2.x - 2*b2.x) * (2*b3.y - 2*b2.y));

		final double y = ((a*a-b*b) + (b2.x*b2.x-b1.x*b1.x) + (b2.y*b2.y-b1.y*b1.y) + x*(2*b1.x-2*b2.x)) / (2*b2.y-2*b1.y);
		
		return new Point(x, y);
	}
}
