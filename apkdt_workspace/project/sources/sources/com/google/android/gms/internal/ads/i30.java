package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class i30 implements pw0<uo1, Bitmap> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ double f7216a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ boolean f7217b;

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ f30 f7218c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i30(f30 f30Var, double d2, boolean z) {
        this.f7218c = f30Var;
        this.f7216a = d2;
        this.f7217b = z;
    }

    @Override // com.google.android.gms.internal.ads.pw0
    public final /* synthetic */ Bitmap apply(uo1 uo1Var) {
        Bitmap a2;
        a2 = this.f7218c.a(uo1Var.f9785b, this.f7216a, this.f7217b);
        return a2;
    }
}
