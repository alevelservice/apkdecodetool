package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class nk1 {

    /* renamed from: d, reason: collision with root package name */
    private static final long[] f8378d = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: a, reason: collision with root package name */
    private final byte[] f8379a = new byte[8];

    /* renamed from: b, reason: collision with root package name */
    private int f8380b;

    /* renamed from: c, reason: collision with root package name */
    private int f8381c;

    public final void a() {
        this.f8380b = 0;
        this.f8381c = 0;
    }

    public final int b() {
        return this.f8381c;
    }

    public final long a(sj1 sj1Var, boolean z, boolean z2, int i2) {
        if (this.f8380b == 0) {
            if (!sj1Var.a(this.f8379a, 0, 1, z)) {
                return -1L;
            }
            this.f8381c = a(this.f8379a[0] & 255);
            if (this.f8381c != -1) {
                this.f8380b = 1;
            } else {
                throw new IllegalStateException("No valid varint length mask found");
            }
        }
        int i3 = this.f8381c;
        if (i3 > i2) {
            this.f8380b = 0;
            return -2L;
        }
        if (i3 != 1) {
            sj1Var.readFully(this.f8379a, 1, i3 - 1);
        }
        this.f8380b = 0;
        return a(this.f8379a, this.f8381c, z2);
    }

    public static int a(int i2) {
        int i3 = 0;
        while (true) {
            long[] jArr = f8378d;
            if (i3 >= jArr.length) {
                return -1;
            }
            if ((jArr[i3] & i2) != 0) {
                return i3 + 1;
            }
            i3++;
        }
    }

    public static long a(byte[] bArr, int i2, boolean z) {
        long j2 = bArr[0] & 255;
        if (z) {
            j2 &= f8378d[i2 - 1] ^ (-1);
        }
        for (int i3 = 1; i3 < i2; i3++) {
            j2 = (j2 << 8) | (bArr[i3] & 255);
        }
        return j2;
    }
}
