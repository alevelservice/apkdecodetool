package com.google.android.gms.internal.ads;

import android.view.View;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class vq1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ View f9980e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ wq1 f9981f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public vq1(wq1 wq1Var, View view) {
        this.f9981f = wq1Var;
        this.f9980e = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9981f.a(this.f9980e);
    }
}
