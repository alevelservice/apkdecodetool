package com.google.android.gms.measurement.internal;

/* loaded from: classes.dex */
final class b5 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzjn f12781e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ zzn f12782f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ zzfk f12783g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b5(zzfk zzfkVar, zzjn zzjnVar, zzn zznVar) {
        this.f12783g = zzfkVar;
        this.f12781e = zzjnVar;
        this.f12782f = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g8 g8Var;
        g8 g8Var2;
        g8Var = this.f12783g.f13381e;
        g8Var.m();
        g8Var2 = this.f12783g.f13381e;
        g8Var2.a(this.f12781e, this.f12782f);
    }
}
