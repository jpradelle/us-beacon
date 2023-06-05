package com.opensabot.multilateration;

import com.opensabot.multilateration.signature.Errors;
import com.opensabot.multilateration.image.ImageUtils;
import com.opensabot.multilateration.swing.ImagePanel;
import com.opensabot.multilateration.toa.CircleThreePointsToaLateration;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.image.BufferedImage;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JFrame;
import javax.swing.WindowConstants;
import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;

/**
 *
 * @author julien
 */
public class ImageSimu {

	private final static int WIDTH = 300;
	private final static int HEIGHT = 200;
	private final static int TABLE_WIDTH_MIN = 0;
	private final static int TABLE_WIDTH_MAX = 3000;
	private final static int TABLE_HEIGHT_MIN = 0;
	private final static int TABLE_HEIGHT_MAX = 2000;
	private final static double ERROR = 68;
	private final static int NB_ITERATION = 100;
	private final static double ERROR_TRESHOLD = ERROR * 1.5;
	
	/**
	 * @param args the command line arguments
	 */
	public static void main(String[] args) {
		JFrame frame = new JFrame();
		ImagePanel panel = new ImagePanel();
		frame.add(panel);
		frame.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
		
		frame.setSize(new Dimension(WIDTH + 100, HEIGHT + 50));
		frame.setVisible(true);
		
		// beacons
		final Point b1 = new Point(0, 0);
		final Point b2 = new Point(0, 2000);
		final Point b3 = new Point(3000, 1000);
//		final Point b12 = new Point(-80, 0);
//		final Point b22 = new Point(0, 2080);
//		final Point b32 = new Point(3000, 1040);
		
		final CircleThreePointsToaLateration tpl1 = new CircleThreePointsToaLateration(b1, b2, b3);
//		final ThreePointsLateration tpl2 = new CircleTreePointsToaLateration(b12, b22, b32);
//		final FangThreePointsLateration tpl1 = new FangThreePointsLateration(b1, b2, b3);
//		final FangThreePointsLateration tpl2 = new FangThreePointsLateration(b12, b22, b32);
		
		final Errors errorMap = new Errors(WIDTH, HEIGHT);
		final List<Double> errors = new ArrayList<>();
		
		for (int it = 0; it < NB_ITERATION; it++) {
			for (int ix = 0; ix < WIDTH; ix += 1) {
				for (int iy = 0; iy < HEIGHT; iy += 1) {
					final double x = ix * ((TABLE_WIDTH_MAX - TABLE_WIDTH_MIN) / (double) WIDTH);
					final double y = iy * ((TABLE_HEIGHT_MAX - TABLE_HEIGHT_MIN) / (double) HEIGHT);
					final Point realPos = new Point(x, y);

					double r1 = b1.distance(realPos);
					double r2 = b2.distance(realPos);
					double r3 = b3.distance(realPos);
//					double r12 = b12.distance(realPos);
//					double r22 = b22.distance(realPos);
//					double r32 = b32.distance(realPos);

					r1 += Math.random() * ERROR;
					r2 += Math.random() * ERROR;
					r3 += Math.random() * ERROR;
//					r12 += Math.random() * ERROR;
//					r22 += Math.random() * ERROR;
//					r32 += Math.random() * ERROR;

					final Point foundP1 = SimulationUtils.runToa(tpl1, r1, r2, r3);
//					final Point foundP2 = SimulationUtils.runToa(tpl2, r12, r22, r32);
//					final Point foundP1 = SimulationUtils.runTdoa(tpl1, r1, r2, r3);
//					final Point foundP2 = SimulationUtils.runTdoa(tpl2, r12, r22, r32);

//					final Point foundP = new Point((foundP1.x + foundP2.x) / 2, (foundP1.y + foundP2.y) / 2);
					final Point foundP = foundP1;
					
					final double error = realPos.distance(foundP);
//					errors.add(error);
					errorMap.addError(ix, iy, error);
					
//					if (error > 300) {
//						System.out.println("Error: " + error + ", real: " + realPos + ", found: " + foundP + " foundP1: " + tpl.getFoundP1() + ", foundP2: " + tpl.getFoundP2());
//					}
				}
			}
		}

//		final double avgError = MathUtils.average(errors);
//		final double maxError = MathUtils.max(errors);
//		System.out.println("Max error : " + maxError + ", avg error: " + avgError);
		
		double errorMin = Double.MAX_VALUE;
		for (int i = 0; i < WIDTH; i++) {
			for (int j = 0; j < HEIGHT; j++) {
				double e = errorMap.getError(i, j) / ((double) NB_ITERATION);
				if (e < errorMin)
					errorMin = e;
			}
		}
		System.out.println("Error min : " + errorMin);
		
		BufferedImage img = new BufferedImage(WIDTH + 50, HEIGHT, BufferedImage.TYPE_3BYTE_BGR);
		for (int i = 0; i < WIDTH; i++) {
			for (int j = 0; j < HEIGHT; j++) {
//				img.setRGB(i, j, ImageUtils.errorToColor(errorMap.getError(i, j) / ((double) NB_ITERATION), errorMin, ERROR_TRESHOLD).getRGB());
				img.setRGB(i, j, ImageUtils.errorToColor(errorMap.getError(i, j) / ((double) NB_ITERATION), 0, ERROR_TRESHOLD).getRGB());
			}
		}
		
//		for (int ix = 0; ix < WIDTH; ix += 1) {
//			int iy = (int) (0.005 * ix * ix - 1.5 * ix + 200);
//			if (iy >= 0 && iy < HEIGHT)
//				img.setRGB(ix, iy, Color.BLACK.getRGB());
//		}
		
		for (int j = 0; j < HEIGHT; j++) {
			final double scalePoint = (double) ((ERROR_TRESHOLD / (double) HEIGHT) * (HEIGHT - j));
			for (int i = WIDTH + 10; i < WIDTH + 50; i++) {
				img.setRGB(i, j, ImageUtils.errorToColor(scalePoint, 0, ERROR_TRESHOLD).getRGB());
			}
		}

		panel.setImg(img);
		frame.repaint();
	}
}
