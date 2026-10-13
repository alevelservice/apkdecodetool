package com.google.android.gms.measurement.internal;

/* loaded from: classes.dex */
final class y3 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ j4 f13342e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ f3 f13343f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y3(z3 z3Var, j4 j4Var, f3 f3Var) {
        this.f13342e = j4Var;
        this.f13343f = f3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f13342e.h() == null) {
            this.f13343f.q().a("Install Referrer Reporter is null");
            return;
        }
        u3 h2 = this.f13342e.h();
        h2.f13247a.t();
        h2.a(h2.f13247a.getContext().getPackageName());
    }
}
