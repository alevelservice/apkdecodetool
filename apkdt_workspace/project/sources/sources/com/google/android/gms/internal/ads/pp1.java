package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class pp1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ fj1 f8747e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ qp1 f8748f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pp1(qp1 qp1Var, fj1 fj1Var) {
        this.f8748f = qp1Var;
        this.f8747e = fj1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        np1 np1Var;
        np1Var = this.f8748f.f8992b;
        np1Var.a(this.f8747e);
    }
}
