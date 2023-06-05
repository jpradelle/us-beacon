package com.opensabot.multilateration.image;

import java.awt.Color;

public class ImageUtils {

	public static Color errorToColor(double value, final double vmin, final double vmax) {
		if (value < vmin)
			value = vmin;
		if (value > vmax)
			value = vmax;
		
		final double dv = vmax - vmin ;

		if (value < (vmin + 0.25 * dv)) {
			return new Color(0, (int) (255 * (4 * (value - vmin) / dv)), 255);
		} else if (value < (vmin + 0.5 * dv)) {
			return new Color(0, 255, (int) (255 * (1 + 4 * (vmin + 0.25 * dv - value) / dv)));
		} else if (value < ( vmin + 0.75 * dv)) {
			return new Color((int) (255 * (4 * (value - vmin - 0.5 * dv) / dv)), 255, 0);
		} else {
			return new Color(255, (int) (255 * (1 + 4 * (vmin + 0.75 * dv - value) / dv)), 0);
		}
	}
}
