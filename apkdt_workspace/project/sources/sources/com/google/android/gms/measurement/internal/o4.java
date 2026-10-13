package com.google.android.gms.measurement.internal;

/* loaded from: classes.dex */
final class o4 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzq f13122e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ zzn f13123f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ zzfk f13124g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o4(zzfk zzfkVar, zzq zzqVar, zzn zznVar) {
        this.f13124g = zzfkVar;
        this.f13122e = zzqVar;
        this.f13123f = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g8 g8Var;
        g8 g8Var2;
        g8Var = this.f13124g.f13381e;
        g8Var.m();
        g8Var2 = this.f13124g.f13381e;
        g8Var2.a(this.f13122e, this.f13123f);
    }
}
