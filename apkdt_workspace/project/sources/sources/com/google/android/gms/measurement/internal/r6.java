package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class r6 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ q6 f13194e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ p6 f13195f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r6(p6 p6Var, q6 q6Var) {
        this.f13195f = p6Var;
        this.f13194e = q6Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f13195f.a(this.f13194e, false);
        p6 p6Var = this.f13195f;
        p6Var.f13150c = null;
        p6Var.o().a((q6) null);
    }
}
