package com.opensabot.multilateration;

import com.opensabot.multilateration.image.ImageSimuRunner;
import com.opensabot.multilateration.signature.Errors;
import com.opensabot.multilateration.image.ImageUtils;
import com.opensabot.multilateration.swing.ImagePanel;
import com.opensabot.multilateration.tdoa.FangThreePointsLateration;
import com.opensabot.multilateration.tdoa.IterativeTreePointsLateration;
import com.opensabot.multilateration.toa.CircleThreePointsToaLateration;
import com.opensabot.multilateration.toa.TulipThreePointsToaLateration;

import java.awt.*;
import java.awt.font.FontRenderContext;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import javax.swing.JFrame;
import javax.swing.WindowConstants;

/**
 *
 * @author julien
 */
public class ImageSimu {

	private final static int WIDTH = 300; // Produced image width
	private final static int HEIGHT = 200; // Produced image height
	private final static int TABLE_WIDTH_MIN = 0; // Table min x position
	private final static int TABLE_WIDTH_MAX = 3000; // Table max x position
	private final static int TABLE_HEIGHT_MIN = 0; // Table min y position
	private final static int TABLE_HEIGHT_MAX = 2000; // Table max y position
	private final static int NB_ITERATION = 100; // Number of iteration to run per position and compute average of error
	private final static double ERROR = 68; // Max value of error randomly added to each measures
	private final static double ERROR_THRESHOLD = 100; // Max error value of scale

	/**
	 * @param args the command line arguments
	 */
	public static void main(final String[] args) {
		final JFrame frame = new JFrame();
		final ImagePanel panel = new ImagePanel();
		frame.add(panel);
		frame.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
		
		frame.setSize(new Dimension(WIDTH + 100, HEIGHT + 50));
		frame.setVisible(true);
		
		// beacons
		// 1 beacon set of 3 points
		final Point b1 = new Point(0, 0);
		final Point b2 = new Point(0, 2000);
		final Point b3 = new Point(3000, 1000);
		// Extra beacon receivers
		final Point b12 = new Point(-80, 0);
		final Point b22 = new Point(0, 2080);
		final Point b32 = new Point(3000, 1040);
		
		final Errors errorMap = new Errors(WIDTH, HEIGHT);

		// Run wanted algorithm
		// TOA algorithms
//		runToa1CircleThreePointsToaLateration(b1, b2, b3, errorMap);
//		runToa2CircleThreePointsToaLateration(b1, b2, b3, b12, b22, b32, errorMap);
//		runToa1TulipThreePointsToaLateration(b1, b2, b3, errorMap);
//		runToa2TulipThreePointsToaLateration(b1, b2, b3, b12, b22, b32, errorMap);
		// TDOA algorithms
		runTdoa1FangThreePointsLateration(b1, b2, b3, errorMap);
//		runTdoa2FangThreePointsLateration(b1, b2, b3, b12, b22, b32, errorMap);
//		runTdoa1IterativeThreePointsLateration(b1, b2, b3, errorMap);

		// Render errors as image.
		BufferedImage img = new BufferedImage(WIDTH + 50, HEIGHT, BufferedImage.TYPE_3BYTE_BGR);
		for (int i = 0; i < WIDTH; i++) {
			for (int j = 0; j < HEIGHT; j++) {
				img.setRGB(i, j, ImageUtils.errorToColor(errorMap.getError(i, j) / ((double) NB_ITERATION), 0, ERROR_THRESHOLD).getRGB());
			}
		}

		// Render error scale.
		for (int j = 0; j < HEIGHT; j++) {
			final double scalePoint = (double) ((ERROR_THRESHOLD / (double) HEIGHT) * (HEIGHT - j));
			for (int i = WIDTH + 10; i < WIDTH + 50; i++) {
				img.setRGB(i, j, ImageUtils.errorToColor(scalePoint, 0, ERROR_THRESHOLD).getRGB());
			}
		}
		img = drawString(img, String.valueOf(Math.round(ERROR_THRESHOLD)), Color.WHITE, WIDTH + 15, 13);
		img = drawString(img, "0", Color.WHITE, WIDTH + 15, HEIGHT - 3);

		panel.setImg(img);
		frame.repaint();
	}

	private static BufferedImage drawString(final BufferedImage img, final String text, final Color color, final int x, final int y) {
		final BufferedImage result = new BufferedImage(img.getWidth(null), img.getHeight(null), BufferedImage.TYPE_3BYTE_BGR);
		final Graphics2D g = (Graphics2D) result.getGraphics();
		g.drawImage(img, 0, 0, null);

		final Font font = new Font(Font.SANS_SERIF, Font.BOLD, 12);
		g.setFont(font);

		g.setColor(color);
		g.drawString(text, x, y);
		return result;
	}

	private static void run1BeaconMap(
			final Point b1,
			final Point b2,
			final Point b3,
			final Errors errorMap,
			final ImageSimuRunner runner) {
		for (int it = 0; it < NB_ITERATION; it++) {
			for (int ix = 0; ix < WIDTH; ix += 1) {
				for (int iy = 0; iy < HEIGHT; iy += 1) {
					final double x = ix * ((TABLE_WIDTH_MAX - TABLE_WIDTH_MIN) / (double) WIDTH);
					final double y = iy * ((TABLE_HEIGHT_MAX - TABLE_HEIGHT_MIN) / (double) HEIGHT);
					final Point realPos = new Point(x, y);

					double r1 = b1.distance(realPos);
					double r2 = b2.distance(realPos);
					double r3 = b3.distance(realPos);

					r1 += Math.random() * ERROR;
					r2 += Math.random() * ERROR;
					r3 += Math.random() * ERROR;

					final Point foundP = runner.run(r1, r2, r3);

					final double error = realPos.distance(foundP);
					errorMap.addError(ix, iy, error);
				}
			}
		}
	}

	private static void run2BeaconMap(
			final Point b1,
			final Point b2,
			final Point b3,
			final Point b12,
			final Point b22,
			final Point b32,
			final Errors errorMap,
			final ImageSimuRunner runner1,
			final ImageSimuRunner runner2) {
		for (int it = 0; it < NB_ITERATION; it++) {
			for (int ix = 0; ix < WIDTH; ix += 1) {
				for (int iy = 0; iy < HEIGHT; iy += 1) {
					final double x = ix * ((TABLE_WIDTH_MAX - TABLE_WIDTH_MIN) / (double) WIDTH);
					final double y = iy * ((TABLE_HEIGHT_MAX - TABLE_HEIGHT_MIN) / (double) HEIGHT);
					final Point realPos = new Point(x, y);

					double r1 = b1.distance(realPos);
					double r2 = b2.distance(realPos);
					double r3 = b3.distance(realPos);
					double r12 = b12.distance(realPos);
					double r22 = b22.distance(realPos);
					double r32 = b32.distance(realPos);

					r1 += Math.random() * ERROR;
					r2 += Math.random() * ERROR;
					r3 += Math.random() * ERROR;
					r12 += Math.random() * ERROR;
					r22 += Math.random() * ERROR;
					r32 += Math.random() * ERROR;

					final Point foundP1 = runner1.run(r1, r2, r3);
					final Point foundP2 = runner2.run(r12, r22, r32);

					final Point foundP = new Point((foundP1.x + foundP2.x) / 2, (foundP1.y + foundP2.y) / 2);

					final double error = realPos.distance(foundP);
					errorMap.addError(ix, iy, error);
				}
			}
		}
	}

	/**
	 * Run TOA CircleThreePointsToaLateration algorithm
	 */
	private static void runToa1CircleThreePointsToaLateration(final Point b1, final Point b2, final Point b3, final Errors errorMap) {
		final CircleThreePointsToaLateration tpl1 = new CircleThreePointsToaLateration(b1, b2, b3);

		run1BeaconMap(b1, b2, b3, errorMap, (r1, r2, r3) -> SimulationUtils.runToa(tpl1, r1, r2, r3));
	}

	/**
	 * Run TOA CircleThreePointsToaLateration algorithm on 2 sets of fixed beacon and get average of results
	 */
	private static void runToa2CircleThreePointsToaLateration(
			final Point b1,
			final Point b2,
			final Point b3,
			final Point b12,
			final Point b22,
			final Point b32,
			final Errors errorMap) {
		final CircleThreePointsToaLateration tpl1 = new CircleThreePointsToaLateration(b1, b2, b3);
		final CircleThreePointsToaLateration tpl2 = new CircleThreePointsToaLateration(b12, b22, b32);

		run2BeaconMap(
				b1,
				b2,
				b3,
				b12,
				b22,
				b32,
				errorMap,
				(r1, r2, r3) -> SimulationUtils.runToa(tpl1, r1, r2, r3),
				(r12, r22, r32) -> SimulationUtils.runToa(tpl2, r12, r22, r32));
	}

	/**
	 * Run TOA TulipThreePointsToaLateration algorithm
	 */
	private static void runToa1TulipThreePointsToaLateration(final Point b1, final Point b2, final Point b3, final Errors errorMap) {
		final TulipThreePointsToaLateration tpl1 = new TulipThreePointsToaLateration(b1, b2, b3);

		run1BeaconMap(b1, b2, b3, errorMap, tpl1::findX);
	}

	/**
	 * Run TOA TulipThreePointsToaLateration algorithm on 2 sets of fixed beacon and get average of results
	 */
	private static void runToa2TulipThreePointsToaLateration(
			final Point b1,
			final Point b2,
			final Point b3,
			final Point b12,
			final Point b22,
			final Point b32,
			final Errors errorMap) {
		final TulipThreePointsToaLateration tpl1 = new TulipThreePointsToaLateration(b1, b2, b3);
		final TulipThreePointsToaLateration tpl2 = new TulipThreePointsToaLateration(b12, b22, b32);

		run2BeaconMap(
				b1,
				b2,
				b3,
				b12,
				b22,
				b32,
				errorMap,
				tpl1::findX,
				tpl2::findX);
	}

	/**
	 * Run TDOA FangThreePointsLateration algorithm
	 */
	private static void runTdoa1FangThreePointsLateration(final Point b1, final Point b2, final Point b3, final Errors errorMap) {
		final FangThreePointsLateration tpl1 = new FangThreePointsLateration(b1, b2, b3);

		run1BeaconMap(b1, b2, b3, errorMap, (r1, r2, r3) -> SimulationUtils.runTdoa(tpl1, r1, r2, r3));
	}

	/**
	 * Run TOA FangThreePointsLateration algorithm on 2 sets of fixed beacon and get average of results
	 */
	private static void runTdoa2FangThreePointsLateration(
			final Point b1,
			final Point b2,
			final Point b3,
			final Point b12,
			final Point b22,
			final Point b32,
			final Errors errorMap) {
		final FangThreePointsLateration tpl1 = new FangThreePointsLateration(b1, b2, b3);
		final FangThreePointsLateration tpl2 = new FangThreePointsLateration(b12, b22, b32);

		run2BeaconMap(
				b1,
				b2,
				b3,
				b12,
				b22,
				b32,
				errorMap,
				(r1, r2, r3) -> SimulationUtils.runTdoa(tpl1, r1, r2, r3),
				(r12, r22, r32) -> SimulationUtils.runTdoa(tpl2, r12, r22, r32));
	}

	/**
	 * Run TDOA IterativeTreePointsLateration algorithm (not working, algorithm need to be debuged
	 */
	private static void runTdoa1IterativeThreePointsLateration(final Point b1, final Point b2, final Point b3, final Errors errorMap) {
		final IterativeTreePointsLateration tpl1 = new IterativeTreePointsLateration(b1.x, b1.y, b2.x, b2.y, b3.x, b3.y);

		run1BeaconMap(b1, b2, b3, errorMap, (r1, r2, r3) -> SimulationUtils.runTdoa(tpl1, r1, r2, r3));
	}
}

