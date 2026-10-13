package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zztl extends zzuu {

    /* renamed from: e, reason: collision with root package name */
    private final com.google.android.gms.ads.b f11236e;

    public zztl(com.google.android.gms.ads.b bVar) {
        this.f11236e = bVar;
    }

    public final com.google.android.gms.ads.b getAdListener() {
        return this.f11236e;
    }

    @Override // com.google.android.gms.internal.ads.zzur
    public final void onAdClicked() {
        this.f11236e.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.zzur
    public final void onAdClosed() {
        this.f11236e.a();
    }

    @Override // com.google.android.gms.internal.ads.zzur
    public final void onAdFailedToLoad(int i2) {
        this.f11236e.a(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzur
    public final void onAdImpression() {
        this.f11236e.b();
    }

    @Override // com.google.android.gms.internal.ads.zzur
    public final void onAdLeftApplication() {
        this.f11236e.c();
    }

    @Override // com.google.android.gms.internal.ads.zzur
    public final void onAdLoaded() {
        this.f11236e.d();
    }

    @Override // com.google.android.gms.internal.ads.zzur
    public final void onAdOpened() {
        this.f11236e.e();
    }
}
