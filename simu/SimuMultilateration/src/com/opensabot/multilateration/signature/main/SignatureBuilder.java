package com.opensabot.multilateration.signature.main;

import com.opensabot.multilateration.Point;
import com.opensabot.multilateration.SimulationUtils;
import com.opensabot.multilateration.signature.Signature;
import com.opensabot.multilateration.signature.SignatureFactory;
import com.opensabot.multilateration.tdoa.FangThreePointsLateration;
import com.opensabot.multilateration.toa.CircleThreePointsToaLateration;
import com.opensabot.multilateration.toa.TulipThreePointsToaLateration;
import com.opensabot.multilateration.toa.filter.BasicFilter;
import com.opensabot.multilateration.toa.filter.DummyFirstPointFilter;
import com.opensabot.multilateration.toa.filter.DummySecondPointFilter;
import com.opensabot.multilateration.toa.filter.DummyThirdPointFilter;
import com.opensabot.multilateration.toa.filter.FromEstimatedPosFilter;
import com.opensabot.multilateration.toa.filter.FromEstimatedPosFilterWithBasicFilter;
import com.opensabot.multilateration.toa.filter.ThreePointsFilter;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class SignatureBuilder {
	
	private static final int NB_ITERATION = 50;

	private final Point b1;
	private final Point b2;
	private final Point b3;

	public SignatureBuilder(final Point b1, final Point b2, final Point b3) {
		this.b1 = b1;
		this.b2 = b2;
		this.b3 = b3;
	}
	
	public void buildTulipSignature(final double error, final int width, final int height, final int range, final Signature signature) {
		final TulipThreePointsToaLateration cLat = new TulipThreePointsToaLateration(b1, b2, b3);
		
		for (int it = 0; it < NB_ITERATION; it++) {
			for (int ix = 0; ix <= width / range; ix++) {
				for (int iy = 0; iy <= height / range; iy++) {
					final double x = ix * range;
					final double y = iy * range;
					final Point realPos = new Point(x, y);

					double r1 = b1.distance(realPos);
					double r2 = b2.distance(realPos);
					double r3 = b3.distance(realPos);

					r1 += Math.random() * error;
					r2 += Math.random() * error;
					r3 += Math.random() * error;

					final Point foundPoint = cLat.findX(r1, r2, r3);
					signature.getErrors().addError(ix, iy, realPos.distance(foundPoint));
				}
			}
		}
		
		signature.getErrors().divideErrors(NB_ITERATION);
	}
	
	public void buildToaSignature(final double error, final int width, final int height, final int range, Map<ThreePointsFilter, Signature> signatureByFilter) {
		final CircleThreePointsToaLateration cLat = new CircleThreePointsToaLateration(b1, b2, b3);
		
		for (int it = 0; it < NB_ITERATION; it++) {
			for (int ix = 0; ix <= width / range; ix++) {
				for (int iy = 0; iy <= height / range; iy++) {
					final double x = ix * range;
					final double y = iy * range;
					final Point realPos = new Point(x, y);

					double r1 = b1.distance(realPos);
					double r2 = b2.distance(realPos);
					double r3 = b3.distance(realPos);

					r1 += Math.random() * error;
					r2 += Math.random() * error;
					r3 += Math.random() * error;

					cLat.findX(r1, r2, r3);
					for (final Entry<ThreePointsFilter, Signature> f : signatureByFilter.entrySet()) {
						final Point foundPoint = cLat.filter(f.getKey());

						f.getValue().getErrors().addError(ix, iy, realPos.distance(foundPoint));
					}
				}
			}
		}
		
		for (final Entry<ThreePointsFilter, Signature> f : signatureByFilter.entrySet()) {
			f.getValue().getErrors().divideErrors(NB_ITERATION);
		}
	}
	
	public void buildTdoaSignature(final double error, final int width, final int height, final int range, Signature signature) {
		final FangThreePointsLateration fLat = new FangThreePointsLateration(b1, b2, b3);
		
		for (int it = 0; it < NB_ITERATION; it++) {
			for (int ix = 0; ix <= width / range; ix++) {
				for (int iy = 0; iy <= height / range; iy++) {
					final double x = ix * range;
					final double y = iy * range;
					final Point realPos = new Point(x, y);

					double r1 = b1.distance(realPos);
					double r2 = b2.distance(realPos);
					double r3 = b3.distance(realPos);

					r1 += Math.random() * error;
					r2 += Math.random() * error;
					r3 += Math.random() * error;

					final Point foundPoint = SimulationUtils.runTdoa(fLat, r1, r2, r3);
					signature.getErrors().addError(ix, iy, realPos.distance(foundPoint));
				}
			}
		}
		
		signature.getErrors().divideErrors(NB_ITERATION);
	}
	
	private static void firstToaPass(final SignatureBuilder c, final int error) throws IOException {
		final Signature p1S = new Signature(301, 201);
		final Signature p2S = new Signature(301, 201);
		final Signature p3S = new Signature(301, 201);
		final Signature pBFS = new Signature(301, 201);
		
		final Map<ThreePointsFilter, Signature> signatures = new HashMap<>();
		signatures.put(new DummyFirstPointFilter(), p1S);
		signatures.put(new DummySecondPointFilter(), p2S);
		signatures.put(new DummyThirdPointFilter(), p3S);
		signatures.put(new BasicFilter(), pBFS);
		
		c.buildToaSignature(error, 3000, 2000, 10, signatures);
		
		p1S.getErrors().rangeErrorsIn01(0, 68 * 1.5);
		p2S.getErrors().rangeErrorsIn01(0, 68 * 1.5);
		p3S.getErrors().rangeErrorsIn01(0, 68 * 1.5);
		pBFS.getErrors().rangeErrorsIn01(0, 68);
		
		final OutputStream p12File = Files.newOutputStream(Paths.get("sign/b12_68_102_3000x2000a10.raw"));
		final OutputStream p23File = Files.newOutputStream(Paths.get("sign/b23_68_102_3000x2000a10.raw"));
		final OutputStream p13File = Files.newOutputStream(Paths.get("sign/b13_68_102_3000x2000a10.raw"));
		final OutputStream pBFFile = Files.newOutputStream(Paths.get("sign/basicFilter_68_68_3000x2000a10.raw"));
		SignatureFactory.saveSignature(p12File, p1S);
		SignatureFactory.saveSignature(p23File, p2S);
		SignatureFactory.saveSignature(p13File, p3S);
		SignatureFactory.saveSignature(pBFFile, pBFS);
	}
	
	private static void secondToaPass(final SignatureBuilder c, final int error) throws IOException {
		final Signature secondPass = new Signature(301, 201);
		
//		final Signature s12 = SignatureFactory.loadSignature(Paths.get("sign/b12_68_102_3000x2000a10.raw"), 301, 201);
//		final Signature s23 = SignatureFactory.loadSignature(Paths.get("sign/b23_68_102_3000x2000a10.raw"), 301, 201);
//		final Signature s13 = SignatureFactory.loadSignature(Paths.get("sign/b13_68_102_3000x2000a10.raw"), 301, 201);
		final Signature s12 = SignatureFactory.loadSignature(Paths.get("sign/b12_68_102_3000x2000a10_1000i.raw"), 301, 201);
		final Signature s23 = SignatureFactory.loadSignature(Paths.get("sign/b23_68_102_3000x2000a10_1000i.raw"), 301, 201);
		final Signature s13 = SignatureFactory.loadSignature(Paths.get("sign/b13_68_102_3000x2000a10_1000i.raw"), 301, 201);
		
		ThreePointsFilter filter = new FromEstimatedPosFilterWithBasicFilter(new BasicFilter(), new FromEstimatedPosFilter(s12, s23, s13, 3000, 2000, 10));
		
		final Map<ThreePointsFilter, Signature> signatures = new HashMap<>();
		signatures.put(filter, secondPass);
		
		c.buildToaSignature(error, 3000, 2000, 10, signatures);
		
		secondPass.getErrors().rangeErrorsIn01(0, 68);
		
		final OutputStream outFile = Files.newOutputStream(Paths.get("sign/fromEstimated_68_68_3000x2000a10.raw"));
		SignatureFactory.saveSignature(outFile, secondPass);
	}
	
	private static void firstTdoaPass(final SignatureBuilder c, final int error) throws IOException {
		final Signature signature = new Signature(301, 201);
		
		c.buildTdoaSignature(error, 3000, 2000, 10, signature);
		
		signature.getErrors().rangeErrorsIn01(0, 68);
		
		final OutputStream outFile = Files.newOutputStream(Paths.get("sign/fangTdoa_68_68_3000x2000a10.raw"));
		SignatureFactory.saveSignature(outFile, signature);
	}
	
	private static void tulipPass(final SignatureBuilder c, final int error) throws IOException {
		final Signature signature = new Signature(301, 201);
		
		c.buildTulipSignature(error, 3000, 2000, 10, signature);
		
		signature.getErrors().rangeErrorsIn01(0, 68);
		
		final OutputStream outFile = Files.newOutputStream(Paths.get("sign/tulip_68_68_3000x2000a10.raw"));
		SignatureFactory.saveSignature(outFile, signature);
	}
	
	public static void main(String[] args) throws IOException {
		final Point b1 = new Point(0, 0);
		final Point b2 = new Point(0, 2000);
		final Point b3 = new Point(3000, 1000);
//		final Point b1 = new Point(-10, -40);
//		final Point b2 = new Point(-10, 2040);
//		final Point b3 = new Point(3010, 1000);
		
		final SignatureBuilder c = new SignatureBuilder(b1, b2, b3);
		
//		firstToaPass(c, 68);
//		secondToaPass(c, 68);
//		firstTdoaPass(c, 68);
		tulipPass(c, 68);
	}
}
