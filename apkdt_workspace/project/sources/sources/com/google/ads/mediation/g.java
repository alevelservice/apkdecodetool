package com.google.ads.mediation;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class g implements com.google.android.gms.ads.o.c {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AbstractAdViewAdapter f4233a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(AbstractAdViewAdapter abstractAdViewAdapter) {
        this.f4233a = abstractAdViewAdapter;
    }

    @Override // com.google.android.gms.ads.o.c
    public final void a(com.google.android.gms.ads.o.b bVar) {
        com.google.android.gms.ads.reward.mediation.a aVar;
        aVar = this.f4233a.f4218f;
        aVar.a(this.f4233a, bVar);
    }

    @Override // com.google.android.gms.ads.o.c
    public final void onRewardedVideoAdClosed() {
        com.google.android.gms.ads.reward.mediation.a aVar;
        aVar = this.f4233a.f4218f;
        aVar.g(this.f4233a);
        AbstractAdViewAdapter.a(this.f4233a, (com.google.android.gms.ads.f) null);
    }

    @Override // com.google.android.gms.ads.o.c
    public final void onRewardedVideoAdFailedToLoad(int i2) {
        com.google.android.gms.ads.reward.mediation.a aVar;
        aVar = this.f4233a.f4218f;
        aVar.a(this.f4233a, i2);
    }

    @Override // com.google.android.gms.ads.o.c
    public final void onRewardedVideoAdLeftApplication() {
        com.google.android.gms.ads.reward.mediation.a aVar;
        aVar = this.f4233a.f4218f;
        aVar.e(this.f4233a);
    }

    @Override // com.google.android.gms.ads.o.c
    public final void onRewardedVideoAdLoaded() {
        com.google.android.gms.ads.reward.mediation.a aVar;
        aVar = this.f4233a.f4218f;
        aVar.d(this.f4233a);
    }

    @Override // com.google.android.gms.ads.o.c
    public final void onRewardedVideoAdOpened() {
        com.google.android.gms.ads.reward.mediation.a aVar;
        aVar = this.f4233a.f4218f;
        aVar.b(this.f4233a);
    }

    @Override // com.google.android.gms.ads.o.c
    public final void onRewardedVideoCompleted() {
        com.google.android.gms.ads.reward.mediation.a aVar;
        aVar = this.f4233a.f4218f;
        aVar.a(this.f4233a);
    }

    @Override // com.google.android.gms.ads.o.c
    public final void onRewardedVideoStarted() {
        com.google.android.gms.ads.reward.mediation.a aVar;
        aVar = this.f4233a.f4218f;
        aVar.c(this.f4233a);
    }
}
