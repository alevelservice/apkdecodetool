package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class g6 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ long f12933e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ p5 f12934f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g6(p5 p5Var, long j2) {
        this.f12934f = p5Var;
        this.f12933e = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f12934f.c().p.a(this.f12933e);
        this.f12934f.zzab().x().a("Minimum session duration set", Long.valueOf(this.f12933e));
    }
}
