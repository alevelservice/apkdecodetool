package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class zzchz extends zzalg {

    /* renamed from: e, reason: collision with root package name */
    private bd0<zzalj, zzcgu> f11107e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ lf0 f11108f;

    private zzchz(lf0 lf0Var, bd0<zzalj, zzcgu> bd0Var) {
        this.f11108f = lf0Var;
        this.f11107e = bd0Var;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(zzajw zzajwVar) {
        lf0.a(this.f11108f, zzajwVar);
        this.f11107e.f5766c.onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zzdg(String str) {
        this.f11107e.f5766c.onAdFailedToLoad(0);
    }
}
