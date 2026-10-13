package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class sp1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f9417e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ long f9418f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ long f9419g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ qp1 f9420h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sp1(qp1 qp1Var, String str, long j2, long j3) {
        this.f9420h = qp1Var;
        this.f9417e = str;
        this.f9418f = j2;
        this.f9419g = j3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        np1 np1Var;
        np1Var = this.f9420h.f8992b;
        np1Var.a(this.f9417e, this.f9418f, this.f9419g);
    }
}
