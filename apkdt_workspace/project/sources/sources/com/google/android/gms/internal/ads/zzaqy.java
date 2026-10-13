package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzaqy extends zzaqr {

    /* renamed from: e, reason: collision with root package name */
    private final com.google.android.gms.ads.p.d f10982e;

    public zzaqy(com.google.android.gms.ads.p.d dVar) {
        this.f10982e = dVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaqo
    public final void onRewardedAdFailedToLoad(int i2) {
        com.google.android.gms.ads.p.d dVar = this.f10982e;
        if (dVar == null) {
            return;
        }
        dVar.a(i2);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzaqo
    public final void onRewardedAdLoaded() {
        com.google.android.gms.ads.p.d dVar = this.f10982e;
        if (dVar == null) {
            return;
        }
        dVar.a();
        throw null;
    }
}
