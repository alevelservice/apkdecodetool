package com.google.android.gms.measurement.internal;

/* loaded from: classes.dex */
final class x4 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzjn f13318e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ zzn f13319f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ zzfk f13320g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x4(zzfk zzfkVar, zzjn zzjnVar, zzn zznVar) {
        this.f13320g = zzfkVar;
        this.f13318e = zzjnVar;
        this.f13319f = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g8 g8Var;
        g8 g8Var2;
        g8Var = this.f13320g.f13381e;
        g8Var.m();
        g8Var2 = this.f13320g.f13381e;
        g8Var2.b(this.f13318e, this.f13319f);
    }
}
