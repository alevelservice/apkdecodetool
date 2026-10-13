package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class il1 {

    /* renamed from: a, reason: collision with root package name */
    public final int f7334a;

    /* renamed from: b, reason: collision with root package name */
    public final long[] f7335b;

    /* renamed from: c, reason: collision with root package name */
    public final int[] f7336c;

    /* renamed from: d, reason: collision with root package name */
    public final int f7337d;

    /* renamed from: e, reason: collision with root package name */
    public final long[] f7338e;

    /* renamed from: f, reason: collision with root package name */
    public final int[] f7339f;

    public il1(long[] jArr, int[] iArr, int i2, long[] jArr2, int[] iArr2) {
        no1.a(iArr.length == jArr2.length);
        no1.a(jArr.length == jArr2.length);
        no1.a(iArr2.length == jArr2.length);
        this.f7335b = jArr;
        this.f7336c = iArr;
        this.f7337d = i2;
        this.f7338e = jArr2;
        this.f7339f = iArr2;
        this.f7334a = jArr.length;
    }

    public final int a(long j2) {
        for (int a2 = cp1.a(this.f7338e, j2, true, false); a2 >= 0; a2--) {
            if ((this.f7339f[a2] & 1) != 0) {
                return a2;
            }
        }
        return -1;
    }

    public final int b(long j2) {
        for (int b2 = cp1.b(this.f7338e, j2, true, false); b2 < this.f7338e.length; b2++) {
            if ((this.f7339f[b2] & 1) != 0) {
                return b2;
            }
        }
        return -1;
    }
}
