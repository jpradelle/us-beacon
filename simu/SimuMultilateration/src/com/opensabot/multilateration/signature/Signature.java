package com.opensabot.multilateration.signature;

public class Signature {

	private final Errors errors;
	private final int width;
	private final int height;

	public Signature(Errors errors, int width, int height) {
		this.errors = errors;
		this.width = width;
		this.height = height;
	}

	public Signature(int width, int height) {
		this.errors = new Errors(width, height);
		this.width = width;
		this.height = height;
	}

	public Errors getErrors() {
		return errors;
	}

	public int getWidth() {
		return width;
	}

	public int getHeight() {
		return height;
	}
}
