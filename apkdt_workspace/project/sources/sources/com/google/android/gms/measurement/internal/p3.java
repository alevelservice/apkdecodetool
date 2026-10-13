package com.google.android.gms.measurement.internal;

/* loaded from: classes.dex */
final class p3 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ boolean f13138e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ m3 f13139f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p3(m3 m3Var, boolean z) {
        this.f13139f = m3Var;
        this.f13138e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g8 g8Var;
        g8Var = this.f13139f.f13072a;
        g8Var.a(this.f13138e);
    }
}
