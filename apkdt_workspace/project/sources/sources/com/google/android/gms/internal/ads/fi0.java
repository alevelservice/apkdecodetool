package com.google.android.gms.internal.ads;

import android.view.View;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class fi0 implements com.google.android.gms.ads.internal.g {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ry f6645a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fi0(ei0 ei0Var, ry ryVar) {
        this.f6645a = ryVar;
    }

    @Override // com.google.android.gms.ads.internal.g
    public final void a() {
        this.f6645a.c().onAdClicked();
    }

    @Override // com.google.android.gms.ads.internal.g
    public final void a(View view) {
    }

    @Override // com.google.android.gms.ads.internal.g
    public final void b() {
        this.f6645a.d().g();
        this.f6645a.e().g();
    }
}
