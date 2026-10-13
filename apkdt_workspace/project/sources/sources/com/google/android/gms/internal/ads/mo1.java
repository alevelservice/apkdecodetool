package com.google.android.gms.internal.ads;

import android.util.Pair;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class mo1 {

    /* renamed from: a, reason: collision with root package name */
    private static final byte[] f8201a = {0, 0, 0, 1};

    /* renamed from: b, reason: collision with root package name */
    private static final int[] f8202b = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    /* renamed from: c, reason: collision with root package name */
    private static final int[] f8203c = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static Pair<Integer, Integer> a(byte[] bArr) {
        wo1 wo1Var = new wo1(bArr);
        int a2 = a(wo1Var);
        int b2 = b(wo1Var);
        int a3 = wo1Var.a(4);
        if (a2 == 5 || a2 == 29) {
            b2 = b(wo1Var);
            if (a(wo1Var) == 22) {
                a3 = wo1Var.a(4);
            }
        }
        int i2 = f8203c[a3];
        no1.a(i2 != -1);
        return Pair.create(Integer.valueOf(b2), Integer.valueOf(i2));
    }

    private static int b(wo1 wo1Var) {
        int a2 = wo1Var.a(4);
        if (a2 == 15) {
            return wo1Var.a(24);
        }
        no1.a(a2 < 13);
        return f8202b[a2];
    }

    public static byte[] a(byte[] bArr, int i2, int i3) {
        byte[] bArr2 = f8201a;
        byte[] bArr3 = new byte[bArr2.length + i3];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i2, bArr3, f8201a.length, i3);
        return bArr3;
    }

    private static int a(wo1 wo1Var) {
        int a2 = wo1Var.a(5);
        return a2 == 31 ? wo1Var.a(6) + 32 : a2;
    }
}
