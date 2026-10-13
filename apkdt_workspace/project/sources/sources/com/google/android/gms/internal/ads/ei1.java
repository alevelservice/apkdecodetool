package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ei1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f6440e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ long f6441f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ long f6442g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ ci1 f6443h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ei1(ci1 ci1Var, String str, long j2, long j3) {
        this.f6443h = ci1Var;
        this.f6440e = str;
        this.f6441f = j2;
        this.f6442g = j3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        di1 di1Var;
        di1Var = this.f6443h.f6029b;
        di1Var.a(this.f6440e, this.f6441f, this.f6442g);
    }
}
