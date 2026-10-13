package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ii1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ int f7316e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ ci1 f7317f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ii1(ci1 ci1Var, int i2) {
        this.f7317f = ci1Var;
        this.f7316e = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        di1 di1Var;
        di1Var = this.f7317f.f6029b;
        di1Var.a(this.f7316e);
    }
}
