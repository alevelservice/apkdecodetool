package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
public abstract class h0 {
    private h0() {
    }

    public static int a(int i2) {
        return (-(i2 & 1)) ^ (i2 >>> 1);
    }

    public static long a(long j2) {
        return (-(j2 & 1)) ^ (j2 >>> 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h0 a(byte[] bArr, int i2, int i3, boolean z) {
        j0 j0Var = new j0(bArr, 0, i3, false);
        try {
            j0Var.b(i3);
            return j0Var;
        } catch (j1 e2) {
            throw new IllegalArgumentException(e2);
        }
    }
}
