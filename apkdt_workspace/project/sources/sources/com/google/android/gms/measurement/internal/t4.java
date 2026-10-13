package com.google.android.gms.measurement.internal;

/* loaded from: classes.dex */
final class t4 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzn f13235e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ zzfk f13236f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t4(zzfk zzfkVar, zzn zznVar) {
        this.f13236f = zzfkVar;
        this.f13235e = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g8 g8Var;
        g8 g8Var2;
        g8Var = this.f13236f.f13381e;
        g8Var.m();
        g8Var2 = this.f13236f.f13381e;
        g8Var2.a(this.f13235e);
    }
}
