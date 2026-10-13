package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzclh extends zzuv {

    /* renamed from: e, reason: collision with root package name */
    private final zzclw f11132e;

    public zzclh(Context context, mk mkVar, ys0 ys0Var, x10 x10Var, zzur zzurVar) {
        dj0 dj0Var = new dj0(x10Var);
        dj0Var.a(zzurVar);
        this.f11132e = new zzclw(new kj0(mkVar, context, dj0Var, ys0Var), ys0Var.b());
    }

    @Override // com.google.android.gms.internal.ads.zzuw
    public final synchronized String getMediationAdapterClassName() {
        return this.f11132e.getMediationAdapterClassName();
    }

    @Override // com.google.android.gms.internal.ads.zzuw
    public final synchronized boolean isLoading() {
        return this.f11132e.isLoading();
    }

    @Override // com.google.android.gms.internal.ads.zzuw
    public final synchronized void zza(zztp zztpVar, int i2) {
        this.f11132e.zza(zztpVar, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzuw
    public final void zzb(zztp zztpVar) {
        this.f11132e.zzb(zztpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzuw
    public final synchronized String zzjp() {
        return this.f11132e.zzjp();
    }
}
