package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ie0 implements hz0<uo> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ de0 f7275a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ie0(de0 de0Var) {
        this.f7275a = de0Var;
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(Throwable th) {
        mt mtVar;
        mtVar = this.f7275a.f6206d;
        mtVar.onAdFailedToLoad(t90.zzd(th));
        ct0.a(th, "DelayedBannerAd.onFailure");
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final /* synthetic */ void a(uo uoVar) {
        uoVar.c();
    }
}
