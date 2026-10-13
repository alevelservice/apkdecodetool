package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class h50 implements com.google.android.gms.ads.internal.overlay.m, com.google.android.gms.ads.internal.overlay.p, x, z, st1 {

    /* renamed from: e, reason: collision with root package name */
    private st1 f7008e;

    /* renamed from: f, reason: collision with root package name */
    private x f7009f;

    /* renamed from: g, reason: collision with root package name */
    private com.google.android.gms.ads.internal.overlay.m f7010g;

    /* renamed from: h, reason: collision with root package name */
    private z f7011h;

    /* renamed from: i, reason: collision with root package name */
    private com.google.android.gms.ads.internal.overlay.p f7012i;

    private h50() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final synchronized void a() {
        if (this.f7010g != null) {
            this.f7010g.a();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final synchronized void b() {
        if (this.f7010g != null) {
            this.f7010g.b();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.p
    public final synchronized void c() {
        if (this.f7012i != null) {
            this.f7012i.c();
        }
    }

    @Override // com.google.android.gms.internal.ads.st1
    public final synchronized void onAdClicked() {
        if (this.f7008e != null) {
            this.f7008e.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.z
    public final synchronized void onAppEvent(String str, @Nullable String str2) {
        if (this.f7011h != null) {
            this.f7011h.onAppEvent(str, str2);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final synchronized void onPause() {
        if (this.f7010g != null) {
            this.f7010g.onPause();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final synchronized void onResume() {
        if (this.f7010g != null) {
            this.f7010g.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.x
    public final synchronized void zza(String str, Bundle bundle) {
        if (this.f7009f != null) {
            this.f7009f.zza(str, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ h50(d50 d50Var) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void a(st1 st1Var, x xVar, com.google.android.gms.ads.internal.overlay.m mVar, z zVar, com.google.android.gms.ads.internal.overlay.p pVar) {
        this.f7008e = st1Var;
        this.f7009f = xVar;
        this.f7010g = mVar;
        this.f7011h = zVar;
        this.f7012i = pVar;
    }
}
