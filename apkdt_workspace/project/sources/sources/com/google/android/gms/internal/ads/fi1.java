package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class fi1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ fj1 f6646e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ ci1 f6647f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fi1(ci1 ci1Var, fj1 fj1Var) {
        this.f6647f = ci1Var;
        this.f6646e = fj1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        di1 di1Var;
        di1Var = this.f6647f.f6029b;
        di1Var.a(this.f6646e);
    }
}
