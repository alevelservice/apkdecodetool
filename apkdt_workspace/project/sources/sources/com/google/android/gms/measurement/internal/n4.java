package com.google.android.gms.measurement.internal;

/* loaded from: classes.dex */
final class n4 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzq f13104e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ zzfk f13105f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n4(zzfk zzfkVar, zzq zzqVar) {
        this.f13105f = zzfkVar;
        this.f13104e = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g8 g8Var;
        g8 g8Var2;
        g8Var = this.f13105f.f13381e;
        g8Var.m();
        g8Var2 = this.f13105f.f13381e;
        g8Var2.b(this.f13104e);
    }
}
