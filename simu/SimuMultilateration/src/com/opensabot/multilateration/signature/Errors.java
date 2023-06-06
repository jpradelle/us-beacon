package com.opensabot.multilateration.signature;

import java.util.HashMap;
import java.util.Map;

public class Errors {

	private final int nbX;
	private final int nbY;
	
	private Map<Integer, Map<Integer, Error>> errors = new HashMap<>();
	
	public Errors(final int nbX, final int nbY) {
		this.nbX = nbX;
		this.nbY = nbY;
		
		for (int x = 0; x < nbX; x++) {
			final Map<Integer, Error> xe = new HashMap<>();
			for (int y = 0; y < nbY; y++) {
				xe.put(y, new Error());
			}
			errors.put(x, xe);
		}
	}
	
	public double getError(final int x, final int y) {
		return errors.get(x).get(y).getError();
	}

	public double getErrorMax(final int x, final int y) {
		return errors.get(x).get(y).getErrorMax();
	}
	
	public void addError(final int x, int y, final double error) {
		errors.get(x).get(y).addError(error);
	}
	
	public void divideErrors(final double div) {
		for (int x = 0; x < nbX; x++) {
			for (int y = 0; y < nbY; y++) {
				errors.get(x).get(y).divideError(div);
			}
		}
	}
	
	public void rangeErrorsIn01(final double min, final double max) {
		for (int x = 0; x < nbX; x++) {
			for (int y = 0; y < nbY; y++) {
				double error = errors.get(x).get(y).getError();
				errors.get(x).get(y).setError(rangeErrorIn01(min, max, error));
			}
		}
	}
	
	private double rangeErrorIn01(final double min, final double max, final double error) {
		if (error < min)
			return 0;
		if (error > max)
			return 1;
		return (error - min) / (max - min);
	}
	
	private static class Error {
		private double errorSum;
		private double errorMax;

		private Error() {
			this.errorSum = 0;
			this.errorMax = 0;
		}
		
		public void setError(final double error) {
			errorSum = error;
		}
		
		public void addError(final double error) {
			errorSum += error;
			if (error > errorMax)
				errorMax = error;
		}
		
		public void divideError(final double div) {
			errorSum /= div;
		}
		
		public double getError() {
			return errorSum;
		}

		public double getErrorMax() {
			return errorMax;
		}
	}
}
