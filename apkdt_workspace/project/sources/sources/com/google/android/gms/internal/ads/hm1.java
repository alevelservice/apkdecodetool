package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class hm1 implements ym1 {

    /* renamed from: a, reason: collision with root package name */
    private final int f7118a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ yl1 f7119b;

    public hm1(yl1 yl1Var, int i2) {
        this.f7119b = yl1Var;
        this.f7118a = i2;
    }

    @Override // com.google.android.gms.internal.ads.ym1
    public final void a() {
        this.f7119b.c();
    }

    @Override // com.google.android.gms.internal.ads.ym1
    public final boolean isReady() {
        return this.f7119b.a(this.f7118a);
    }

    @Override // com.google.android.gms.internal.ads.ym1
    public final int a(mh1 mh1Var, hj1 hj1Var, boolean z) {
        return this.f7119b.a(this.f7118a, mh1Var, hj1Var, z);
    }

    @Override // com.google.android.gms.internal.ads.ym1
    public final void a(long j2) {
        this.f7119b.a(this.f7118a, j2);
    }
}
