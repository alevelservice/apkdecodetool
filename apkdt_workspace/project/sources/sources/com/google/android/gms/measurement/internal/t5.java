package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class t5 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ long f13237e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ p5 f13238f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t5(p5 p5Var, long j2) {
        this.f13238f = p5Var;
        this.f13237e = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        p5 p5Var = this.f13238f;
        long j2 = this.f13237e;
        p5Var.g();
        p5Var.e();
        p5Var.u();
        p5Var.zzab().x().a("Resetting analytics data (FE)");
        p5Var.r().y();
        if (p5Var.d().j(p5Var.n().z())) {
            p5Var.c().f13119j.a(j2);
        }
        boolean c2 = p5Var.f12908a.c();
        if (!p5Var.d().m()) {
            p5Var.c().d(!c2);
        }
        p5Var.o().A();
        p5Var.f13149h = !c2;
        this.f13238f.o().a(new AtomicReference<>());
    }
}
