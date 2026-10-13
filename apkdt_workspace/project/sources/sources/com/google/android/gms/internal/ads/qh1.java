package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class qh1 {

    /* renamed from: d, reason: collision with root package name */
    public static final qh1 f8911d = new qh1(1.0f, 1.0f);

    /* renamed from: a, reason: collision with root package name */
    public final float f8912a;

    /* renamed from: b, reason: collision with root package name */
    public final float f8913b;

    /* renamed from: c, reason: collision with root package name */
    private final int f8914c;

    public qh1(float f2, float f3) {
        this.f8912a = f2;
        this.f8913b = f3;
        this.f8914c = Math.round(f2 * 1000.0f);
    }

    public final long a(long j2) {
        return j2 * this.f8914c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && qh1.class == obj.getClass()) {
            qh1 qh1Var = (qh1) obj;
            if (this.f8912a == qh1Var.f8912a && this.f8913b == qh1Var.f8913b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Float.floatToRawIntBits(this.f8912a) + 527) * 31) + Float.floatToRawIntBits(this.f8913b);
    }
}
