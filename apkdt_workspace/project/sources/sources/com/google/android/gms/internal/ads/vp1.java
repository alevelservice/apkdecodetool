package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vp1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ int f9975e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ long f9976f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ qp1 f9977g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public vp1(qp1 qp1Var, int i2, long j2) {
        this.f9977g = qp1Var;
        this.f9975e = i2;
        this.f9976f = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        np1 np1Var;
        np1Var = this.f9977g.f8992b;
        np1Var.a(this.f9975e, this.f9976f);
    }
}
