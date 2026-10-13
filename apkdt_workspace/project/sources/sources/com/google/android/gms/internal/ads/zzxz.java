package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.j;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzxz extends zzwo {

    /* renamed from: e, reason: collision with root package name */
    private final j.a f11272e;

    public zzxz(j.a aVar) {
        this.f11272e = aVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwl
    public final void onVideoEnd() {
        this.f11272e.a();
    }

    @Override // com.google.android.gms.internal.ads.zzwl
    public final void onVideoMute(boolean z) {
        this.f11272e.a(z);
    }

    @Override // com.google.android.gms.internal.ads.zzwl
    public final void onVideoPause() {
        this.f11272e.b();
    }

    @Override // com.google.android.gms.internal.ads.zzwl
    public final void onVideoPlay() {
        this.f11272e.c();
    }

    @Override // com.google.android.gms.internal.ads.zzwl
    public final void onVideoStart() {
        this.f11272e.d();
    }
}
