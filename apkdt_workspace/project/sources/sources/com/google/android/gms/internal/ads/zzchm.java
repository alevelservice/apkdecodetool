package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class zzchm extends zzalb {

    /* renamed from: e, reason: collision with root package name */
    private bd0<zzalj, zzcgu> f11106e;

    private zzchm(we0 we0Var, bd0<zzalj, zzcgu> bd0Var) {
        this.f11106e = bd0Var;
    }

    @Override // com.google.android.gms.internal.ads.zzalc
    public final void zzdg(String str) {
        this.f11106e.f5766c.onAdFailedToLoad(0);
    }

    @Override // com.google.android.gms.internal.ads.zzalc
    public final void zzsb() {
        this.f11106e.f5766c.onAdLoaded();
    }
}
