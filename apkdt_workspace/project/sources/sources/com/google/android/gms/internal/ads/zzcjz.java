package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class zzcjz extends zzajm {

    /* renamed from: e, reason: collision with root package name */
    private final it f11115e;

    /* renamed from: f, reason: collision with root package name */
    private final rt f11116f;

    /* renamed from: g, reason: collision with root package name */
    private final fu f11117g;

    /* renamed from: h, reason: collision with root package name */
    private final pu f11118h;

    /* renamed from: i, reason: collision with root package name */
    private final zv f11119i;

    /* renamed from: j, reason: collision with root package name */
    private final yu f11120j;

    /* renamed from: k, reason: collision with root package name */
    private final dy f11121k;

    public zzcjz(it itVar, rt rtVar, fu fuVar, pu puVar, zv zvVar, yu yuVar, dy dyVar) {
        this.f11115e = itVar;
        this.f11116f = rtVar;
        this.f11117g = fuVar;
        this.f11118h = puVar;
        this.f11119i = zvVar;
        this.f11120j = yuVar;
        this.f11121k = dyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onAdClicked() {
        this.f11115e.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onAdClosed() {
        this.f11120j.a();
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onAdFailedToLoad(int i2) {
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onAdImpression() {
        this.f11116f.g();
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onAdLeftApplication() {
        this.f11117g.h();
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onAdLoaded() {
        this.f11118h.onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onAdOpened() {
        this.f11120j.b();
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onAppEvent(String str, String str2) {
        this.f11119i.onAppEvent(str, str2);
    }

    public void onVideoEnd() {
        this.f11121k.g();
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onVideoPause() {
        this.f11121k.h();
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onVideoPlay() {
        this.f11121k.i();
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void zza(zzabo zzaboVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void zza(zzajo zzajoVar) {
    }

    public void zza(zzaqf zzaqfVar) {
    }

    public void zzb(Bundle bundle) {
    }

    public void zzb(zzaqd zzaqdVar) {
    }

    public void zzcm(int i2) {
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void zzde(String str) {
    }

    public void zzrs() {
        this.f11121k.j();
    }

    public void zzrt() {
    }
}
