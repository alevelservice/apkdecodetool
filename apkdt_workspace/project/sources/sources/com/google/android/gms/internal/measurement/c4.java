package com.google.android.gms.internal.measurement;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class c4 {

    /* renamed from: a, reason: collision with root package name */
    static final Charset f11799a = Charset.forName("UTF-8");

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f11800b;

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f11800b = bArr;
        ByteBuffer.wrap(bArr);
        byte[] bArr2 = f11800b;
        f3.a(bArr2, 0, bArr2.length, false);
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
    public static boolean a(k5 k5Var) {
        return false;
    }

    public static boolean b(byte[] bArr) {
        return a7.a(bArr);
    }

    public static String c(byte[] bArr) {
        return new String(bArr, f11799a);
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
        j5 d2 = ((k5) obj).d();
        d2.a((k5) obj2);
        return d2.r();
    }
}
