package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ji1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ fj1 f7509e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ ci1 f7510f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ji1(ci1 ci1Var, fj1 fj1Var) {
        this.f7510f = ci1Var;
        this.f7509e = fj1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        di1 di1Var;
        this.f7509e.a();
        di1Var = this.f7510f.f6029b;
        di1Var.b(this.f7509e);
    }
}
