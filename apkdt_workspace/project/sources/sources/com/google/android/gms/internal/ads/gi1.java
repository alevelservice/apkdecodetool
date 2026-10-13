package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class gi1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ int f6880e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ long f6881f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ long f6882g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ ci1 f6883h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gi1(ci1 ci1Var, int i2, long j2, long j3) {
        this.f6883h = ci1Var;
        this.f6880e = i2;
        this.f6881f = j2;
        this.f6882g = j3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        di1 di1Var;
        di1Var = this.f6883h.f6029b;
        di1Var.a(this.f6880e, this.f6881f, this.f6882g);
    }
}
