package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public final class f91 {

    /* renamed from: a, reason: collision with root package name */
    static final Charset f6596a = Charset.forName("UTF-8");

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f6597b;

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f6597b = bArr;
        ByteBuffer.wrap(bArr);
        byte[] bArr2 = f6597b;
        g81.a(bArr2, 0, bArr2.length, false);
    }

    public static int a(long j2) {
        return (int) (j2 ^ (j2 >>> 32));
    }

    public static int a(boolean z) {
        return z ? 1231 : 1237;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(oa1 oa1Var) {
        return false;
    }

    public static boolean b(byte[] bArr) {
        return fc1.a(bArr);
    }

    public static String c(byte[] bArr) {
        return new String(bArr, f6596a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    public static int a(byte[] bArr) {
        int length = bArr.length;
        int a2 = a(length, bArr, 0, length);
        if (a2 == 0) {
            return 1;
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, byte[] bArr, int i3, int i4) {
        int i5 = i2;
        for (int i6 = i3; i6 < i3 + i4; i6++) {
            i5 = (i5 * 31) + bArr[i6];
        }
        return i5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object a(Object obj, Object obj2) {
        na1 b2 = ((oa1) obj).b();
        b2.a((oa1) obj2);
        return b2.p();
    }
}
