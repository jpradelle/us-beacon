package com.opensabot.multilateration.toa.filter;

import com.opensabot.multilateration.signature.Errors;
import com.opensabot.multilateration.Point;
import com.opensabot.multilateration.signature.Signature;

public class FromEstimatedPosFilter implements ThreePointsFilter {

	private Point estimatedPosition;
	private final Errors error12;
	private final Errors error23;
	private final Errors error13;
	private final int width;
	private final int height;
	private final int range;

	public FromEstimatedPosFilter(final Signature error12, final Signature error23, final Signature error13, final int width, final int height, final int range) {
		this.estimatedPosition = null;
		this.error12 = error12.getErrors();
		this.error23 = error23.getErrors();
		this.error13 = error13.getErrors();
		this.width = width;
		this.height = height;
		this.range = range;
	}
	
	public void setEstimatedPosition(final Point estimatedPosition) {
		this.estimatedPosition = estimatedPosition;
	}
	
	@Override
	public Point filter(final Point p12, final Point p23, final Point p13) {
		final int ix = (int) (w(estimatedPosition.x) / (double) range);
		final int iy = (int) (h(estimatedPosition.y) / (double) range);
		
		final double weight12 = 1 - error12.getError(ix, iy);
		final double weight23 = 1 - error23.getError(ix, iy);
		final double weight13 = 1 - error13.getError(ix, iy);
		
		return new Point((w(p12.x) * weight12 + w(p23.x) * weight23 + w(p13.x) * weight13) / (weight12 + weight23 + weight13),
				(h(p12.y) * weight12 + h(p23.y) * weight23 + h(p13.y) * weight13) / (weight12 + weight23 + weight13));
	}
	
	public double w(double x) {
		if (x < 0)
			return 0;
		if (x > width)
			return width;
		return x;
	}
	
	public double h(double y) {
		if (y < 0)
			return 0;
		if (y > height)
			return height;
		return y;
	}
}
