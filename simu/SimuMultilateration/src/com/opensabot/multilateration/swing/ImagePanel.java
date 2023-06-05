package com.opensabot.multilateration.swing;

import java.awt.Graphics;
import java.awt.image.BufferedImage;
import javax.swing.JPanel;

public class ImagePanel extends JPanel {

	private BufferedImage img;

	public ImagePanel() {
		this.img = null;
	}

	@Override
	protected void paintComponent(final Graphics g) {
		super.paintComponent(g);
		if (img != null)
			g.drawImage(img, 0, 0, null);
	}

	public void setImg(final BufferedImage img) {
		this.img = img;
	}
}
