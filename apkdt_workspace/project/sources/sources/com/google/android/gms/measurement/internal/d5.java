package com.google.android.gms.measurement.internal;

/* loaded from: classes.dex */
final class d5 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzn f12836e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ zzfk f12837f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d5(zzfk zzfkVar, zzn zznVar) {
        this.f12837f = zzfkVar;
        this.f12836e = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g8 g8Var;
        g8 g8Var2;
        g8Var = this.f12837f.f13381e;
        g8Var.m();
        g8Var2 = this.f12837f.f13381e;
        g8Var2.c(this.f12836e);
    }
}
