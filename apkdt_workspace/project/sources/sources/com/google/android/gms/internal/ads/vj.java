package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vj implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ View f9938e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ t8 f9939f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ int f9940g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ tj f9941h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public vj(tj tjVar, View view, t8 t8Var, int i2) {
        this.f9941h = tjVar;
        this.f9938e = view;
        this.f9939f = t8Var;
        this.f9940g = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9941h.a(this.f9938e, this.f9939f, this.f9940g - 1);
    }
}
