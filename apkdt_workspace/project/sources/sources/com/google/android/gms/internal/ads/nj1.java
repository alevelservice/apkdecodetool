package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class nj1 implements zj1 {

    /* renamed from: a, reason: collision with root package name */
    private final int f8366a;

    /* renamed from: b, reason: collision with root package name */
    private final long[] f8367b;

    /* renamed from: c, reason: collision with root package name */
    private final long[] f8368c;

    /* renamed from: d, reason: collision with root package name */
    private final long f8369d;

    public nj1(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f8367b = jArr;
        this.f8368c = jArr3;
        this.f8366a = iArr.length;
        int i2 = this.f8366a;
        if (i2 > 0) {
            this.f8369d = jArr2[i2 - 1] + jArr3[i2 - 1];
        } else {
            this.f8369d = 0L;
        }
    }

    @Override // com.google.android.gms.internal.ads.zj1
    public final long a(long j2) {
        return this.f8367b[cp1.a(this.f8368c, j2, true, true)];
    }

    @Override // com.google.android.gms.internal.ads.zj1
    public final boolean b() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zj1
    public final long c() {
        return this.f8369d;
    }
}
