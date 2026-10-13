package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wp1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ fj1 f10169e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ qp1 f10170f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public wp1(qp1 qp1Var, fj1 fj1Var) {
        this.f10170f = qp1Var;
        this.f10169e = fj1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        np1 np1Var;
        this.f10169e.a();
        np1Var = this.f10170f.f8992b;
        np1Var.b(this.f10169e);
    }
}
