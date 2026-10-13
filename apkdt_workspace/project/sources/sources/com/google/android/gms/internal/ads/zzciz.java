package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzciz extends zzcjz {

    /* renamed from: l, reason: collision with root package name */
    private yx f11110l;
    private nt m;

    public zzciz(it itVar, rt rtVar, fu fuVar, pu puVar, nt ntVar, zv zvVar, dy dyVar, yu yuVar, yx yxVar) {
        super(itVar, rtVar, fuVar, puVar, zvVar, yuVar, dyVar);
        this.f11110l = yxVar;
        this.m = ntVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjz, com.google.android.gms.internal.ads.zzajj
    public final void onVideoEnd() {
        this.f11110l.e();
    }

    @Override // com.google.android.gms.internal.ads.zzcjz, com.google.android.gms.internal.ads.zzajj
    public final void zza(zzaqf zzaqfVar) {
        this.f11110l.a(new zzaqd(zzaqfVar.getType(), zzaqfVar.getAmount()));
    }

    @Override // com.google.android.gms.internal.ads.zzcjz, com.google.android.gms.internal.ads.zzajj
    public final void zzb(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzcjz, com.google.android.gms.internal.ads.zzajj
    public final void zzb(zzaqd zzaqdVar) {
        this.f11110l.a(zzaqdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcjz, com.google.android.gms.internal.ads.zzajj
    public final void zzcm(int i2) {
        this.m.zzcm(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzcjz, com.google.android.gms.internal.ads.zzajj
    public final void zzrs() {
        this.f11110l.f();
    }

    @Override // com.google.android.gms.internal.ads.zzcjz, com.google.android.gms.internal.ads.zzajj
    public final void zzrt() {
        this.f11110l.e();
    }
}
