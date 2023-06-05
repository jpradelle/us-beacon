package com.opensabot.multilateration.toa.filter;

import com.opensabot.multilateration.Point;

public class FromEstimatedPosFilterWithBasicFilter implements ThreePointsFilter {

	private final BasicFilter basicFilter;
	private final FromEstimatedPosFilter filter;

	public FromEstimatedPosFilterWithBasicFilter(final BasicFilter basicFilter, final FromEstimatedPosFilter filter) {
		this.basicFilter = basicFilter;
		this.filter = filter;
	}
	
	@Override
	public Point filter(final Point p12, final Point p23, final Point p13) {
		filter.setEstimatedPosition(basicFilter.filter(p12, p23, p13));
		return filter.filter(p12, p23, p13);
	}
}
