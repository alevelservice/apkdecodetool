package com.google.android.gms.measurement.internal;

/* loaded from: classes.dex */
final class l4 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzq f13055e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ zzn f13056f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ zzfk f13057g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l4(zzfk zzfkVar, zzq zzqVar, zzn zznVar) {
        this.f13057g = zzfkVar;
        this.f13055e = zzqVar;
        this.f13056f = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g8 g8Var;
        g8 g8Var2;
        g8Var = this.f13057g.f13381e;
        g8Var.m();
        g8Var2 = this.f13057g.f13381e;
        g8Var2.b(this.f13055e, this.f13056f);
    }
}
