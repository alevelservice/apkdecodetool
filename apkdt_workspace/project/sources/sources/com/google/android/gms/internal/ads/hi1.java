package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class hi1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzgq f7087e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ ci1 f7088f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hi1(ci1 ci1Var, zzgq zzgqVar) {
        this.f7088f = ci1Var;
        this.f7087e = zzgqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        di1 di1Var;
        di1Var = this.f7088f.f6029b;
        di1Var.a(this.f7087e);
    }
}
