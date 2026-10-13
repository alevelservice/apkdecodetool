package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class zzcix extends zzalh {

    /* renamed from: e, reason: collision with root package name */
    private bd0<zzalj, zzcgu> f11109e;

    private zzcix(kg0 kg0Var, bd0<zzalj, zzcgu> bd0Var) {
        this.f11109e = bd0Var;
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zzdg(String str) {
        this.f11109e.f5766c.onAdFailedToLoad(0);
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zzsb() {
        this.f11109e.f5766c.onAdLoaded();
    }
}
