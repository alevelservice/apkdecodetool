package com.google.android.gms.measurement.internal;

/* loaded from: classes.dex */
final class q4 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzq f13165e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ zzfk f13166f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q4(zzfk zzfkVar, zzq zzqVar) {
        this.f13166f = zzfkVar;
        this.f13165e = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g8 g8Var;
        g8 g8Var2;
        g8Var = this.f13166f.f13381e;
        g8Var.m();
        g8Var2 = this.f13166f.f13381e;
        g8Var2.a(this.f13165e);
    }
}
