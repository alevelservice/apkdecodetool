package com.google.android.gms.internal.vision;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public abstract class v3 {
    private v3() {
    }

    public static int a(int i2) {
        return (-(i2 & 1)) ^ (i2 >>> 1);
    }

    public static long a(long j2) {
        return (-(j2 & 1)) ^ (j2 >>> 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static v3 a(byte[] bArr, int i2, int i3, boolean z) {
        x3 x3Var = new x3(bArr, 0, i3, false);
        try {
            x3Var.b(i3);
            return x3Var;
        } catch (d5 e2) {
            throw new IllegalArgumentException(e2);
        }
    }
}
