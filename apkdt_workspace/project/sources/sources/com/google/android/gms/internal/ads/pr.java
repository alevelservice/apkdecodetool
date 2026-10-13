package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class pr implements com.google.android.gms.ads.internal.overlay.m {

    /* renamed from: e, reason: collision with root package name */
    private final fu f8762e;

    /* renamed from: f, reason: collision with root package name */
    private AtomicBoolean f8763f = new AtomicBoolean(false);

    public pr(fu fuVar) {
        this.f8762e = fuVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void a() {
        this.f8763f.set(true);
        this.f8762e.g();
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void b() {
        this.f8762e.i();
    }

    public final boolean c() {
        return this.f8763f.get();
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void onResume() {
    }
}
