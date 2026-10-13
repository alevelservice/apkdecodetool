package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class j8 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ m8 f13028e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ g8 f13029f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j8(g8 g8Var, m8 m8Var) {
        this.f13029f = g8Var;
        this.f13028e = m8Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f13029f.a(this.f13028e);
        this.f13029f.c();
    }
}
