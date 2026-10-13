package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e6 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ boolean f12869e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ p5 f12870f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e6(p5 p5Var, boolean z) {
        this.f12870f = p5Var;
        this.f12869e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f12870f.c(this.f12869e);
    }
}
