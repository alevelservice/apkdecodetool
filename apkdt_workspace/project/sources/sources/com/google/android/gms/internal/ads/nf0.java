package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ev;
import com.google.android.gms.internal.ads.jv;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class nf0 {

    /* renamed from: a */
    private static boolean f8327a = false;

    /* renamed from: b */
    private static MessageDigest f8328b;

    /* renamed from: c */
    private static final Object f8329c = new Object();

    /* renamed from: d */
    private static final Object f8330d = new Object();

    /* renamed from: e */
    static CountDownLatch f8331e = new CountDownLatch(1);

    public static void a() {
        synchronized (f8330d) {
            if (!f8327a) {
                f8327a = true;
                new Thread(new lh0()).start();
            }
        }
    }

    private static MessageDigest b() {
        boolean z;
        MessageDigest messageDigest;
        a();
        try {
            z = f8331e.await(2L, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
            z = false;
        }
        if (z && (messageDigest = f8328b) != null) {
            return messageDigest;
        }
        return null;
    }

    public static String a(ev evVar, String str) {
        byte[] a2;
        byte[] e2 = evVar.e();
        if (!((Boolean) mu1.e().a(aw1.C1)).booleanValue()) {
            if (jf1.f7478a != null) {
                byte[] a3 = jf1.f7478a.a(e2, str != null ? str.getBytes() : new byte[0]);
                jv.a k2 = jv.k();
                k2.a(t71.zzy(a3));
                k2.a(n20.TINK_HYBRID);
                a2 = ((jv) k2.s()).e();
            } else {
                throw new GeneralSecurityException();
            }
        } else {
            Vector<byte[]> a4 = a(e2, 255);
            if (a4 != null && a4.size() != 0) {
                jv.a k3 = jv.k();
                Iterator<byte[]> it = a4.iterator();
                while (it.hasNext()) {
                    k3.a(t71.zzy(a(it.next(), str, false)));
                }
                k3.b(t71.zzy(a(e2)));
                a2 = ((jv) k3.s()).e();
            } else {
                a2 = a(a(ev.d.PSN_ENCODE_SIZE_FAIL).e(), str, true);
            }
        }
        return qd0.a(a2, true);
    }

    private static Vector<byte[]> a(byte[] bArr, int i2) {
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        int length = ((bArr.length + 255) - 1) / 255;
        Vector<byte[]> vector = new Vector<>();
        for (int i3 = 0; i3 < length; i3++) {
            int i4 = i3 * 255;
            try {
                vector.add(Arrays.copyOfRange(bArr, i4, bArr.length - i4 > 255 ? i4 + 255 : bArr.length));
            } catch (IndexOutOfBoundsException unused) {
                return null;
            }
        }
        return vector;
    }

    private static ev a(ev.d dVar) {
        ev.b r = ev.r();
        r.j(dVar.zzab());
        return (ev) r.s();
    }

    private static byte[] a(byte[] bArr, String str, boolean z) {
        byte[] array;
        int i2 = z ? 239 : 255;
        if (bArr.length > i2) {
            bArr = a(ev.d.PSN_ENCODE_SIZE_FAIL).e();
        }
        if (bArr.length < i2) {
            byte[] bArr2 = new byte[i2 - bArr.length];
            new SecureRandom().nextBytes(bArr2);
            array = ByteBuffer.allocate(i2 + 1).put((byte) bArr.length).put(bArr).put(bArr2).array();
        } else {
            array = ByteBuffer.allocate(i2 + 1).put((byte) bArr.length).put(bArr).array();
        }
        if (z) {
            array = ByteBuffer.allocate(256).put(a(array)).put(array).array();
        }
        byte[] bArr3 = new byte[256];
        for (mi0 mi0Var : new mg0().N2) {
            mi0Var.a(array, bArr3);
        }
        if (str != null && str.length() > 0) {
            if (str.length() > 32) {
                str = str.substring(0, 32);
            }
            new j71(str.getBytes("UTF-8")).a(bArr3);
        }
        return bArr3;
    }

    public static byte[] a(byte[] bArr) {
        byte[] digest;
        synchronized (f8329c) {
            MessageDigest b2 = b();
            if (b2 != null) {
                b2.reset();
                b2.update(bArr);
                digest = f8328b.digest();
            } else {
                throw new NoSuchAlgorithmException("Cannot compute hash");
            }
        }
        return digest;
    }
}
