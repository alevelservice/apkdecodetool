package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class t7 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ g8 f13240e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ Runnable f13241f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t7(s7 s7Var, g8 g8Var, Runnable runnable) {
        this.f13240e = g8Var;
        this.f13241f = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f13240e.m();
        this.f13240e.a(this.f13241f);
        this.f13240e.l();
    }
}
