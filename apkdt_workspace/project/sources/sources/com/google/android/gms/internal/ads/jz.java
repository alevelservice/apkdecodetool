package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class jz implements com.google.android.gms.ads.internal.overlay.m {

    /* renamed from: e, reason: collision with root package name */
    private final yu f7581e;

    /* renamed from: f, reason: collision with root package name */
    private final jx f7582f;

    public jz(yu yuVar, jx jxVar) {
        this.f7581e = yuVar;
        this.f7582f = jxVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void a() {
        this.f7581e.a();
        this.f7582f.g();
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void b() {
        this.f7581e.b();
        this.f7582f.h();
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void onPause() {
        this.f7581e.onPause();
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void onResume() {
        this.f7581e.onResume();
    }
}
