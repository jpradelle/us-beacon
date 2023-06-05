package com.opensabot.multilateration;

import com.opensabot.multilateration.toa.CircleThreePointsToaLateration;
import com.opensabot.multilateration.toa.filter.BasicFilter;

public class SimulationUtils {

	public static Point runTdoa(final ThreePointsLateration tpl, final double r1, final double r2, final double r3) {
		if (r1 <= r2 && r1 <= r3) {
			return tpl.findX(0, r2 - r1, r3 - r1);
		} else if (r2 <= r1 && r2 <= r3) {
			return tpl.findX(r1 - r2, 0, r3 - r2);
		} else if (r3 <= r1 && r3 <= r2) {
			return tpl.findX(r1 - r3, r2 - r3, 0);
		}
		
		return new Point(-1, -1);
	}

	public static Point runToa(final CircleThreePointsToaLateration tpl, final double r1, final double r2, final double r3) {
		final BasicFilter f = new BasicFilter();
		tpl.findX(r1, r2, r3);
		return tpl.filter(f);
	}

	private SimulationUtils() {
	}
}
