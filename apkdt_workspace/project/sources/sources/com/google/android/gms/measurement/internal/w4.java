package com.google.android.gms.measurement.internal;

/* loaded from: classes.dex */
final class w4 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzai f13303e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ zzn f13304f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ zzfk f13305g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w4(zzfk zzfkVar, zzai zzaiVar, zzn zznVar) {
        this.f13305g = zzfkVar;
        this.f13303e = zzaiVar;
        this.f13304f = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g8 g8Var;
        g8 g8Var2;
        zzai zzb = this.f13305g.zzb(this.f13303e, this.f13304f);
        g8Var = this.f13305g.f13381e;
        g8Var.m();
        g8Var2 = this.f13305g.f13381e;
        g8Var2.a(zzb, this.f13304f);
    }
}
