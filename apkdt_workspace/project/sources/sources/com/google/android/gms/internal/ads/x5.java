package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class x5 implements com.google.android.gms.ads.internal.overlay.m {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzalz f10278e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x5(zzalz zzalzVar) {
        this.f10278e = zzalzVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void a() {
        com.google.android.gms.ads.mediation.l lVar;
        qd.a("AdMobCustomTabsAdapter overlay is closed.");
        lVar = this.f10278e.f10942b;
        lVar.d(this.f10278e);
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void b() {
        com.google.android.gms.ads.mediation.l lVar;
        qd.a("Opening AdMobCustomTabsAdapter overlay.");
        lVar = this.f10278e.f10942b;
        lVar.e(this.f10278e);
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void onPause() {
        qd.a("AdMobCustomTabsAdapter overlay is paused.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void onResume() {
        qd.a("AdMobCustomTabsAdapter overlay is resumed.");
    }
}
