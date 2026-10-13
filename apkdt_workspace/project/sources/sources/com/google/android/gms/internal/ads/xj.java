package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class xj implements com.google.android.gms.ads.internal.overlay.m {

    /* renamed from: e, reason: collision with root package name */
    private fi f10369e;

    /* renamed from: f, reason: collision with root package name */
    private com.google.android.gms.ads.internal.overlay.m f10370f;

    public xj(fi fiVar, com.google.android.gms.ads.internal.overlay.m mVar) {
        this.f10369e = fiVar;
        this.f10370f = mVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void a() {
        this.f10370f.a();
        this.f10369e.zzyr();
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void b() {
        this.f10370f.b();
        this.f10369e.zzsq();
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void onResume() {
    }
}
