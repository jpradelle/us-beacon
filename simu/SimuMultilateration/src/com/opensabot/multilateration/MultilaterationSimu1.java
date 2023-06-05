/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.opensabot.multilateration;

import com.opensabot.multilateration.tdoa.IterativeTreePointsLateration;
import com.opensabot.multilateration.swing.ImagePanel;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.image.BufferedImage;
import javax.swing.JFrame;
import javax.swing.WindowConstants;

/**
 *
 * @author julien
 */
public class MultilaterationSimu1 {

	private final static int WIDTH = 900;
	private final static int HEIGHT = 600;
	private final static int TABLE_WIDTH = 3000;
	private final static int TABLE_HEIGHT = 2000;
	
	/**
	 * @param args the command line arguments
	 */
	public static void main(String[] args) {
		JFrame frame = new JFrame();
		ImagePanel panel = new ImagePanel();
		frame.add(panel);
		frame.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
		
		frame.setSize(new Dimension(WIDTH + 50, HEIGHT + 50));
		frame.setVisible(true);
		
		final double x1 = 0;
		final double y1 = 0;
		final double x2 = 0;
		final double y2 = 2000;
		final double x3 = 3000;
		final double y3 = 1000;
		
		final IterativeTreePointsLateration tpl = new IterativeTreePointsLateration(x1, y1, x2, y2, x3, y3);
		
		final Color red = new Color(255, 0, 0);
		final Color green = new Color(0, 255, 0);
		final Color blue = new Color(0, 0, 255);
		final Color white = new Color(255, 255, 255);
		final Color black = new Color(0, 0, 0);
		
		for (double x = 1401; x < TABLE_WIDTH; x += 10000) {
			for (double y = 1200; y < TABLE_HEIGHT; y += 10000) {
//		for (double x = 100; x < TABLE_WIDTH; x += 100) {
//			for (double y = 100; y < TABLE_HEIGHT; y += 100) {
				double r1 = Math.sqrt(Math.pow(x1 - x, 2) + Math.pow(y1 - y, 2));
				double r2 = Math.sqrt(Math.pow(x2 - x, 2) + Math.pow(y2 - y, 2));
				double r3 = Math.sqrt(Math.pow(x3 - x, 2) + Math.pow(y3 - y, 2));
				
//				r1 += Math.random() * 150 - 75;
//				r2 += Math.random() * 150 - 75;
//				r3 += Math.random() * 150 - 75;

				if (r1 <= r2 && r1 <= r3) {
					tpl.findX(0, r2 - r1, r3 - r1);
				} else if (r2 < r1 && r2 < r3) {
					tpl.findX(r1 - r2, 0, r3 - r2);
				} else if (r3 < r1 && r3 < r2) {
					tpl.findX(r1 - r3, r2 - r3, 0);
				}
//				final Point foundP = tpl.getFound();

				final double xRatio = WIDTH / (double) TABLE_WIDTH;
				final double yRatio = HEIGHT / (double) TABLE_HEIGHT;
				BufferedImage img = new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_3BYTE_BGR);
				for (int i = 0; i < WIDTH; i++) {
					for (int j = 0; j < HEIGHT; j++) {
						img.setRGB(i, j, white.getRGB());
					}
				}
				
				for (final Point p : tpl.getPoints1()) {
					int px = (int) (p.x * xRatio);
					int py = (int) (p.y * yRatio);
					
					if (px >= 0 && py >= 0 && px < WIDTH && py < HEIGHT)
						img.setRGB(px, py, red.getRGB());
				}
				for (final Point p : tpl.getPoints2()) {
					int px = (int) (p.x * xRatio);
					int py = (int) (p.y * yRatio);
					
					if (px >= 0 && py >= 0 && px < WIDTH && py < HEIGHT)
						img.setRGB(px, py, green.getRGB());
				}
//				for (final Point p : tpl.getPoints3()) {
//					int px = (int) (p.x * xRatio);
//					int py = (int) (p.y * yRatio);
//					
//					if (px >= 0 && py >= 0 && px < WIDTH && py < HEIGHT)
//						img.setRGB(px, py, blue.getRGB());
//				}
				
				final int ix = (int) (x * xRatio);
				final int iy = (int) (y * xRatio);
				img.setRGB(ix, iy, black.getRGB());
				img.setRGB(ix - 1, iy, black.getRGB());
				img.setRGB(ix + 1, iy, black.getRGB());
				img.setRGB(ix, iy - 1, black.getRGB());
				img.setRGB(ix, iy + 1, black.getRGB());

				panel.setImg(img);
				frame.repaint();
				
//				System.out.println("Found : " + foundP.toString() + ", with error : " + Math.sqrt(Math.pow(foundP.x - x, 2) + Math.pow(foundP.y - y, 2)));
			}
		}
	}
	
}
