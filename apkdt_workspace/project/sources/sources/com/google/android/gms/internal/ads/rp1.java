package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class rp1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzgq f9201e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ qp1 f9202f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public rp1(qp1 qp1Var, zzgq zzgqVar) {
        this.f9202f = qp1Var;
        this.f9201e = zzgqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        np1 np1Var;
        np1Var = this.f9202f.f8992b;
        np1Var.a(this.f9201e);
    }
}
