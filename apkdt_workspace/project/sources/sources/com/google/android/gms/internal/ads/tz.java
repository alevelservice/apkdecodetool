package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class tz implements jt {

    /* renamed from: e, reason: collision with root package name */
    private final rt f9654e;

    /* renamed from: f, reason: collision with root package name */
    private final ns0 f9655f;

    public tz(rt rtVar, ns0 ns0Var) {
        this.f9654e = rtVar;
        this.f9655f = ns0Var;
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void a(zzape zzapeVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onAdClosed() {
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onAdOpened() {
        int i2 = this.f9655f.O;
        if (i2 == 0 || i2 == 1) {
            this.f9654e.g();
        }
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onRewardedVideoStarted() {
    }
}
