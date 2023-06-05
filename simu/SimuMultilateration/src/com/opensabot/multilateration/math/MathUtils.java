package com.opensabot.multilateration.math;

import java.util.List;

public class MathUtils {

	public static double max(final List<Double> values) {
//		return values.stream().max(Double::compare).get();
		double max = values.get(0);
		for (final double v : values) {
			if (v > max)
				max = v;
		}
		
		return max;
	}
	
	public static double average(final List<Double> values) {
		double sum = 0;
		
		for (final double d : values) {
			sum += d;
		}
		
		if (values.isEmpty())
			return Double.MAX_VALUE;
		
		return sum / values.size();
	}
}
