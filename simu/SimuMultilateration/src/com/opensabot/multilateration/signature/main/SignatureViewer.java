package com.opensabot.multilateration.signature.main;

import com.opensabot.multilateration.signature.Signature;
import com.opensabot.multilateration.signature.SignatureFactory;
import com.opensabot.multilateration.swing.ImagePanel;
import java.awt.Dimension;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.WindowConstants;

public class SignatureViewer extends JFrame {
	
	private final JPanel mainPanel;
	
	public SignatureViewer() {
		mainPanel = new JPanel();
		this.add(mainPanel);
	}
	
	public void addSignature(final Signature s) {
		final BufferedImage img = SignatureFactory.signatureToImage(s, 0, 1);
		ImagePanel imgPanel = new ImagePanel();
		imgPanel.setPreferredSize(new Dimension(s.getWidth(), s.getHeight()));
		imgPanel.setImg(img);
		mainPanel.add(imgPanel);
		this.revalidate();
		this.repaint();
	}
	
	public void openSignature(final Path path, final int width, final int height) throws IOException {
		final Signature s = SignatureFactory.loadSignature(Files.newInputStream(path), width, height);
		addSignature(s);
	}
	
	public static void main(final String[] args) throws IOException {
		SignatureViewer frame = new SignatureViewer();
		frame.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
		
		frame.setSize(new Dimension(800, 600));
		frame.setVisible(true);
		
//		frame.openSignature(Paths.get("sign/b12_68_102_3000x2000a10.raw"), 301, 201);
//		frame.openSignature(Paths.get("sign/b23_68_102_3000x2000a10.raw"), 301, 201);
//		frame.openSignature(Paths.get("sign/b13_68_102_3000x2000a10.raw"), 301, 201);
		
//		frame.openSignature(Paths.get("sign/b12_68_102_3000x2000a10_1000i.raw"), 301, 201);
//		frame.openSignature(Paths.get("sign/b23_68_102_3000x2000a10_1000i.raw"), 301, 201);
//		frame.openSignature(Paths.get("sign/b13_68_102_3000x2000a10_1000i.raw"), 301, 201);
//		frame.openSignature(Paths.get("sign/basicFilter_68_68_3000x2000a10_1000i.raw"), 301, 201);
		frame.openSignature(Paths.get("sign/fromEstimated_68_68_3000x2000a10.raw"), 301, 201);
		
		frame.openSignature(Paths.get("sign/fangTdoa_68_68_3000x2000a10.raw"), 301, 201);
		
		frame.openSignature(Paths.get("sign/tulip_68_68_3000x2000a10.raw"), 301, 201);
	}
}
