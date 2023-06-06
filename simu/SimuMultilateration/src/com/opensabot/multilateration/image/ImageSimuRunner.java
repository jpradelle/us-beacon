package com.opensabot.multilateration.image;

import com.opensabot.multilateration.Point;

@FunctionalInterface
public interface ImageSimuRunner {

	Point run(double r1, double r2, double r3);
}
