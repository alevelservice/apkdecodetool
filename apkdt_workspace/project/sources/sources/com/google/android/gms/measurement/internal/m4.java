package com.google.android.gms.measurement.internal;

/* loaded from: classes.dex */
final class m4 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzn f13075e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ zzfk f13076f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m4(zzfk zzfkVar, zzn zznVar) {
        this.f13076f = zzfkVar;
        this.f13075e = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g8 g8Var;
        g8 g8Var2;
        g8Var = this.f13076f.f13381e;
        g8Var.m();
        g8Var2 = this.f13076f.f13381e;
        g8Var2.b(this.f13075e);
    }
}
