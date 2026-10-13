package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class li implements com.google.android.gms.ads.internal.overlay.m {

    /* renamed from: e, reason: collision with root package name */
    private fi f7894e;

    /* renamed from: f, reason: collision with root package name */
    private com.google.android.gms.ads.internal.overlay.m f7895f;

    public li(fi fiVar, com.google.android.gms.ads.internal.overlay.m mVar) {
        this.f7894e = fiVar;
        this.f7895f = mVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void a() {
        this.f7895f.a();
        this.f7894e.zzyr();
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void b() {
        this.f7895f.b();
        this.f7894e.zzsq();
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void onResume() {
    }
}
