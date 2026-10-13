package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class yr implements jt, wt, qu, sv, st1 {

    /* renamed from: e, reason: collision with root package name */
    private final com.google.android.gms.common.util.e f10633e;

    /* renamed from: f, reason: collision with root package name */
    private final w9 f10634f;

    public yr(com.google.android.gms.common.util.e eVar, w9 w9Var) {
        this.f10633e = eVar;
        this.f10634f = w9Var;
    }

    @Override // com.google.android.gms.internal.ads.sv
    public final void a(zzaok zzaokVar) {
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void a(zzape zzapeVar, String str, String str2) {
    }

    public final void a(zztp zztpVar) {
        this.f10634f.a(zztpVar);
    }

    @Override // com.google.android.gms.internal.ads.st1
    public final void onAdClicked() {
        this.f10634f.c();
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onAdClosed() {
        this.f10634f.d();
    }

    @Override // com.google.android.gms.internal.ads.wt
    public final void onAdImpression() {
        this.f10634f.b();
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.qu
    public final void onAdLoaded() {
        this.f10634f.a(true);
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onAdOpened() {
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onRewardedVideoStarted() {
    }

    @Override // com.google.android.gms.internal.ads.sv
    public final void a(vs0 vs0Var) {
        this.f10634f.a(this.f10633e.c());
    }

    public final String a() {
        return this.f10634f.e();
    }
}
