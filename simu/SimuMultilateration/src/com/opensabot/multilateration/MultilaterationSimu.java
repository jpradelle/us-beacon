/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.opensabot.multilateration;

import com.opensabot.multilateration.tdoa.FangThreePointsLateration;
import com.opensabot.multilateration.math.MathUtils;
import java.awt.Color;
import java.awt.image.BufferedImage;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author julien
 */
public class MultilaterationSimu {

	private final static int WIDTH = 900;
	private final static int HEIGHT = 600;
	private final static int TABLE_WIDTH = 3000;
	private final static int TABLE_HEIGHT = 2000;
	private final static double X_RATIO = WIDTH / (double) TABLE_WIDTH;
	private final static double Y_RATIO = HEIGHT / (double) TABLE_HEIGHT;
	
	/**
	 * @param args the command line arguments
	 */
	public static void main(String[] args) {
//		JFrame frame = new JFrame();
//		ImagePanel panel = new ImagePanel();
//		frame.add(panel);
//		frame.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
//		
//		frame.setSize(new Dimension(WIDTH + 50, HEIGHT + 50));
//		frame.setVisible(true);
		
		final double x1 = 0;
		final double y1 = 0;
		final double x2 = 0;
		final double y2 = 2000;
		final double x3 = 3000;
		final double y3 = 1000;
		
//		final ThreePointsLateration tpl = new OptimizedIterativeTreePointsLateration(x1, y1, x2, y2, x3, y3, 1);
		final ThreePointsLateration tpl = new FangThreePointsLateration(new Point(x1, y1), new Point(x2, y2), new Point(x3, y3));
		
		final Color red = new Color(255, 0, 0);
		final Color green = new Color(0, 255, 0);
		final Color blue = new Color(0, 0, 255);
		final Color white = new Color(255, 255, 255);
		final Color black = new Color(0, 0, 0);
		final List<Double> errors = new ArrayList<>();
		final List<Double> times = new ArrayList<>();
		
		for (double x = 1; x < TABLE_WIDTH; x += 1) {
			for (double y = 1; y < TABLE_HEIGHT; y += 1) {
				double r1 = Math.sqrt(Math.pow(x1 - x, 2) + Math.pow(y1 - y, 2));
				double r2 = Math.sqrt(Math.pow(x2 - x, 2) + Math.pow(y2 - y, 2));
				double r3 = Math.sqrt(Math.pow(x3 - x, 2) + Math.pow(y3 - y, 2));
				
				/******* error *******/
				r1 += Math.random() * 75;
				r2 += Math.random() * 75;
				r3 += Math.random() * 75;
//				r1 = 3394.264319365915;
//				r2 = 2687.479571179747;
//				r3 = 1002.9826659015548;
				/*********************/

				final long time1 = System.nanoTime();
				final Point foundP;
				if (r1 <= r2 && r1 <= r3) {
					foundP = tpl.findX(0, r2 - r1, r3 - r1);
				} else if (r2 <= r1 && r2 <= r3) {
					foundP = tpl.findX(r1 - r2, 0, r3 - r2);
				} else if (r3 <= r1 && r3 <= r2) {
					foundP = tpl.findX(r1 - r3, r2 - r3, 0);
				} else {
					foundP = new Point(-1, -1);
				}
				final long time2 = System.nanoTime();

//				BufferedImage img = new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_3BYTE_BGR);
//				for (int i = 0; i < WIDTH; i++) {
//					for (int j = 0; j < HEIGHT; j++) {
//						img.setRGB(i, j, white.getRGB());
//					}
//				}
//				
//				drawPoint(img, new Point(x, y), black.getRGB());
//				drawPoint(img, foundP, red.getRGB());
//
//				panel.setImg(img);
//				frame.repaint();
				
				final double time = (time2 - time1) / 1000.;
				final double error = Math.sqrt(Math.pow(foundP.x - x, 2) + Math.pow(foundP.y - y, 2));
				errors.add(error);
				times.add(time);
				if (error > 250) {
					System.out.println("(" + x + ", " + y + ") -> Found : " + foundP.toString() + " in " + time + "µs, with error : " + error);
					System.out.println("r: " + r1 + ", " + r2 + ", " + r3);
				}
			}
		}
		
		System.out.println("Max error : " + MathUtils.max(errors) + ", avg error: " + MathUtils.average(errors) + " in mean time : " + MathUtils.average(times) + "µs");
	}
	
	private static void drawPoint(final BufferedImage img, final Point p, int color) {
		final int x = (int) (p.x * X_RATIO);
		final int y = (int) (p.y * Y_RATIO);
		
		for (int i = -2; i <= 2; i++) {
			for (int j = -2; j <= 2; j++) {
				if (x + i >= 0 && x + i < WIDTH && y + j >= 0 && y + j < HEIGHT)
					img.setRGB(x + i, y + j, color);
			}
		}
	}
	
}
