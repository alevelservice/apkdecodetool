package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class up1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ int f9791e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ int f9792f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ int f9793g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ float f9794h;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ qp1 f9795i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public up1(qp1 qp1Var, int i2, int i3, int i4, float f2) {
        this.f9795i = qp1Var;
        this.f9791e = i2;
        this.f9792f = i3;
        this.f9793g = i4;
        this.f9794h = f2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        np1 np1Var;
        np1Var = this.f9795i.f8992b;
        np1Var.a(this.f9791e, this.f9792f, this.f9793g, this.f9794h);
    }
}
