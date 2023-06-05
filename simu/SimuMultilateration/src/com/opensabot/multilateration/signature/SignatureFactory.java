package com.opensabot.multilateration.signature;

import com.opensabot.multilateration.image.ImageUtils;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;

public class SignatureFactory {

	public static void saveSignature(final OutputStream os, final Signature signature) throws IOException {
		for (int y = 0; y < signature.getHeight(); y++) {
			final byte[] buffer = new byte[signature.getWidth()];
			for (int x = 0; x < signature.getWidth(); x++) {
				int s = (int) (255 * signature.getErrors().getError(x, y));
				buffer[x] = (byte) (s & 0xFF);
			}
		
			os.write(buffer);
		}
		os.close();
	}
	
	public static Signature loadSignature(final InputStream is, final int width, final int height) throws IOException {
		final Errors error = new Errors(width, height);
		
		for (int y = 0; y < height; y++) {
			final byte[] buffer = new byte[width];
			is.read(buffer, 0, width);
			for (int x = 0; x < width; x++) {
				int b = buffer[x] & 0xFF;
				error.addError(x, y, b / 255d);
			}
		}
		is.close();
		
		return new Signature(error, width, height);
	}
	
	public static Signature loadSignature(final Path path, final int width, final int height) throws IOException {
		return loadSignature(Files.newInputStream(path), width, height);
	}
	
	public static BufferedImage signatureToImage(final Signature sign, final int min, final int max) {
		final BufferedImage img = new BufferedImage(sign.getWidth(), sign.getHeight(), BufferedImage.TYPE_3BYTE_BGR);
		for (int x = 0; x < sign.getWidth(); x++) {
			for (int y = 0; y < sign.getHeight(); y++) {
				img.setRGB(x, y, ImageUtils.errorToColor(sign.getErrors().getError(x, y), min, max).getRGB());
			}
		}
		
		return img;
	}
}
