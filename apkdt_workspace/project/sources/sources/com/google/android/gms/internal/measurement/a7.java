package com.google.android.gms.internal.measurement;

import java.nio.ByteBuffer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class a7 {

    /* renamed from: a, reason: collision with root package name */
    private static final b7 f11748a;

    static {
        b7 f7Var;
        if ((x6.a() && x6.b()) && !m2.a()) {
            f7Var = new h7();
        } else {
            f7Var = new f7();
        }
        f11748a = f7Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int a(int i2) {
        if (i2 > -12) {
            return -1;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int a(int i2, int i3) {
        if (i2 > -12 || i3 > -65) {
            return -1;
        }
        return i2 ^ (i3 << 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int a(int i2, int i3, int i4) {
        if (i2 > -12 || i3 > -65 || i4 > -65) {
            return -1;
        }
        return (i2 ^ (i3 << 8)) ^ (i4 << 16);
    }

    public static boolean a(byte[] bArr) {
        return f11748a.a(bArr, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2 - 1];
        int i4 = i3 - i2;
        if (i4 == 0) {
            return a(b2);
        }
        if (i4 == 1) {
            return a(b2, bArr[i2]);
        }
        if (i4 == 2) {
            return a(b2, bArr[i2], bArr[i2 + 1]);
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(byte[] bArr, int i2, int i3) {
        return f11748a.b(bArr, i2, i3);
    }

    public static boolean a(byte[] bArr, int i2, int i3) {
        return f11748a.a(bArr, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(CharSequence charSequence) {
        int length = charSequence.length();
        int i2 = 0;
        int i3 = 0;
        while (i3 < length && charSequence.charAt(i3) < 128) {
            i3++;
        }
        int i4 = length;
        while (true) {
            if (i3 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i3);
            if (charAt < 2048) {
                i4 += (127 - charAt) >>> 31;
                i3++;
            } else {
                int length2 = charSequence.length();
                while (i3 < length2) {
                    char charAt2 = charSequence.charAt(i3);
                    if (charAt2 < 2048) {
                        i2 += (127 - charAt2) >>> 31;
                    } else {
                        i2 += 2;
                        if (55296 <= charAt2 && charAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i3) < 65536) {
                                throw new e7(i3, length2);
                            }
                            i3++;
                        }
                    }
                    i3++;
                }
                i4 += i2;
            }
        }
        if (i4 >= length) {
            return i4;
        }
        long j2 = i4 + 4294967296L;
        StringBuilder sb = new StringBuilder(54);
        sb.append("UTF-8 length does not fit in int: ");
        sb.append(j2);
        throw new IllegalArgumentException(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(CharSequence charSequence, byte[] bArr, int i2, int i3) {
        return f11748a.a(charSequence, bArr, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(CharSequence charSequence, ByteBuffer byteBuffer) {
        b7 b7Var = f11748a;
        if (byteBuffer.hasArray()) {
            int arrayOffset = byteBuffer.arrayOffset();
            byteBuffer.position(a(charSequence, byteBuffer.array(), byteBuffer.position() + arrayOffset, byteBuffer.remaining()) - arrayOffset);
        } else if (byteBuffer.isDirect()) {
            b7Var.a(charSequence, byteBuffer);
        } else {
            b7.b(charSequence, byteBuffer);
        }
    }
}
