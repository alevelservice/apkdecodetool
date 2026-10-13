package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ji implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ View f7501e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ t8 f7502f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ int f7503g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ ii f7504h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ji(ii iiVar, View view, t8 t8Var, int i2) {
        this.f7504h = iiVar;
        this.f7501e = view;
        this.f7502f = t8Var;
        this.f7503g = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7504h.a(this.f7501e, this.f7502f, this.f7503g - 1);
    }
}
